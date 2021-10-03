package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_874:int;
      
      private var var_700:Boolean;
      
      private var var_1609:Boolean;
      
      private var var_598:String;
      
      private var var_1408:int;
      
      private var var_1612:String;
      
      private var var_1611:String;
      
      private var var_1610:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_874 = param1.readInteger();
         this.var_700 = param1.readBoolean();
         this.var_1609 = param1.readBoolean();
         this.var_598 = param1.readString();
         this.var_1408 = param1.readInteger();
         this.var_1612 = param1.readString();
         this.var_1611 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_874;
      }
      
      public function get online() : Boolean
      {
         return this.var_700;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1609;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function get categoryId() : int
      {
         return this.var_1408;
      }
      
      public function get motto() : String
      {
         return this.var_1612;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1611;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
