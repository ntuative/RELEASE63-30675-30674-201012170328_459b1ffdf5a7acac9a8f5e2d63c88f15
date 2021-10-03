package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_242:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2248:int = 0;
      
      private var var_2249:int = 0;
      
      private var var_2251:int = 0;
      
      private var var_2250:Boolean = false;
      
      private var var_1941:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_242,param6,param7);
         this.var_2248 = param1;
         this.var_2249 = param2;
         this.var_2251 = param3;
         this.var_2250 = param4;
         this.var_1941 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2248;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2249;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2251;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2250;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1941;
      }
   }
}
