package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2704:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_129 = param1.desktop;
         var_78 = param1.var_1158 as WindowController;
         _lastClickTarget = param1.var_1157 as WindowController;
         var_136 = param1.renderer;
         var_766 = param1.var_1156;
         param2.begin();
         param2.end();
         param1.desktop = var_129;
         param1.var_1158 = var_78;
         param1.var_1157 = _lastClickTarget;
         param1.renderer = var_136;
         param1.var_1156 = var_766;
      }
   }
}
