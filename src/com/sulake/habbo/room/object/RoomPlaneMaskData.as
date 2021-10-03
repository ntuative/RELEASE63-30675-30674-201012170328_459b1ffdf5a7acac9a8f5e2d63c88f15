package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1959:Number = 0.0;
      
      private var var_1960:Number = 0.0;
      
      private var var_2131:Number = 0.0;
      
      private var var_2132:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_1959 = param1;
         this.var_1960 = param2;
         this.var_2131 = param3;
         this.var_2132 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_1959;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_1960;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2131;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2132;
      }
   }
}
