package com.sulake.habbo.widget.chooser
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.events.RoomWidgetChooserContentEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class FurniChooserWidget extends ChooserWidgetBase
   {
       
      
      private var var_530:ChooserView;
      
      public function FurniChooserWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.var_530 != null)
         {
            this.var_530.dispose();
            this.var_530 = null;
         }
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetChooserContentEvent.const_741,this.onChooserContent);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_118,this.onUpdateFurniChooser);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_772,this.onUpdateFurniChooser);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetChooserContentEvent.const_741,this.onChooserContent);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_118,this.onUpdateFurniChooser);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_772,this.onUpdateFurniChooser);
      }
      
      private function onChooserContent(param1:RoomWidgetChooserContentEvent) : void
      {
         if(param1 == null || param1.items == null)
         {
            return;
         }
         if(this.var_530 == null)
         {
            this.var_530 = new ChooserView(this,"${widget.chooser.furni.title}");
         }
         this.var_530.populate(param1.items,param1.isAnyRoomController);
      }
      
      private function onUpdateFurniChooser(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         if(this.var_530 == null || !this.var_530.isOpen())
         {
            return;
         }
         var _loc2_:RoomWidgetRequestWidgetMessage = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.REQUEST_FURNI_CHOOSER);
         messageListener.processWidgetMessage(_loc2_);
      }
   }
}
