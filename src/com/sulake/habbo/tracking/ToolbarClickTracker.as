package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1180:IHabboTracking;
      
      private var var_1493:Boolean = false;
      
      private var var_2212:int = 0;
      
      private var var_1624:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1180 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1180 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1493 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2212 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1493)
         {
            return;
         }
         ++this.var_1624;
         if(this.var_1624 <= this.var_2212)
         {
            this.var_1180.track("toolbar",param1);
         }
      }
   }
}
