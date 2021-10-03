package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_712:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_712 = new ByteArray();
         this.var_712.writeShort(param1);
         this.var_712.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_712.position = 0;
         if(this.var_712.bytesAvailable)
         {
            _loc1_ = this.var_712.readShort();
            this.var_712.position = 0;
         }
         return _loc1_;
      }
   }
}
