package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_598:String;
      
      private var var_843:String;
      
      private var var_2581:String;
      
      private var var_1610:String;
      
      private var var_2583:int;
      
      private var var_2584:String;
      
      private var var_2580:int;
      
      private var var_2582:int;
      
      private var var_2350:int;
      
      private var _respectLeft:int;
      
      private var var_662:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_598 = param1.readString();
         this.var_843 = param1.readString();
         this.var_2581 = param1.readString();
         this.var_1610 = param1.readString();
         this.var_2583 = param1.readInteger();
         this.var_2584 = param1.readString();
         this.var_2580 = param1.readInteger();
         this.var_2582 = param1.readInteger();
         this.var_2350 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_662 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get sex() : String
      {
         return this.var_843;
      }
      
      public function get customData() : String
      {
         return this.var_2581;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
      
      public function get tickets() : int
      {
         return this.var_2583;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2584;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2580;
      }
      
      public function get directMail() : int
      {
         return this.var_2582;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2350;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_662;
      }
   }
}
