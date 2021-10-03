package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2033:int;
      
      private var var_1721:String;
      
      private var var_2299:String;
      
      private var var_2296:Boolean;
      
      private var var_2298:Boolean;
      
      private var var_2294:int;
      
      private var var_2295:String;
      
      private var var_2297:String;
      
      private var var_1610:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2033 = param1.readInteger();
         this.var_1721 = param1.readString();
         this.var_2299 = param1.readString();
         this.var_2296 = param1.readBoolean();
         this.var_2298 = param1.readBoolean();
         param1.readString();
         this.var_2294 = param1.readInteger();
         this.var_2295 = param1.readString();
         this.var_2297 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2033;
      }
      
      public function get avatarName() : String
      {
         return this.var_1721;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2299;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2296;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2298;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2294;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2295;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2297;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
