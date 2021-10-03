package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_358:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_435:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1033:int;
      
      private var var_2169:Boolean;
      
      private var var_358:Boolean;
      
      private var var_1559:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1033 = param2;
         this.var_2169 = param3;
         this.var_358 = param4;
         this.var_1559 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1033;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2169;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_358;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1559;
      }
   }
}
