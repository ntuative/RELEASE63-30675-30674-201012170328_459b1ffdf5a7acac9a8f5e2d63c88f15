package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1730:int;
      
      private var var_2412:int;
      
      private var var_1239:int;
      
      private var var_2376:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1730 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         this.var_1239 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1730);
      }
      
      public function get callId() : int
      {
         return this.var_1730;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2412;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1239;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2376;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
