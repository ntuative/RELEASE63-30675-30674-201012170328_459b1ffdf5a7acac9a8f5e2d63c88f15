package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2085:int;
      
      private var var_1368:String;
      
      private var var_2083:int;
      
      private var var_2081:int;
      
      private var _category:int;
      
      private var var_1894:String;
      
      private var var_1231:int;
      
      private var var_2084:int;
      
      private var var_2082:int;
      
      private var var_2080:int;
      
      private var var_2079:int;
      
      private var var_2078:Boolean;
      
      private var var_2688:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2085 = param1;
         this.var_1368 = param2;
         this.var_2083 = param3;
         this.var_2081 = param4;
         this._category = param5;
         this.var_1894 = param6;
         this.var_1231 = param7;
         this.var_2084 = param8;
         this.var_2082 = param9;
         this.var_2080 = param10;
         this.var_2079 = param11;
         this.var_2078 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2085;
      }
      
      public function get itemType() : String
      {
         return this.var_1368;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2083;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2081;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1894;
      }
      
      public function get extra() : int
      {
         return this.var_1231;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2084;
      }
      
      public function get creationDay() : int
      {
         return this.var_2082;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2080;
      }
      
      public function get creationYear() : int
      {
         return this.var_2079;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2078;
      }
      
      public function get songID() : int
      {
         return this.var_1231;
      }
   }
}
