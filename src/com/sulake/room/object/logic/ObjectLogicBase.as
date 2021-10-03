package com.sulake.room.object.logic
{
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.events.IEventDispatcher;
   
   public class ObjectLogicBase implements IRoomObjectEventHandler
   {
       
      
      private var _events:IEventDispatcher;
      
      private var var_302:IRoomObjectController;
      
      public function ObjectLogicBase()
      {
         super();
      }
      
      public function get eventDispatcher() : IEventDispatcher
      {
         return this._events;
      }
      
      public function set eventDispatcher(param1:IEventDispatcher) : void
      {
         this._events = param1;
      }
      
      public function dispose() : void
      {
         this.var_302 = null;
      }
      
      public function set object(param1:IRoomObjectController) : void
      {
         if(this.var_302 == param1)
         {
            return;
         }
         if(this.var_302 != null)
         {
            this.var_302.setEventHandler(null);
         }
         if(param1 == null)
         {
            this.dispose();
            this.var_302 = null;
         }
         else
         {
            this.var_302 = param1;
            this.var_302.setEventHandler(this);
         }
      }
      
      public function get object() : IRoomObjectController
      {
         return this.var_302;
      }
      
      public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
      }
      
      public function initialize(param1:XML) : void
      {
      }
      
      public function update(param1:int) : void
      {
      }
      
      public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         if(param1 != null)
         {
            if(this.var_302 != null)
            {
               this.var_302.setLocation(param1.loc);
               this.var_302.setDirection(param1.dir);
            }
         }
      }
   }
}
