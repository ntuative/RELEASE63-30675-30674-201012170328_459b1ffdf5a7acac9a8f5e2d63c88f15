package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_867:int = 3;
       
      
      private var var_2449:int = -1;
      
      private var var_2448:int = -2;
      
      private var var_329:Vector3d = null;
      
      private var var_395:Vector3d = null;
      
      private var var_2453:Boolean = false;
      
      private var var_2446:Boolean = false;
      
      private var var_2452:Boolean = false;
      
      private var var_2450:Boolean = false;
      
      private var var_2454:int = 0;
      
      private var var_2447:int = 0;
      
      private var var_2445:int = 0;
      
      private var var_2451:int = 0;
      
      private var var_1349:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_395;
      }
      
      public function get targetId() : int
      {
         return this.var_2449;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2448;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2453;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2446;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2452;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2450;
      }
      
      public function get screenWd() : int
      {
         return this.var_2454;
      }
      
      public function get screenHt() : int
      {
         return this.var_2447;
      }
      
      public function get roomWd() : int
      {
         return this.var_2445;
      }
      
      public function get roomHt() : int
      {
         return this.var_2451;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2449 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2448 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2453 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2446 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2452 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2450 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2454 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2447 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2445 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2451 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_329 == null)
         {
            this.var_329 = new Vector3d();
         }
         if(this.var_329.x != param1.x || this.var_329.y != param1.y || this.var_329.z != param1.z)
         {
            this.var_329.assign(param1);
            this.var_1349 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_329 = null;
         this.var_395 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_395 != null)
         {
            return;
         }
         this.var_395 = new Vector3d();
         this.var_395.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_329 != null && this.var_395 != null)
         {
            ++this.var_1349;
            _loc4_ = Vector3d.dif(this.var_329,this.var_395);
            if(_loc4_.length <= param2)
            {
               this.var_395 = this.var_329;
               this.var_329 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_867 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1349 <= const_867)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_395 = Vector3d.sum(this.var_395,_loc4_);
            }
         }
      }
   }
}
