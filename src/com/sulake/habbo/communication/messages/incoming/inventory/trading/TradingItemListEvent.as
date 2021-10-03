package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.inventory.trading.TradingItemListParser;
   
   public class TradingItemListEvent extends MessageEvent
   {
       
      
      public function TradingItemListEvent(param1:Function, param2:Class)
      {
         super(param1,param2);
      }
      
      public function get firstUserID() : int
      {
         return this.getParser().firstUserID;
      }
      
      public function get secondUserID() : int
      {
         return this.getParser().secondUserID;
      }
      
      public function get method_3() : Array
      {
         return this.getParser().method_3;
      }
      
      public function get secondUserItemArray() : Array
      {
         return this.getParser().secondUserItemArray;
      }
      
      public function getParser() : TradingItemListParser
      {
         return var_10 as TradingItemListParser;
      }
   }
}
