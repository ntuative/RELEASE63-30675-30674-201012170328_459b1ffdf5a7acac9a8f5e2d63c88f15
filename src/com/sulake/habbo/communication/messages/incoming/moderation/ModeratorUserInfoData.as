package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2561:int;
      
      private var var_2559:int;
      
      private var var_700:Boolean;
      
      private var var_2560:int;
      
      private var var_2558:int;
      
      private var var_2557:int;
      
      private var var_2562:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2561 = param1.readInteger();
         this.var_2559 = param1.readInteger();
         this.var_700 = param1.readBoolean();
         this.var_2560 = param1.readInteger();
         this.var_2558 = param1.readInteger();
         this.var_2557 = param1.readInteger();
         this.var_2562 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2561;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2559;
      }
      
      public function get online() : Boolean
      {
         return this.var_700;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2560;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2558;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2557;
      }
      
      public function get banCount() : int
      {
         return this.var_2562;
      }
   }
}
