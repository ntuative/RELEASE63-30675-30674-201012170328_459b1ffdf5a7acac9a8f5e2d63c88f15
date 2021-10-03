package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_331:int;
      
      private var var_1953:int;
      
      private var var_2420:Boolean;
      
      private var var_1922:int;
      
      private var _ownerName:String;
      
      private var var_111:RoomData;
      
      private var var_702:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_331 = param1.readInteger();
         this.var_1953 = param1.readInteger();
         this.var_2420 = param1.readBoolean();
         this.var_1922 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_111 = new RoomData(param1);
         this.var_702 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_111 != null)
         {
            this.var_111.dispose();
            this.var_111 = null;
         }
         if(this.var_702 != null)
         {
            this.var_702.dispose();
            this.var_702 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_331;
      }
      
      public function get userCount() : int
      {
         return this.var_1953;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2420;
      }
      
      public function get ownerId() : int
      {
         return this.var_1922;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_111;
      }
      
      public function get event() : RoomData
      {
         return this.var_702;
      }
   }
}
