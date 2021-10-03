package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1638:int;
      
      private var var_2260:String;
      
      private var var_352:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1638 = param1.readInteger();
         this.var_2260 = param1.readString();
         this.var_352 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1638;
      }
      
      public function get nodeName() : String
      {
         return this.var_2260;
      }
      
      public function get visible() : Boolean
      {
         return this.var_352;
      }
   }
}
