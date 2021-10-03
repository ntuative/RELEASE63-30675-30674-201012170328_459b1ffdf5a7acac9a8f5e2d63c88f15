package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   import flash.geom.Vector3D;
   
   public class FurnitureParticleSystemParticle
   {
       
      
      private var _x:Number;
      
      private var var_158:Number;
      
      private var var_157:Number;
      
      private var var_1667:Number;
      
      private var var_1669:Number;
      
      private var var_1668:Number;
      
      private var var_1060:Boolean = false;
      
      private var _direction:Vector3D;
      
      private var var_838:int = 0;
      
      private var var_1666:int;
      
      private var var_2305:Boolean = false;
      
      private var _frames:Array;
      
      public function FurnitureParticleSystemParticle()
      {
         super();
      }
      
      public function get direction() : Vector3D
      {
         return this._direction;
      }
      
      public function init(param1:Number, param2:Number, param3:Number, param4:Vector3D, param5:Number, param6:Number, param7:int, param8:Boolean = false, param9:Array = null) : void
      {
         this._x = param1;
         this.var_158 = param2;
         this.var_157 = param3;
         this._direction = new Vector3D(param4.x,param4.y,param4.z);
         this._direction.scaleBy(param5);
         this.var_1667 = this._x - this._direction.x * param6;
         this.var_1669 = this.var_158 - this._direction.y * param6;
         this.var_1668 = this.var_157 - this._direction.z * param6;
         this.var_838 = 0;
         this.var_1060 = false;
         this.var_1666 = param7;
         this.var_2305 = param8;
         this._frames = param9;
      }
      
      public function update() : void
      {
         ++this.var_838;
         if(this.var_838 == this.var_1666)
         {
            this.ignite();
         }
      }
      
      public function getAsset() : IGraphicAsset
      {
         if(this._frames && this._frames.length > 0)
         {
            return this._frames[this.var_838 % this._frames.length];
         }
         return null;
      }
      
      protected function ignite() : void
      {
      }
      
      public function get isEmitter() : Boolean
      {
         return this.var_2305;
      }
      
      public function get isAlive() : Boolean
      {
         return this.var_838 <= this.var_1666;
      }
      
      public function dispose() : void
      {
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
      
      public function get lastX() : Number
      {
         return this.var_1667;
      }
      
      public function set lastX(param1:Number) : void
      {
         this.var_1060 = true;
         this.var_1667 = param1;
      }
      
      public function get lastY() : Number
      {
         return this.var_1669;
      }
      
      public function set lastY(param1:Number) : void
      {
         this.var_1060 = true;
         this.var_1669 = param1;
      }
      
      public function get lastZ() : Number
      {
         return this.var_1668;
      }
      
      public function set lastZ(param1:Number) : void
      {
         this.var_1060 = true;
         this.var_1668 = param1;
      }
      
      public function get hasMoved() : Boolean
      {
         return this.var_1060;
      }
      
      public function toString() : String
      {
         return [this._x,this.var_158,this.var_157].toString();
      }
   }
}
