package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_155:String = "RWPOM_OPEN_PRESENT";
       
      
      private var var_293:int;
      
      public function RoomWidgetPresentOpenMessage(param1:String, param2:int)
      {
         super(param1);
         this.var_293 = param2;
      }
      
      public function get objectId() : int
      {
         return this.var_293;
      }
   }
}
