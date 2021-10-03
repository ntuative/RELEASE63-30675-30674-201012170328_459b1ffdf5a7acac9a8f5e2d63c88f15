package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2220:int;
      
      private var var_2221:int;
      
      private var var_2219:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2220 = param1;
         this.var_2221 = param2;
         this.var_2219 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2220,this.var_2221,this.var_2219];
      }
      
      public function dispose() : void
      {
      }
   }
}
