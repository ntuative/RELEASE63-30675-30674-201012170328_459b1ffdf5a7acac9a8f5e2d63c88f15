package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1083:String = "M";
      
      public static const const_1266:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_250:int = 0;
      
      private var _name:String = "";
      
      private var var_2409:int = 0;
      
      private var var_843:String = "";
      
      private var var_598:String = "";
      
      private var var_2125:String = "";
      
      private var var_1963:int;
      
      private var var_2012:int = 0;
      
      private var var_2124:String = "";
      
      private var var_2123:int = 0;
      
      private var var_2016:int = 0;
      
      private var var_2410:String = "";
      
      private var var_164:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_164 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_2409;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2409 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_843;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_843 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_598;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_598 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2125;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2125 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1963;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_1963 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2012;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2012 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2124;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2124 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2123;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2123 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2016;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_164)
         {
            this.var_2016 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2410;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_164)
         {
            this.var_2410 = param1;
         }
      }
   }
}
