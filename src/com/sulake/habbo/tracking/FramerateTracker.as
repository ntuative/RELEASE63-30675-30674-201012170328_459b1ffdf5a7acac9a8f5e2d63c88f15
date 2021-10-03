package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1791:int;
      
      private var var_2519:int;
      
      private var var_1113:int;
      
      private var var_484:Number;
      
      private var var_2517:Boolean;
      
      private var var_2518:int;
      
      private var var_1794:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2519 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2518 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2517 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1113;
         if(this.var_1113 == 1)
         {
            this.var_484 = param1;
            this.var_1791 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1113);
            this.var_484 = this.var_484 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2517 && param3 - this.var_1791 >= this.var_2519 && this.var_1794 < this.var_2518)
         {
            _loc5_ = 1000 / this.var_484;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1794;
            this.var_1791 = param3;
            this.var_1113 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
