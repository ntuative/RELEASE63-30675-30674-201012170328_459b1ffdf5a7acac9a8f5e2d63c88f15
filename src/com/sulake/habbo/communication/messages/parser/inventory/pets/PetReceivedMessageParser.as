package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1467:Boolean;
      
      private var var_955:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1467 = param1.readBoolean();
         this.var_955 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1467 + ", " + this.var_955.id + ", " + this.var_955.name + ", " + this.pet.figure + ", " + this.var_955.type);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1467;
      }
      
      public function get pet() : PetData
      {
         return this.var_955;
      }
   }
}
