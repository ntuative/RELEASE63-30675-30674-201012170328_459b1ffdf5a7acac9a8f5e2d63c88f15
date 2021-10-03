package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_704:int = 1;
      
      public static const const_787:int = 2;
      
      public static const const_770:int = 3;
      
      public static const const_1092:int = 4;
      
      public static const const_597:int = 5;
      
      public static const const_1054:int = 6;
       
      
      private var _type:int;
      
      private var var_1026:int;
      
      private var var_2193:String;
      
      private var var_2269:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1026 = param2;
         this.var_2193 = param3;
         this.var_2269 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2193;
      }
      
      public function get time() : String
      {
         return this.var_2269;
      }
      
      public function get senderId() : int
      {
         return this.var_1026;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
