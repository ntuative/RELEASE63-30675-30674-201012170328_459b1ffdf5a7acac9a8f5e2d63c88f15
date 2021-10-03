package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_753:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_1038:String = "whisper";
      
      public static const const_1506:String = "shout";
       
      
      private var var_2542:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_753,param3,param4);
         this.var_2542 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_2542;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
