package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var _configuration:IHabboConfigurationManager = null;
      
      private var var_515:int = 0;
      
      private var var_484:Number = 0;
      
      private var var_2666:Array;
      
      private var var_1371:String = "";
      
      private var var_1790:String = "";
      
      private var var_2427:String = "";
      
      private var var_2425:String = "";
      
      private var var_1742:Boolean = false;
      
      private var var_1788:GarbageMonitor = null;
      
      private var var_1370:int = 0;
      
      private var var_2513:Boolean;
      
      private var var_1789:int = 1000;
      
      private var var_1372:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1791:int = 0;
      
      private var var_1792:int = 10;
      
      private var var_1369:int = 0;
      
      private var var_2515:Number = 0.15;
      
      private var var_2514:Boolean = true;
      
      private var var_2516:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2666 = [];
         super();
         this.var_1790 = Capabilities.version;
         this.var_2427 = Capabilities.os;
         this.var_1742 = Capabilities.isDebugger;
         this.var_1371 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1371 == null)
         {
            this.var_1371 = "unknown";
         }
         this.var_1788 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1791 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1790;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_484;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1789 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1792 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this._configuration = param1;
         this._reportInterval = int(this._configuration.getKey("performancetest.interval","60"));
         this.var_1789 = int(this._configuration.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1792 = int(this._configuration.getKey("performancetest.reportlimit","10"));
         this.var_2515 = Number(this._configuration.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2514 = Boolean(int(this._configuration.getKey("performancetest.distribution.enabled","1")));
         this.var_2513 = Boolean(this._configuration.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1788.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1788.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         if(this.var_2513)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1370;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1789)
         {
            ++this.var_1372;
            _loc3_ = true;
         }
         else
         {
            ++this.var_515;
            if(this.var_515 <= 1)
            {
               this.var_484 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_515);
               this.var_484 = this.var_484 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1791 > this._reportInterval * 1000 && this.var_1369 < this.var_1792)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_484);
            _loc6_ = true;
            if(this.var_2514 && this.var_1369 > 0)
            {
               _loc7_ = this.differenceInPercents(this.var_2516,this.var_484);
               if(_loc7_ < this.var_2515)
               {
                  _loc6_ = false;
               }
            }
            this.var_1791 = param2;
            if(_loc6_ || _loc3_)
            {
               this.var_2516 = this.var_484;
               if(this.sendReport(param2))
               {
                  ++this.var_1369;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1371,this.var_1790,this.var_2427,this.var_2425,this.var_1742,_loc5_,_loc4_,this.var_1370,this.var_484,this.var_1372);
            this._connection.send(_loc2_);
            this.var_1370 = 0;
            this.var_484 = 0;
            this.var_515 = 0;
            this.var_1372 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
