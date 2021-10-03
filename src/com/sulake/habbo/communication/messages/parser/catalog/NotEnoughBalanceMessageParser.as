package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1488:int = 0;
      
      private var var_1489:int = 0;
      
      private var var_1616:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1488;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1489;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1616;
      }
      
      public function flush() : Boolean
      {
         this.var_1488 = 0;
         this.var_1489 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1488 = param1.readInteger();
         this.var_1489 = param1.readInteger();
         this.var_1616 = param1.readInteger();
         return true;
      }
   }
}
