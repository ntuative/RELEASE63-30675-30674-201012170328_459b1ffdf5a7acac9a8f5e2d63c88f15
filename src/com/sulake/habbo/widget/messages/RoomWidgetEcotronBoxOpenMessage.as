package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_776:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_293:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
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
