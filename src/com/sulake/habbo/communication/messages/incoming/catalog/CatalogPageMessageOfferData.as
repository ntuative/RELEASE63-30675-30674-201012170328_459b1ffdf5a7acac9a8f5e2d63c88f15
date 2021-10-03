package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1675:String;
      
      private var var_1063:int;
      
      private var var_1062:int;
      
      private var var_1616:int;
      
      private var var_1017:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1675 = param1.readString();
         this.var_1063 = param1.readInteger();
         this.var_1062 = param1.readInteger();
         this.var_1616 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1017 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1017.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1675;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1063;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1062;
      }
      
      public function get products() : Array
      {
         return this.var_1017;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1616;
      }
   }
}
