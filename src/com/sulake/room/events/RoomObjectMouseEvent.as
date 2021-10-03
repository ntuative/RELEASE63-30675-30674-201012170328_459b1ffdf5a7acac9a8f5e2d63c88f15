package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_209:String = "ROE_MOUSE_CLICK";
      
      public static const const_1738:String = "ROE_MOUSE_ENTER";
      
      public static const const_460:String = "ROE_MOUSE_MOVE";
      
      public static const const_1640:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1631:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_476:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1580:String = "";
      
      private var var_1988:Boolean;
      
      private var var_1987:Boolean;
      
      private var var_1983:Boolean;
      
      private var var_1985:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1580 = param2;
         this.var_1988 = param5;
         this.var_1987 = param6;
         this.var_1983 = param7;
         this.var_1985 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1580;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_1988;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_1987;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_1983;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_1985;
      }
   }
}
