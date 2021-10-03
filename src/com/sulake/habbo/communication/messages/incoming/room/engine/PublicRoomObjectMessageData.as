package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_250:int = 0;
      
      private var var_481:int = 0;
      
      private var var_597:int = 0;
      
      private var var_164:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_164 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_164)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_164)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_164)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_158 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_157;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_164)
         {
            this.var_157 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_250;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_250 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_481;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_481 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_597;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_597 = param1;
         }
      }
   }
}
