package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2043:Number;
      
      private var var_1257:Number;
      
      private var var_783:Number;
      
      private var var_782:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2043 = param1;
         this.var_1257 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_783 = param1;
         this.var_782 = 0;
      }
      
      public function update() : void
      {
         this.var_783 += this.var_1257;
         this.var_782 += this.var_783;
         if(this.var_782 > 0)
         {
            this.var_782 = 0;
            this.var_783 = this.var_2043 * -1 * this.var_783;
         }
      }
      
      public function get location() : Number
      {
         return this.var_782;
      }
   }
}
