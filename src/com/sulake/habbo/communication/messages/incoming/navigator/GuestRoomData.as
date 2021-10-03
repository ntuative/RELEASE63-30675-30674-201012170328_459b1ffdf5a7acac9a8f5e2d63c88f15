package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_331:int;
      
      private var var_702:Boolean;
      
      private var var_852:String;
      
      private var _ownerName:String;
      
      private var var_1936:int;
      
      private var var_1953:int;
      
      private var var_2101:int;
      
      private var var_1629:String;
      
      private var var_2099:int;
      
      private var var_2100:Boolean;
      
      private var var_691:int;
      
      private var var_1408:int;
      
      private var var_2102:String;
      
      private var var_769:Array;
      
      private var var_2103:RoomThumbnailData;
      
      private var var_1934:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_769 = new Array();
         super();
         this.var_331 = param1.readInteger();
         this.var_702 = param1.readBoolean();
         this.var_852 = param1.readString();
         this._ownerName = param1.readString();
         this.var_1936 = param1.readInteger();
         this.var_1953 = param1.readInteger();
         this.var_2101 = param1.readInteger();
         this.var_1629 = param1.readString();
         this.var_2099 = param1.readInteger();
         this.var_2100 = param1.readBoolean();
         this.var_691 = param1.readInteger();
         this.var_1408 = param1.readInteger();
         this.var_2102 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_769.push(_loc4_);
            _loc3_++;
         }
         this.var_2103 = new RoomThumbnailData(param1);
         this.var_1934 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_769 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get event() : Boolean
      {
         return this.var_702;
      }
      
      public function get roomName() : String
      {
         return this.var_852;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_1936;
      }
      
      public function get userCount() : int
      {
         return this.var_1953;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2101;
      }
      
      public function get description() : String
      {
         return this.var_1629;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2099;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2100;
      }
      
      public function get score() : int
      {
         return this.var_691;
      }
      
      public function get categoryId() : int
      {
         return this.var_1408;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2102;
      }
      
      public function get tags() : Array
      {
         return this.var_769;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2103;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1934;
      }
   }
}
