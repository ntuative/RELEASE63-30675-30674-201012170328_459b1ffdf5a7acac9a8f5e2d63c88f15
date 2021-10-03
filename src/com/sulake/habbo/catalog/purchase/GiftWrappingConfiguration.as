package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1358:Boolean = false;
      
      private var var_1519:int;
      
      private var var_1758:Array;
      
      private var var_749:Array;
      
      private var var_748:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1358 = _loc2_.isWrappingEnabled;
         this.var_1519 = _loc2_.wrappingPrice;
         this.var_1758 = _loc2_.stuffTypes;
         this.var_749 = _loc2_.boxTypes;
         this.var_748 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1358;
      }
      
      public function get price() : int
      {
         return this.var_1519;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1758;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_749;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_748;
      }
   }
}
