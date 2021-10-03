package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_717:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_879:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_717);
         this.var_879 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_879;
      }
   }
}
