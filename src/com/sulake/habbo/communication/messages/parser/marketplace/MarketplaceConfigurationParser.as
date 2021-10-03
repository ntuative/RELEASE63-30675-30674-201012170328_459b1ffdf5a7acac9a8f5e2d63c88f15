package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1358:Boolean;
      
      private var var_2025:int;
      
      private var var_1468:int;
      
      private var var_1469:int;
      
      private var var_2028:int;
      
      private var var_2027:int;
      
      private var var_2022:int;
      
      private var var_2024:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1358;
      }
      
      public function get commission() : int
      {
         return this.var_2025;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1468;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1469;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2027;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2028;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2022;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2024;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1358 = param1.readBoolean();
         this.var_2025 = param1.readInteger();
         this.var_1468 = param1.readInteger();
         this.var_1469 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         this.var_2028 = param1.readInteger();
         this.var_2022 = param1.readInteger();
         this.var_2024 = param1.readInteger();
         return true;
      }
   }
}
