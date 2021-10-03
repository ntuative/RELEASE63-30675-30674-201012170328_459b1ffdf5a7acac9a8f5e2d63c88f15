package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_229:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_236:String = "RWUIUE_PEER";
      
      public static const const_1432:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_913:int = 2;
      
      public static const const_1067:int = 3;
      
      public static const const_1365:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1612:String = "";
      
      private var var_1963:int;
      
      private var var_2012:int = 0;
      
      private var var_2016:int = 0;
      
      private var var_598:String = "";
      
      private var var_39:BitmapData = null;
      
      private var var_219:Array;
      
      private var var_1401:int = 0;
      
      private var var_2013:String = "";
      
      private var var_2008:int = 0;
      
      private var var_2018:int = 0;
      
      private var var_1703:Boolean = false;
      
      private var var_1610:String = "";
      
      private var var_2009:Boolean = false;
      
      private var var_2015:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2011:Boolean = false;
      
      private var var_2014:Boolean = false;
      
      private var var_2010:Boolean = false;
      
      private var var_2007:Boolean = false;
      
      private var var_2019:Boolean = false;
      
      private var var_2017:Boolean = false;
      
      private var var_2006:int = 0;
      
      private var var_1705:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_219 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1612 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1612;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1963 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1963;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2012 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2012;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2016 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2016;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_598 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_39 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_39;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_219 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_219;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1401 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1401;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2013 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2013;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2009 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2009;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2011 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2011;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2014 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2014;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2010 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2010;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2007 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2007;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2019 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2019;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2017 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2017;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2006 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2006;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2015 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2015;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1705 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1705;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2008 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2008;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2018;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1703 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1703;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1610 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
