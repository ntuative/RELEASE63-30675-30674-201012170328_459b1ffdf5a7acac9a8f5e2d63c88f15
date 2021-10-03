package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitsData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_104:Array;
      
      public function RoomVisitsData(param1:IMessageDataWrapper)
      {
         this.var_104 = new Array();
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_104.push(new RoomVisitData(param1));
            _loc3_++;
         }
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get rooms() : Array
      {
         return this.var_104;
      }
   }
}
