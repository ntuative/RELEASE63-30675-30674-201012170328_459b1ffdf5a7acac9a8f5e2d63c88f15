package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2247:String;
      
      private var var_2375:int;
      
      private var var_2207:int;
      
      private var var_2455:String;
      
      private var var_2503:int;
      
      private var var_1638:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2247 = param1.readString();
         this.var_2375 = param1.readInteger();
         this.var_2207 = param1.readInteger();
         this.var_2455 = param1.readString();
         this.var_2503 = param1.readInteger();
         this.var_1638 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2247;
      }
      
      public function get unitPort() : int
      {
         return this.var_2375;
      }
      
      public function get worldId() : int
      {
         return this.var_2207;
      }
      
      public function get castLibs() : String
      {
         return this.var_2455;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2503;
      }
      
      public function get nodeId() : int
      {
         return this.var_1638;
      }
   }
}
