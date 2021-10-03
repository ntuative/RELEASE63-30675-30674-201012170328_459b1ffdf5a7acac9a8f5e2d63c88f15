package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1440:int;
      
      private var var_1346:int;
      
      private var var_1921:int;
      
      private var var_1920:int;
      
      private var var_1927:int;
      
      private var _energy:int;
      
      private var var_1919:int;
      
      private var _nutrition:int;
      
      private var var_1923:int;
      
      private var var_1922:int;
      
      private var _ownerName:String;
      
      private var var_2151:int;
      
      private var var_838:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1440;
      }
      
      public function get level() : int
      {
         return this.var_1346;
      }
      
      public function get levelMax() : int
      {
         return this.var_1921;
      }
      
      public function get experience() : int
      {
         return this.var_1920;
      }
      
      public function get experienceMax() : int
      {
         return this.var_1927;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_1919;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_1923;
      }
      
      public function get ownerId() : int
      {
         return this.var_1922;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2151;
      }
      
      public function get age() : int
      {
         return this.var_838;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1440 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1346 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_1921 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_1920 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_1927 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_1919 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_1923 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_1922 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2151 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_838 = param1;
      }
   }
}
