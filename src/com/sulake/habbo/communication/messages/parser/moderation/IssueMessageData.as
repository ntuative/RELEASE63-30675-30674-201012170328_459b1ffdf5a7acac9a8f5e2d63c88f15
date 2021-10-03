package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_157:int = 1;
      
      public static const const_346:int = 2;
      
      public static const const_1315:int = 3;
       
      
      private var var_2020:int;
      
      private var _state:int;
      
      private var var_1408:int;
      
      private var var_2373:int;
      
      private var var_1593:int;
      
      private var var_2379:int;
      
      private var var_2378:int = 0;
      
      private var var_2374:int;
      
      private var var_2380:String;
      
      private var var_1239:int;
      
      private var var_1526:String;
      
      private var var_1948:int;
      
      private var var_2371:String;
      
      private var _message:String;
      
      private var var_2376:int;
      
      private var var_852:String;
      
      private var var_1725:int;
      
      private var var_2372:String;
      
      private var var_331:int;
      
      private var var_2377:String;
      
      private var var_2364:String;
      
      private var var_2375:int;
      
      private var var_2207:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2020;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1408;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2373;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1593;
      }
      
      public function get priority() : int
      {
         return this.var_2379 + this.var_2378;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2374;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2380;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1239;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1526;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_1948;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2371;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2376;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get roomType() : int
      {
         return this.var_1725;
      }
      
      public function get flatType() : String
      {
         return this.var_2372;
      }
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2377;
      }
      
      public function get roomResources() : String
      {
         return this.var_2364;
      }
      
      public function get unitPort() : int
      {
         return this.var_2375;
      }
      
      public function get worldId() : int
      {
         return this.var_2207;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2020 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1408 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2373 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1593 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2378 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2374 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2380 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1239 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1526 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_1948 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2371 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_2376 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_852 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1725 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2372 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_331 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2377 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2364 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2375 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2207 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1593) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
