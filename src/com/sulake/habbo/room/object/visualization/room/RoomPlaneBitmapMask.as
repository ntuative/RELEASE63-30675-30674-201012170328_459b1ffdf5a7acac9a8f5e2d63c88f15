package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneBitmapMask
   {
       
      
      private var _type:String = null;
      
      private var var_1959:Number = 0.0;
      
      private var var_1960:Number = 0.0;
      
      public function RoomPlaneBitmapMask(param1:String, param2:Number, param3:Number)
      {
         super();
         this._type = param1;
         this.var_1959 = param2;
         this.var_1960 = param3;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_1959;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_1960;
      }
   }
}
