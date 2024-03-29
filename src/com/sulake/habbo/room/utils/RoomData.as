package com.sulake.habbo.room.utils
{
   public class RoomData
   {
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var _data:XML;
      
      private var _floorType:String = null;
      
      private var var_1636:String = null;
      
      private var var_1635:String = null;
      
      public function RoomData(param1:int, param2:int, param3:XML)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this._data = param3;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get data() : XML
      {
         return this._data;
      }
      
      public function get floorType() : String
      {
         return this._floorType;
      }
      
      public function set floorType(param1:String) : void
      {
         this._floorType = param1;
      }
      
      public function get wallType() : String
      {
         return this.var_1636;
      }
      
      public function set wallType(param1:String) : void
      {
         this.var_1636 = param1;
      }
      
      public function get landscapeType() : String
      {
         return this.var_1635;
      }
      
      public function set landscapeType(param1:String) : void
      {
         this.var_1635 = param1;
      }
   }
}
