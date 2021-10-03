package com.sulake.habbo.widget.messages
{
   import com.sulake.core.window.IWindowContainer;
   
   public class RoomWidgetToolbarMessage extends RoomWidgetMessage
   {
      
      public static const const_725:String = "RWCM_MESSAGE_TOOLBAR_ANIMATE_MENU";
      
      public static const const_713:String = "RWCM_MESSAGE_TOOLBAR_ANIMATE_MENU_OUT";
      
      public static const WIDGET_MESSAGE_TOOLBAR_HIDE_MENU:String = "RWCM_MESSAGE_TOOLBAR_HIDE_MENU";
       
      
      private var _window:IWindowContainer;
      
      public function RoomWidgetToolbarMessage(param1:String)
      {
         super(param1);
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
      
      public function set window(param1:IWindowContainer) : void
      {
         this._window = param1;
      }
   }
}
