package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_2467:Number = 0;
      
      private var var_2465:Number = 0;
      
      private var var_2466:Number = 0;
      
      private var var_2464:Number = 0;
      
      private var var_250:int = 0;
      
      private var var_2351:int = 0;
      
      private var var_289:Array;
      
      private var var_2463:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_289 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_158 = param3;
         this.var_157 = param4;
         this.var_2467 = param5;
         this.var_250 = param6;
         this.var_2351 = param7;
         this.var_2465 = param8;
         this.var_2466 = param9;
         this.var_2464 = param10;
         this.var_2463 = param11;
         this.var_289 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function get z() : Number
      {
         return this.var_157;
      }
      
      public function get localZ() : Number
      {
         return this.var_2467;
      }
      
      public function get targetX() : Number
      {
         return this.var_2465;
      }
      
      public function get targetY() : Number
      {
         return this.var_2466;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2464;
      }
      
      public function get dir() : int
      {
         return this.var_250;
      }
      
      public function get dirHead() : int
      {
         return this.var_2351;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2463;
      }
      
      public function get actions() : Array
      {
         return this.var_289.slice();
      }
   }
}
