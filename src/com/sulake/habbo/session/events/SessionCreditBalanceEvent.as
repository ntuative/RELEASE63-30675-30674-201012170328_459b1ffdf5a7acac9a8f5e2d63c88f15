package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class SessionCreditBalanceEvent extends Event
   {
      
      public static const const_188:String = "session_credit_balance";
       
      
      private var var_1946:int;
      
      public function SessionCreditBalanceEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_188,param2,param3);
         this.var_1946 = param1;
      }
      
      public function get credits() : int
      {
         return this.var_1946;
      }
   }
}
