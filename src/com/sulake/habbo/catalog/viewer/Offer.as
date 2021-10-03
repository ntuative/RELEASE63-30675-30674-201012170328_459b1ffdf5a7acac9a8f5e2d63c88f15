package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1360:String = "pricing_model_unknown";
      
      public static const const_466:String = "pricing_model_single";
      
      public static const const_519:String = "pricing_model_multi";
      
      public static const const_500:String = "pricing_model_bundle";
      
      public static const const_1281:String = "price_type_none";
      
      public static const const_586:String = "price_type_credits";
      
      public static const const_937:String = "price_type_activitypoints";
      
      public static const const_1043:String = "price_type_credits_and_activitypoints";
       
      
      private var var_683:String;
      
      private var var_1064:String;
      
      private var _offerId:int;
      
      private var var_1675:String;
      
      private var var_1063:int;
      
      private var var_1062:int;
      
      private var var_1616:int;
      
      private var var_399:ICatalogPage;
      
      private var var_682:IProductContainer;
      
      private var var_2322:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1675 = param1.localizationId;
         this.var_1063 = param1.priceInCredits;
         this.var_1062 = param1.priceInActivityPoints;
         this.var_1616 = param1.activityPointType;
         this.var_399 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_399;
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
      
      public function get activityPointType() : int
      {
         return this.var_1616;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_682;
      }
      
      public function get pricingModel() : String
      {
         return this.var_683;
      }
      
      public function get priceType() : String
      {
         return this.var_1064;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2322;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1675 = "";
         this.var_1063 = 0;
         this.var_1062 = 0;
         this.var_1616 = 0;
         this.var_399 = null;
         if(this.var_682 != null)
         {
            this.var_682.dispose();
            this.var_682 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_683)
         {
            case const_466:
               this.var_682 = new SingleProductContainer(this,param1);
               break;
            case const_519:
               this.var_682 = new MultiProductContainer(this,param1);
               break;
            case const_500:
               this.var_682 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_683);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_683 = const_466;
            }
            else
            {
               this.var_683 = const_519;
            }
         }
         else if(param1.length > 1)
         {
            this.var_683 = const_500;
         }
         else
         {
            this.var_683 = const_1360;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1063 > 0 && this.var_1062 > 0)
         {
            this.var_1064 = const_1043;
         }
         else if(this.var_1063 > 0)
         {
            this.var_1064 = const_586;
         }
         else if(this.var_1062 > 0)
         {
            this.var_1064 = const_937;
         }
         else
         {
            this.var_1064 = const_1281;
         }
      }
   }
}
