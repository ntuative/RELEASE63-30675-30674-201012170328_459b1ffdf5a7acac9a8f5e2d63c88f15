package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputDisplayEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_711:String = "RWWCIDE_CHAT_INPUT_SETUP";
       
      
      private var var_2504:Boolean;
      
      public function RoomWidgetChatInputDisplayEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         this.var_2504 = param2;
         super(param1,param3,param4);
      }
      
      public function get allowPaste() : Boolean
      {
         return this.var_2504;
      }
   }
}
