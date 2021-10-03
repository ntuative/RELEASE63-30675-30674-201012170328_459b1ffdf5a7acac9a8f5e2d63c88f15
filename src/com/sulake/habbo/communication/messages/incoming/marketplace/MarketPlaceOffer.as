package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_1957:int;
      
      private var var_1894:String;
      
      private var var_1519:int;
      
      private var _status:int;
      
      private var var_1956:int = -1;
      
      private var var_1958:int;
      
      private var var_1811:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_1957 = param3;
         this.var_1894 = param4;
         this.var_1519 = param5;
         this._status = param6;
         this.var_1956 = param7;
         this.var_1958 = param8;
         this.var_1811 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_1957;
      }
      
      public function get stuffData() : String
      {
         return this.var_1894;
      }
      
      public function get price() : int
      {
         return this.var_1519;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_1956;
      }
      
      public function get averagePrice() : int
      {
         return this.var_1958;
      }
      
      public function get offerCount() : int
      {
         return this.var_1811;
      }
   }
}
