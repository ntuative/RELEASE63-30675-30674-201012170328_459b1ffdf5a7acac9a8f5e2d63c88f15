package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1097:String = "select_outfit";
       
      
      private var var_2224:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1097);
         this.var_2224 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2224;
      }
   }
}
