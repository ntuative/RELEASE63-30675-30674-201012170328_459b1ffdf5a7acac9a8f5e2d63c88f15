package com.sulake.habbo.room.object
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomPlaneData
   {
      
      public static const const_1093:int = 0;
      
      public static const const_184:int = 1;
      
      public static const const_149:int = 2;
      
      public static const const_277:int = 3;
      
      public static const const_1442:int = 4;
       
      
      private var _type:int = 0;
      
      private var var_76:Vector3d = null;
      
      private var var_258:Vector3d = null;
      
      private var var_259:Vector3d = null;
      
      private var var_529:Vector3d = null;
      
      private var var_2523:Vector3d = null;
      
      private var var_1326:Array;
      
      private var var_165:Array;
      
      public function RoomPlaneData(param1:int, param2:IVector3d, param3:IVector3d, param4:IVector3d, param5:Array)
      {
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         this.var_1326 = [];
         this.var_165 = [];
         super();
         this.var_76 = new Vector3d();
         this.var_76.assign(param2);
         this.var_258 = new Vector3d();
         this.var_258.assign(param3);
         this.var_259 = new Vector3d();
         this.var_259.assign(param4);
         this._type = param1;
         if(param3 != null && param4 != null)
         {
            this.var_529 = Vector3d.crossProduct(param3,param4);
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            _loc10_ = 0;
            if(this.normal.x != 0 || this.normal.y != 0)
            {
               _loc9_ = Number(this.normal.x);
               _loc10_ = Number(this.normal.y);
               _loc6_ = Number(360 + Math.atan2(_loc10_,_loc9_) / 0 * 180);
               if(_loc6_ >= 360)
               {
                  _loc6_ -= 360;
               }
               _loc9_ = Number(Math.sqrt(this.normal.x * this.normal.x + this.normal.y * this.normal.y));
               _loc10_ = Number(this.normal.z);
               _loc7_ = Number(360 + Math.atan2(_loc10_,_loc9_) / 0 * 180);
               if(_loc7_ >= 360)
               {
                  _loc7_ -= 360;
               }
            }
            else if(this.normal.z < 0)
            {
               _loc7_ = 90;
            }
            else
            {
               _loc7_ = 270;
            }
            this.var_2523 = new Vector3d(_loc6_,_loc7_,_loc8_);
         }
         if(param5 != null && param5.length > 0)
         {
            _loc11_ = 0;
            while(_loc11_ < param5.length)
            {
               _loc12_ = param5[_loc11_];
               if(_loc12_ != null && _loc12_.length > 0)
               {
                  _loc13_ = new Vector3d();
                  _loc13_.assign(_loc12_);
                  _loc13_.mul(1 / _loc13_.length);
                  this.var_1326.push(_loc13_);
               }
               _loc11_++;
            }
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_76;
      }
      
      public function get leftSide() : IVector3d
      {
         return this.var_258;
      }
      
      public function get rightSide() : IVector3d
      {
         return this.var_259;
      }
      
      public function get normal() : IVector3d
      {
         return this.var_529;
      }
      
      public function get normalDirection() : IVector3d
      {
         return this.var_2523;
      }
      
      public function get secondaryNormalCount() : int
      {
         return this.var_1326.length;
      }
      
      public function get maskCount() : int
      {
         return this.var_165.length;
      }
      
      public function getSecondaryNormal(param1:int) : IVector3d
      {
         if(param1 < 0 || param1 >= this.secondaryNormalCount)
         {
            return null;
         }
         var _loc2_:Vector3d = new Vector3d();
         _loc2_.assign(this.var_1326[param1] as IVector3d);
         return _loc2_;
      }
      
      public function addMask(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:RoomPlaneMaskData = new RoomPlaneMaskData(param1,param2,param3,param4);
         this.var_165.push(_loc5_);
      }
      
      private function getMask(param1:int) : RoomPlaneMaskData
      {
         if(param1 < 0 || param1 >= this.maskCount)
         {
            return null;
         }
         return this.var_165[param1];
      }
      
      public function getMaskLeftSideLoc(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = this.getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.leftSideLoc;
         }
         return -1;
      }
      
      public function getMaskRightSideLoc(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = this.getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.rightSideLoc;
         }
         return -1;
      }
      
      public function getMaskLeftSideLength(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = this.getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.leftSideLength;
         }
         return -1;
      }
      
      public function getMaskRightSideLength(param1:int) : Number
      {
         var _loc2_:RoomPlaneMaskData = this.getMask(param1);
         if(_loc2_ != null)
         {
            return _loc2_.rightSideLength;
         }
         return -1;
      }
   }
}
