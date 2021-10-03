package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1650:int = 1;
      
      public static const const_1426:int = 2;
       
      
      private var var_841:String;
      
      private var var_2287:int;
      
      private var var_2291:int;
      
      private var var_2292:int;
      
      private var var_2289:int;
      
      private var var_2286:Boolean;
      
      private var var_1993:Boolean;
      
      private var var_1995:int;
      
      private var var_1994:int;
      
      private var var_2293:Boolean;
      
      private var var_2288:int;
      
      private var var_2290:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_841 = param1.readString();
         this.var_2287 = param1.readInteger();
         this.var_2291 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_2289 = param1.readInteger();
         this.var_2286 = param1.readBoolean();
         this.var_1993 = param1.readBoolean();
         this.var_1995 = param1.readInteger();
         this.var_1994 = param1.readInteger();
         this.var_2293 = param1.readBoolean();
         this.var_2288 = param1.readInteger();
         this.var_2290 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_841;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2287;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2291;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2292;
      }
      
      public function get responseType() : int
      {
         return this.var_2289;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2286;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1993;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1995;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1994;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2293;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2288;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2290;
      }
   }
}
