package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var var_963:int;
      
      private var _right:int;
      
      private var var_962:int;
      
      private var var_961:int;
      
      private var var_254:Function;
      
      private var _disposed:Boolean = false;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         this.var_963 = param1;
         this.var_962 = param2;
         this._right = param3;
         this.var_961 = param4;
         this.var_254 = param5 != null ? param5 : this.nullCallback;
      }
      
      public function get left() : int
      {
         return this.var_963;
      }
      
      public function get right() : int
      {
         return this._right;
      }
      
      public function get top() : int
      {
         return this.var_962;
      }
      
      public function get bottom() : int
      {
         return this.var_961;
      }
      
      public function set left(param1:int) : void
      {
         this.var_963 = param1;
         this.var_254(this);
      }
      
      public function set right(param1:int) : void
      {
         this._right = param1;
         this.var_254(this);
      }
      
      public function set top(param1:int) : void
      {
         this.var_962 = param1;
         this.var_254(this);
      }
      
      public function set bottom(param1:int) : void
      {
         this.var_961 = param1;
         this.var_254(this);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get isZeroes() : Boolean
      {
         return this.var_963 == 0 && this._right == 0 && this.var_962 == 0 && this.var_961 == 0;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(this.var_963,this.var_962,this._right,this.var_961,param1);
      }
      
      public function dispose() : void
      {
         this.var_254 = null;
         this._disposed = true;
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
