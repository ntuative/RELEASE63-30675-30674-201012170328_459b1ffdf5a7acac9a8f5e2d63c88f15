package com.sulake.habbo.session.handler
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.furniture.ViralFurniGiftReceivedEvent;
   import com.sulake.habbo.communication.messages.incoming.room.furniture.ViralFurniStatusEvent;
   import com.sulake.habbo.communication.messages.parser.room.furniture.ViralFurniGiftReceivedMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.furniture.ViralFurniStatusMessageParser;
   import com.sulake.habbo.session.IRoomHandlerListener;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.events.RoomSessionViralFurniStatusEvent;
   
   public class ViralFurniHandler extends BaseHandler
   {
       
      
      public function ViralFurniHandler(param1:IConnection, param2:IRoomHandlerListener)
      {
         super(param1,param2);
         if(param1 == null)
         {
            return;
         }
         param1.addMessageEvent(new ViralFurniStatusEvent(this.onViralFurniStatus));
         param1.addMessageEvent(new ViralFurniGiftReceivedEvent(this.onViralGiftReceived));
      }
      
      private function onViralFurniStatus(param1:IMessageEvent) : void
      {
         var _loc2_:ViralFurniStatusEvent = param1 as ViralFurniStatusEvent;
         if(_loc2_ == null || _loc2_.getParser() == null)
         {
            return;
         }
         var _loc3_:ViralFurniStatusMessageParser = _loc2_.getParser();
         var _loc4_:int = _loc3_.roomId;
         var _loc5_:int = _loc3_.roomCategory;
         var _loc6_:IRoomSession = listener.getSession(_xxxRoomId,_xxxRoomCategory);
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:RoomSessionViralFurniStatusEvent = new RoomSessionViralFurniStatusEvent(RoomSessionViralFurniStatusEvent.const_498,_loc6_);
         _loc7_.objectId = _loc3_.objectId;
         _loc7_.status = _loc3_.status;
         _loc7_.shareId = _loc3_.shareId;
         _loc7_.firstClickUserName = _loc3_.firstClickUserName;
         if(listener && false)
         {
            listener.events.dispatchEvent(_loc7_);
         }
      }
      
      private function onViralGiftReceived(param1:IMessageEvent) : void
      {
         var _loc2_:ViralFurniGiftReceivedEvent = param1 as ViralFurniGiftReceivedEvent;
         if(_loc2_ == null || _loc2_.getParser() == null)
         {
            return;
         }
         var _loc3_:ViralFurniGiftReceivedMessageParser = _loc2_.getParser();
         var _loc4_:int = _loc3_.roomId;
         var _loc5_:int = _loc3_.roomCategory;
         var _loc6_:IRoomSession = listener.getSession(_xxxRoomId,_xxxRoomCategory);
         if(_loc6_ == null)
         {
            return;
         }
         var _loc7_:RoomSessionViralFurniStatusEvent = new RoomSessionViralFurniStatusEvent(RoomSessionViralFurniStatusEvent.const_513,_loc6_);
         _loc7_.firstClickUserName = _loc3_.firstClickUserName;
         if(listener && false)
         {
            listener.events.dispatchEvent(_loc7_);
         }
      }
   }
}
