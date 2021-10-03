package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserTagsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_153:String = "RWUTUE_USER_TAGS";
       
      
      private var _userId:int;
      
      private var var_769:Array;
      
      private var var_1962:Boolean;
      
      public function RoomWidgetUserTagsUpdateEvent(param1:int, param2:Array, param3:Boolean, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_153,param4,param5);
         this._userId = param1;
         this.var_769 = param2;
         this.var_1962 = param3;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get tags() : Array
      {
         return this.var_769;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_1962;
      }
   }
}
