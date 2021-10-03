package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_576:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1039:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2266:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_576);
         this.var_2266 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2266;
      }
   }
}
