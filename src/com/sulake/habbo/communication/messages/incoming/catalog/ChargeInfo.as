package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2188:int;
      
      private var var_2187:int;
      
      private var var_1063:int;
      
      private var var_1062:int;
      
      private var var_1616:int;
      
      private var var_2189:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2188 = param1.readInteger();
         this.var_2187 = param1.readInteger();
         this.var_1063 = param1.readInteger();
         this.var_1062 = param1.readInteger();
         this.var_1616 = param1.readInteger();
         this.var_2189 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2188;
      }
      
      public function get charges() : int
      {
         return this.var_2187;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1063;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1062;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2189;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1616;
      }
   }
}
