package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2618:int;
      
      private var var_2619:int;
      
      private var var_2616:int;
      
      private var var_2617:String;
      
      private var var_1765:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2618 = param1.readInteger();
         this.var_2619 = param1.readInteger();
         this.var_2616 = param1.readInteger();
         this.var_2617 = param1.readString();
         this.var_1765 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2618;
      }
      
      public function get minute() : int
      {
         return this.var_2619;
      }
      
      public function get chatterId() : int
      {
         return this.var_2616;
      }
      
      public function get chatterName() : String
      {
         return this.var_2617;
      }
      
      public function get msg() : String
      {
         return this.var_1765;
      }
   }
}
