package com.sulake.habbo.moderation
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class OpenRoomTool
   {
       
      
      private var _frame:IFrameWindow;
      
      private var var_47:ModerationManager;
      
      private var var_1561:Boolean;
      
      private var _roomId:int;
      
      public function OpenRoomTool(param1:IFrameWindow, param2:ModerationManager, param3:IWindow, param4:Boolean, param5:int)
      {
         super();
         this._frame = param1;
         this.var_47 = param2;
         this.var_1561 = param4;
         this._roomId = param5;
         param3.procedure = this.onClick;
      }
      
      private function onClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this.var_1561)
         {
            this.var_47.windowManager.alert("Alert","Room tool is not available for public spaces. Public spaces can be moderated using in-room chat moderation commands.",0,this.onAlertClose);
         }
         else
         {
            this.var_47.windowTracker.show(new RoomToolCtrl(this.var_47,this._roomId),this._frame,false,false,true);
         }
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
   }
}
