package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1051:int = 1;
      
      public static const const_726:int = 2;
      
      public static const const_754:int = 3;
      
      public static const const_1342:int = 4;
       
      
      private var _index:int;
      
      private var var_2058:String;
      
      private var var_2055:String;
      
      private var var_2059:Boolean;
      
      private var var_2057:String;
      
      private var var_887:String;
      
      private var var_2060:int;
      
      private var var_1953:int;
      
      private var _type:int;
      
      private var var_2056:String;
      
      private var var_793:GuestRoomData;
      
      private var var_792:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2058 = param1.readString();
         this.var_2055 = param1.readString();
         this.var_2059 = param1.readInteger() == 1;
         this.var_2057 = param1.readString();
         this.var_887 = param1.readString();
         this.var_2060 = param1.readInteger();
         this.var_1953 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1051)
         {
            this.var_2056 = param1.readString();
         }
         else if(this._type == const_754)
         {
            this.var_792 = new PublicRoomData(param1);
         }
         else if(this._type == const_726)
         {
            this.var_793 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_793 != null)
         {
            this.var_793.dispose();
            this.var_793 = null;
         }
         if(this.var_792 != null)
         {
            this.var_792.dispose();
            this.var_792 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2058;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2055;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2059;
      }
      
      public function get picText() : String
      {
         return this.var_2057;
      }
      
      public function get picRef() : String
      {
         return this.var_887;
      }
      
      public function get folderId() : int
      {
         return this.var_2060;
      }
      
      public function get tag() : String
      {
         return this.var_2056;
      }
      
      public function get userCount() : int
      {
         return this.var_1953;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_793;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_792;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1051)
         {
            return 0;
         }
         if(this.type == const_726)
         {
            return this.var_793.maxUserCount;
         }
         if(this.type == const_754)
         {
            return this.var_792.maxUsers;
         }
         return 0;
      }
   }
}
