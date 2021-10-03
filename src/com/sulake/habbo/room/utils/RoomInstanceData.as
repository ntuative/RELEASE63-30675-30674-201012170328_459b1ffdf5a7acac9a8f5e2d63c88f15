package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_648:TileHeightMap = null;
      
      private var var_974:LegacyWallGeometry = null;
      
      private var var_973:RoomCamera = null;
      
      private var var_646:SelectedRoomObjectData = null;
      
      private var var_647:SelectedRoomObjectData = null;
      
      private var var_2054:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_974 = new LegacyWallGeometry();
         this.var_973 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_648;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_648 != null)
         {
            this.var_648.dispose();
         }
         this.var_648 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_974;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_973;
      }
      
      public function get worldType() : String
      {
         return this.var_2054;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_2054 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_646;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_646 != null)
         {
            this.var_646.dispose();
         }
         this.var_646 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_647;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_647 != null)
         {
            this.var_647.dispose();
         }
         this.var_647 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_648 != null)
         {
            this.var_648.dispose();
            this.var_648 = null;
         }
         if(this.var_974 != null)
         {
            this.var_974.dispose();
            this.var_974 = null;
         }
         if(this.var_973 != null)
         {
            this.var_973.dispose();
            this.var_973 = null;
         }
         if(this.var_646 != null)
         {
            this.var_646.dispose();
            this.var_646 = null;
         }
         if(this.var_647 != null)
         {
            this.var_647.dispose();
            this.var_647 = null;
         }
      }
   }
}
