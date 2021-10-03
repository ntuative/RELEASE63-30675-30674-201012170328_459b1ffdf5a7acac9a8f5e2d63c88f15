package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1561:Boolean;
      
      private var _roomId:int;
      
      private var var_852:String;
      
      private var var_1944:int;
      
      private var var_1943:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1561 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_852 = param1.readString();
         this.var_1944 = param1.readInteger();
         this.var_1943 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1561;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get enterHour() : int
      {
         return this.var_1944;
      }
      
      public function get enterMinute() : int
      {
         return this.var_1943;
      }
   }
}
