package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2645:uint;
      
      private var var_130:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_232:IWindowContext;
      
      private var var_980:IMouseDraggingService;
      
      private var var_982:IMouseScalingService;
      
      private var var_983:IMouseListenerService;
      
      private var var_981:IFocusManagerService;
      
      private var var_979:IToolTipAgentService;
      
      private var var_978:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2645 = 0;
         this.var_130 = param2;
         this.var_232 = param1;
         this.var_980 = new WindowMouseDragger(param2);
         this.var_982 = new WindowMouseScaler(param2);
         this.var_983 = new WindowMouseListener(param2);
         this.var_981 = new FocusManager(param2);
         this.var_979 = new WindowToolTipAgent(param2);
         this.var_978 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_980 != null)
         {
            this.var_980.dispose();
            this.var_980 = null;
         }
         if(this.var_982 != null)
         {
            this.var_982.dispose();
            this.var_982 = null;
         }
         if(this.var_983 != null)
         {
            this.var_983.dispose();
            this.var_983 = null;
         }
         if(this.var_981 != null)
         {
            this.var_981.dispose();
            this.var_981 = null;
         }
         if(this.var_979 != null)
         {
            this.var_979.dispose();
            this.var_979 = null;
         }
         if(this.var_978 != null)
         {
            this.var_978.dispose();
            this.var_978 = null;
         }
         this.var_130 = null;
         this.var_232 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_980;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_982;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_983;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_981;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_979;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_978;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
