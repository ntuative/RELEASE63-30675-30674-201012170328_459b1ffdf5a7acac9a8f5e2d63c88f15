package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1743:int = 1;
      
      public static const const_1767:int = 2;
      
      public static const const_1703:int = 3;
      
      public static const const_1660:int = 4;
      
      public static const const_1470:int = 5;
      
      public static const const_1714:int = 6;
      
      public static const const_1362:int = 7;
      
      public static const const_1408:int = 8;
      
      public static const const_1580:int = 9;
      
      public static const const_1394:int = 10;
      
      public static const const_1490:int = 11;
      
      public static const const_1516:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1483:int;
      
      private var var_1359:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1483 = param1.readInteger();
         this.var_1359 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1483;
      }
      
      public function get info() : String
      {
         return this.var_1359;
      }
   }
}
