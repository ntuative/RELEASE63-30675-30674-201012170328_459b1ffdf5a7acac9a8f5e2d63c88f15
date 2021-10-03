package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2316:int;
      
      private var var_1368:String;
      
      private var _objId:int;
      
      private var var_1615:int;
      
      private var _category:int;
      
      private var var_1894:String;
      
      private var var_2313:Boolean;
      
      private var var_2312:Boolean;
      
      private var var_2315:Boolean;
      
      private var var_2311:Boolean;
      
      private var var_2314:int;
      
      private var var_1231:int;
      
      private var var_1772:String = "";
      
      private var var_1961:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2316 = param1;
         this.var_1368 = param2;
         this._objId = param3;
         this.var_1615 = param4;
         this._category = param5;
         this.var_1894 = param6;
         this.var_2313 = param7;
         this.var_2312 = param8;
         this.var_2315 = param9;
         this.var_2311 = param10;
         this.var_2314 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1772 = param1;
         this.var_1231 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2316;
      }
      
      public function get itemType() : String
      {
         return this.var_1368;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1615;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1894;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2313;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2312;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2315;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2311;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2314;
      }
      
      public function get slotId() : String
      {
         return this.var_1772;
      }
      
      public function get songId() : int
      {
         return this.var_1961;
      }
      
      public function get extra() : int
      {
         return this.var_1231;
      }
   }
}
