package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1645:IID;
      
      private var var_689:Boolean;
      
      private var var_1049:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1645 = param1;
         this.var_1049 = new Array();
         this.var_689 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1645;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_689;
      }
      
      public function get receivers() : Array
      {
         return this.var_1049;
      }
      
      public function dispose() : void
      {
         if(!this.var_689)
         {
            this.var_689 = true;
            this.var_1645 = null;
            while(this.var_1049.length > 0)
            {
               this.var_1049.pop();
            }
            this.var_1049 = null;
         }
      }
   }
}
