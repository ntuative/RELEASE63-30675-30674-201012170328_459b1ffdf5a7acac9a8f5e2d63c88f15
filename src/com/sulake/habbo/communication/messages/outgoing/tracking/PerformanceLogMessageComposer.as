package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2205:int = 0;
      
      private var var_1371:String = "";
      
      private var var_1790:String = "";
      
      private var var_2427:String = "";
      
      private var var_2425:String = "";
      
      private var var_1742:int = 0;
      
      private var var_2426:int = 0;
      
      private var var_2423:int = 0;
      
      private var var_1370:int = 0;
      
      private var var_2424:int = 0;
      
      private var var_1372:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2205 = param1;
         this.var_1371 = param2;
         this.var_1790 = param3;
         this.var_2427 = param4;
         this.var_2425 = param5;
         if(param6)
         {
            this.var_1742 = 1;
         }
         else
         {
            this.var_1742 = 0;
         }
         this.var_2426 = param7;
         this.var_2423 = param8;
         this.var_1370 = param9;
         this.var_2424 = param10;
         this.var_1372 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2205,this.var_1371,this.var_1790,this.var_2427,this.var_2425,this.var_1742,this.var_2426,this.var_2423,this.var_1370,this.var_2424,this.var_1372];
      }
   }
}
