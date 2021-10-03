package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_660:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1401:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_660);
         this.var_1401 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1401;
      }
   }
}
