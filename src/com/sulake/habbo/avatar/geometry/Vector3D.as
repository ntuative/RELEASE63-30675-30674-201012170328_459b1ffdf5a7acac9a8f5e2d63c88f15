package com.sulake.habbo.avatar.geometry
{
   public class Vector3D
   {
       
      
      private var _x:Number;
      
      private var var_158:Number;
      
      private var var_157:Number;
      
      public function Vector3D(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this._x = param1;
         this.var_158 = param2;
         this.var_157 = param3;
      }
      
      public static function dot(param1:Vector3D, param2:Vector3D) : Number
      {
         return param1.x * param2.x + param1.y * param2.y + param1.z * param2.z;
      }
      
      public static function cross(param1:Vector3D, param2:Vector3D) : Vector3D
      {
         var _loc3_:Vector3D = new Vector3D();
         _loc3_.x = param1.y * param2.z - param1.z * param2.y;
         _loc3_.y = param1.z * param2.x - param1.x * param2.z;
         _loc3_.z = param1.x * param2.y - param1.y * param2.x;
         return _loc3_;
      }
      
      public static function subtract(param1:Vector3D, param2:Vector3D) : Vector3D
      {
         return new Vector3D(param1.x - param2.x,param1.y - param2.y,param1.z - param2.z);
      }
      
      public function dot(param1:Vector3D) : Number
      {
         return this._x * param1.x + this.var_158 * param1.y + this.var_157 * param1.z;
      }
      
      public function cross(param1:Vector3D) : Vector3D
      {
         var _loc2_:Vector3D = new Vector3D();
         _loc2_.x = this.var_158 * param1.z - this.var_157 * param1.y;
         _loc2_.y = this.var_157 * param1.x - this._x * param1.z;
         _loc2_.z = this._x * param1.y - this.var_158 * param1.x;
         return _loc2_;
      }
      
      public function subtract(param1:Vector3D) : void
      {
         this._x -= param1.x;
         this.var_158 -= param1.y;
         this.var_157 -= param1.z;
      }
      
      public function add(param1:Vector3D) : void
      {
         this._x += param1.x;
         this.var_158 += param1.y;
         this.var_157 += param1.z;
      }
      
      public function normalize() : void
      {
         var _loc1_:Number = 1 / this.length();
         this._x *= _loc1_;
         this.var_158 *= _loc1_;
         this.var_157 *= _loc1_;
      }
      
      public function length() : Number
      {
         return Math.sqrt(this._x * this._x + this.var_158 * this.var_158 + this.var_157 * this.var_157);
      }
      
      public function toString() : String
      {
         return "Vector3D: (" + this._x + "," + this.var_158 + "," + this.var_157 + ")";
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
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.var_158 = param1;
      }
      
      public function set z(param1:Number) : void
      {
         this.var_157 = param1;
      }
   }
}
