package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1461:int = 0;
      
      private var var_1462:int = 0;
      
      private var var_2343:int = 0;
      
      private var var_2342:Boolean = false;
      
      private var var_1993:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1461 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1462 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2343 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2342 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1993 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1461;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1462;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2343;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2342;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1993;
      }
   }
}
