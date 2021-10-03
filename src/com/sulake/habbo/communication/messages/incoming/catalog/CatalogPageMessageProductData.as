package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_76:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_215:String = "e";
       
      
      private var var_1680:String;
      
      private var var_2278:int;
      
      private var var_1304:String;
      
      private var var_1303:int;
      
      private var var_1678:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1680 = param1.readString();
         this.var_2278 = param1.readInteger();
         this.var_1304 = param1.readString();
         this.var_1303 = param1.readInteger();
         this.var_1678 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1680;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2278;
      }
      
      public function get extraParam() : String
      {
         return this.var_1304;
      }
      
      public function get productCount() : int
      {
         return this.var_1303;
      }
      
      public function get expiration() : int
      {
         return this.var_1678;
      }
   }
}
