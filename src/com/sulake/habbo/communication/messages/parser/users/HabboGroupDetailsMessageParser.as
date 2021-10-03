package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboGroupDetailsMessageParser implements IMessageParser
   {
       
      
      private var var_1401:int = -1;
      
      private var _name:String = "";
      
      private var var_1629:String = "";
      
      private var _roomId:int = -1;
      
      private var var_852:String = "";
      
      public function HabboGroupDetailsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1401 = -1;
         this._name = "";
         this.var_1629 = "";
         this._roomId = -1;
         this.var_852 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1401 = param1.readInteger();
         if(this.var_1401 != -1)
         {
            this._name = param1.readString();
            this.var_1629 = param1.readString();
            this._roomId = param1.readInteger();
            this.var_852 = param1.readString();
         }
         return true;
      }
      
      public function get groupId() : int
      {
         return this.var_1401;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.var_1629;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
   }
}
