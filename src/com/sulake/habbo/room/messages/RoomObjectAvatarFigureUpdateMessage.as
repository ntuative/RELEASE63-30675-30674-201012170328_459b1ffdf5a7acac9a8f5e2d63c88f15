package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_598:String;
      
      private var var_2062:String;
      
      private var var_874:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_598 = param1;
         this.var_874 = param2;
         this.var_2062 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get race() : String
      {
         return this.var_2062;
      }
      
      public function get gender() : String
      {
         return this.var_874;
      }
   }
}
