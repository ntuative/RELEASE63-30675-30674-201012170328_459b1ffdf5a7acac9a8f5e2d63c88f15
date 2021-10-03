package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1440:int;
      
      private var var_2512:String;
      
      private var var_1346:int;
      
      private var var_598:String;
      
      private var var_1378:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1440 = param1.readInteger();
         this.var_2512 = param1.readString();
         this.var_1346 = param1.readInteger();
         this.var_598 = param1.readString();
         this.var_1378 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1440;
      }
      
      public function get petName() : String
      {
         return this.var_2512;
      }
      
      public function get level() : int
      {
         return this.var_1346;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get petType() : int
      {
         return this.var_1378;
      }
   }
}
