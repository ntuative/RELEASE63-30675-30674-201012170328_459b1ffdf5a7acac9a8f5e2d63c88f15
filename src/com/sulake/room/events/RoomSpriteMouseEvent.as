package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1580:String = "";
      
      private var var_1981:String = "";
      
      private var var_1945:String = "";
      
      private var var_1982:Number = 0;
      
      private var var_1984:Number = 0;
      
      private var var_1980:Number = 0;
      
      private var var_1986:Number = 0;
      
      private var var_1987:Boolean = false;
      
      private var var_1988:Boolean = false;
      
      private var var_1983:Boolean = false;
      
      private var var_1985:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1580 = param2;
         this.var_1981 = param3;
         this.var_1945 = param4;
         this.var_1982 = param5;
         this.var_1984 = param6;
         this.var_1980 = param7;
         this.var_1986 = param8;
         this.var_1987 = param9;
         this.var_1988 = param10;
         this.var_1983 = param11;
         this.var_1985 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1580;
      }
      
      public function get canvasId() : String
      {
         return this.var_1981;
      }
      
      public function get spriteTag() : String
      {
         return this.var_1945;
      }
      
      public function get screenX() : Number
      {
         return this.var_1982;
      }
      
      public function get screenY() : Number
      {
         return this.var_1984;
      }
      
      public function get localX() : Number
      {
         return this.var_1980;
      }
      
      public function get localY() : Number
      {
         return this.var_1986;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_1987;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_1988;
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
