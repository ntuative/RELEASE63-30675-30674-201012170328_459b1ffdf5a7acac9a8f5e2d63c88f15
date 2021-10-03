package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_395:int = 0;
       
      
      private var var_1946:int = 0;
      
      private var var_1211:Dictionary;
      
      private var var_1461:int = 0;
      
      private var var_1462:int = 0;
      
      private var var_1993:Boolean = false;
      
      private var var_1995:int = 0;
      
      private var var_1994:int = 0;
      
      public function Purse()
      {
         this.var_1211 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1946;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1946 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1461;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1461 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1462;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1462 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1461 > 0 || this.var_1462 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1993;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1993 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1995;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1994;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1211;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1211 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1211[param1];
      }
   }
}
