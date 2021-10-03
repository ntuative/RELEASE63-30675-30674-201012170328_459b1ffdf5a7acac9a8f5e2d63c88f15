package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_459:int = 0;
      
      public static const const_175:int = 1;
      
      public static const const_103:int = 2;
      
      public static const const_732:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1629:String;
      
      private var var_1936:int;
      
      private var var_1408:int;
      
      private var var_1933:int;
      
      private var var_2525:int;
      
      private var var_769:Array;
      
      private var var_1932:Array;
      
      private var var_2524:int;
      
      private var var_1934:Boolean;
      
      private var var_1931:Boolean;
      
      private var var_1930:Boolean;
      
      private var var_1935:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_1934;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_1934 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_1931;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_1931 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_1930;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_1930 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_1935;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_1935 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1629;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1629 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_1936;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_1936 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1408;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1408 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_1933;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_1933 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2525;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2525 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_769;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_769 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_1932;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_1932 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2524;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2524 = param1;
      }
   }
}
