package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1440:int;
      
      private var _name:String;
      
      private var var_1346:int;
      
      private var var_2592:int;
      
      private var var_1920:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_598:String;
      
      private var var_2594:int;
      
      private var var_2593:int;
      
      private var var_2595:int;
      
      private var var_2151:int;
      
      private var var_1922:int;
      
      private var _ownerName:String;
      
      private var var_838:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1440;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1346;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2592;
      }
      
      public function get experience() : int
      {
         return this.var_1920;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2594;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2593;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2595;
      }
      
      public function get respect() : int
      {
         return this.var_2151;
      }
      
      public function get ownerId() : int
      {
         return this.var_1922;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_838;
      }
      
      public function flush() : Boolean
      {
         this.var_1440 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1440 = param1.readInteger();
         this._name = param1.readString();
         this.var_1346 = param1.readInteger();
         this.var_2592 = param1.readInteger();
         this.var_1920 = param1.readInteger();
         this.var_2594 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2593 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2595 = param1.readInteger();
         this.var_598 = param1.readString();
         this.var_2151 = param1.readInteger();
         this.var_1922 = param1.readInteger();
         this.var_838 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
