package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LagWarningReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_1053:int;
      
      public function LagWarningReportMessageComposer(param1:int)
      {
         super();
         this.var_1053 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1053];
      }
      
      public function dispose() : void
      {
      }
   }
}
