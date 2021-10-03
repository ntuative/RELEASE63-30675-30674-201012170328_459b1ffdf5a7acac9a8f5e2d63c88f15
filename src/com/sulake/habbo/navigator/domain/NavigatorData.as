package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1562:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_183:MsgWithRequestId;
      
      private var var_580:RoomEventData;
      
      private var var_2361:Boolean;
      
      private var var_2357:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2033:int;
      
      private var var_237:GuestRoomData;
      
      private var var_842:PublicRoomShortData;
      
      private var var_2353:int;
      
      private var var_2355:Boolean;
      
      private var var_2359:int;
      
      private var var_2354:Boolean;
      
      private var var_1702:int;
      
      private var var_2358:Boolean;
      
      private var var_1202:Array;
      
      private var var_1316:Array;
      
      private var var_2352:int;
      
      private var var_1315:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1068:Boolean;
      
      private var var_2360:int;
      
      private var var_2356:Boolean;
      
      private var var_2362:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1202 = new Array();
         this.var_1316 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_237 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_237 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_842 = null;
         this.var_237 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_842 = param1.publicSpace;
            this.var_580 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_580 != null)
         {
            this.var_580.dispose();
            this.var_580 = null;
         }
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
         if(this.var_237 != null)
         {
            this.var_237.dispose();
            this.var_237 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_237 != null)
         {
            this.var_237.dispose();
         }
         this.var_237 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_580 != null)
         {
            this.var_580.dispose();
         }
         this.var_580 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_183 != null && this.var_183 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_183 != null && this.var_183 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_183 != null && this.var_183 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_183 = param1;
         this.var_1068 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_183 = param1;
         this.var_1068 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_183 = param1;
         this.var_1068 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_183 == null)
         {
            return;
         }
         this.var_183.dispose();
         this.var_183 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_183 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_183 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_183 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_580;
      }
      
      public function get avatarId() : int
      {
         return this.var_2033;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2361;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2357;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_237;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_842;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2355;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2359;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1702;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2354;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2360;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2353;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2358;
      }
      
      public function get adIndex() : int
      {
         return this.var_2362;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2356;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2033 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2359 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2355 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2357 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2354 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1702 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2360 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2353 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2358 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2362 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2356 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1202 = param1;
         this.var_1316 = new Array();
         for each(_loc2_ in this.var_1202)
         {
            if(_loc2_.visible)
            {
               this.var_1316.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1202;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1316;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2352 = param1.limit;
         this.var_1315 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1315 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_237.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_237 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_237.flatId;
         return this.var_1702 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1315 >= this.var_2352;
      }
      
      public function startLoading() : void
      {
         this.var_1068 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1068;
      }
   }
}
