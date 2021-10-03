package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1141:Boolean;
      
      private var var_2489:int;
      
      private var var_2487:String;
      
      private var var_331:int;
      
      private var var_2491:int;
      
      private var var_2490:String;
      
      private var var_2492:String;
      
      private var var_2488:String;
      
      private var var_769:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_769 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1141 = false;
            return;
         }
         this.var_1141 = true;
         this.var_2489 = int(_loc2_);
         this.var_2487 = param1.readString();
         this.var_331 = int(param1.readString());
         this.var_2491 = param1.readInteger();
         this.var_2490 = param1.readString();
         this.var_2492 = param1.readString();
         this.var_2488 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_769.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_769 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2489;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2487;
      }
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get eventType() : int
      {
         return this.var_2491;
      }
      
      public function get eventName() : String
      {
         return this.var_2490;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2492;
      }
      
      public function get creationTime() : String
      {
         return this.var_2488;
      }
      
      public function get tags() : Array
      {
         return this.var_769;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1141;
      }
   }
}
