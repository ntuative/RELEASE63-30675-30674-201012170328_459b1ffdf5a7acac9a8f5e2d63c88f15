package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1772:int;
      
      private var var_2050:String;
      
      private var var_874:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1772 = param1.readInteger();
         this.var_2050 = param1.readString();
         this.var_874 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1772;
      }
      
      public function get figureString() : String
      {
         return this.var_2050;
      }
      
      public function get gender() : String
      {
         return this.var_874;
      }
   }
}
