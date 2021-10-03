package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_486:int = -2.147483648E9;
      
      private var var_487:int = 2.147483647E9;
      
      private var var_485:int = -2.147483648E9;
      
      private var var_488:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_486;
      }
      
      public function get maxWidth() : int
      {
         return this.var_487;
      }
      
      public function get minHeight() : int
      {
         return this.var_485;
      }
      
      public function get maxHeight() : int
      {
         return this.var_488;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_486 = param1;
         if(this.var_486 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_486)
         {
            this._target.width = this.var_486;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_487 = param1;
         if(this.var_487 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_487)
         {
            this._target.width = this.var_487;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_485 = param1;
         if(this.var_485 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_485)
         {
            this._target.height = this.var_485;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_488 = param1;
         if(this.var_488 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_488)
         {
            this._target.height = this.var_488;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_486 == int.MIN_VALUE && this.var_487 == int.MAX_VALUE && this.var_485 == int.MIN_VALUE && this.var_488 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_486 = int.MIN_VALUE;
         this.var_487 = int.MAX_VALUE;
         this.var_485 = int.MIN_VALUE;
         this.var_488 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_486 = this.var_486;
         _loc2_.var_487 = this.var_487;
         _loc2_.var_485 = this.var_485;
         _loc2_.var_488 = this.var_488;
         return _loc2_;
      }
   }
}
