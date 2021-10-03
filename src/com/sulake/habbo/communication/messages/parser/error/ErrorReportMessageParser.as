package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1483:int;
      
      private var var_1484:int;
      
      private var var_1482:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1484 = param1.readInteger();
         this.var_1483 = param1.readInteger();
         this.var_1482 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1483 = 0;
         this.var_1484 = 0;
         this.var_1482 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1483;
      }
      
      public function get messageId() : int
      {
         return this.var_1484;
      }
      
      public function get timestamp() : String
      {
         return this.var_1482;
      }
   }
}
