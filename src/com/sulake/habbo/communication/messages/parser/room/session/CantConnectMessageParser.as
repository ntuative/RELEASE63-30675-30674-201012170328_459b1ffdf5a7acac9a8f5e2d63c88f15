package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1295:int = 1;
      
      public static const const_1695:int = 2;
      
      public static const const_1289:int = 3;
      
      public static const const_1326:int = 4;
       
      
      private var var_1242:int = 0;
      
      private var var_1243:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1242 = 0;
         this.var_1243 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1242 = param1.readInteger();
         if(this.var_1242 == 3)
         {
            this.var_1243 = param1.readString();
         }
         else
         {
            this.var_1243 = "";
         }
         return true;
      }
      
      public function get reason() : int
      {
         return this.var_1242;
      }
      
      public function get parameter() : String
      {
         return this.var_1243;
      }
   }
}
