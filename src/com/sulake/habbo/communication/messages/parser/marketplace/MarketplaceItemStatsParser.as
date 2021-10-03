package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1958:int;
      
      private var var_2302:int;
      
      private var var_2301:int;
      
      private var _dayOffsets:Array;
      
      private var var_1664:Array;
      
      private var var_1663:Array;
      
      private var var_2300:int;
      
      private var var_2303:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1958;
      }
      
      public function get offerCount() : int
      {
         return this.var_2302;
      }
      
      public function get historyLength() : int
      {
         return this.var_2301;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1664;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1663;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2300;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2303;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1958 = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this.var_2301 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1664 = [];
         this.var_1663 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1664.push(param1.readInteger());
            this.var_1663.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2303 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         return true;
      }
   }
}
