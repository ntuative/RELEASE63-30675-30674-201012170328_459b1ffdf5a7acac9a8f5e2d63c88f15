package com.sulake.habbo.widget.furniture.clothingchange
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetClothingChangeUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetClothingChangeMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public class ClothingChangeFurnitureWidget extends RoomWidgetBase
   {
      
      private static const const_822:String = "Boy";
      
      private static const const_821:String = "Girl";
       
      
      private var _window:IWindowContainer;
      
      private var var_629:IWindowContainer;
      
      private var var_293:int = 0;
      
      private var var_1942:int = 0;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      public function ClothingChangeFurnitureWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         this.hideGenderSelectionInterface();
         this.hideEditorInterface();
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_364,this.onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_991,this.onUpdate);
         param1.addEventListener(RoomWidgetClothingChangeUpdateEvent.const_355,this.onUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_364,this.onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_991,this.onUpdate);
         param1.removeEventListener(RoomWidgetClothingChangeUpdateEvent.const_355,this.onUpdate);
      }
      
      private function onUpdate(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetClothingChangeUpdateEvent.const_364:
               this.showGenderSelectionInterface(param1);
               break;
            case RoomWidgetClothingChangeUpdateEvent.const_355:
               this.hideEditorInterface();
         }
      }
      
      private function showGenderSelectionInterface(param1:RoomWidgetClothingChangeUpdateEvent) : void
      {
         this.hideGenderSelectionInterface();
         this.var_293 = param1.objectId;
         this.var_1942 = param1.objectCategory;
         this._roomId = param1.roomId;
         this._roomCategory = param1.roomCategory;
         var _loc2_:IAsset = assets.getAssetByName("boygirl");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         if(_loc3_ == null)
         {
            return;
         }
         this._window = windowManager.createWindow("clothing change gender selection","",HabboWindowType.const_56,HabboWindowStyle.const_37,0 | 0 | 0 | 0,new Rectangle(100,100,200,200),null,0) as IWindowContainer;
         this._window.buildFromXML(XML(_loc3_.content));
         this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onGenderSelectionMouseEvent);
         this._window.center();
         var _loc4_:IWindow = this._window.findChildByTag("close");
         if(_loc4_ != null)
         {
            _loc4_.procedure = this.onGenderSelectionWindowClose;
         }
         _loc4_ = this._window.findChildByName(const_822);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onGenderSelectionMouseEvent);
         }
         _loc4_ = this._window.findChildByName(const_821);
         if(_loc4_ != null)
         {
            _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onGenderSelectionMouseEvent);
         }
      }
      
      private function hideGenderSelectionInterface() : void
      {
         if(this._window != null)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      private function hideEditorInterface() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this.var_629 != null)
         {
            _loc1_ = this.var_629 as IFrameWindow;
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.content;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
            }
            this.var_629.dispose();
            this.var_629 = null;
         }
      }
      
      private function onGenderSelectionWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideGenderSelectionInterface();
      }
      
      private function onGenderSelectionMouseEvent(param1:WindowMouseEvent) : void
      {
         var _loc2_:IWindow = param1.target as IWindow;
         var _loc3_:String = _loc2_.name;
         switch(_loc3_)
         {
            case const_822:
               this.requestBoyEditor();
               this.hideGenderSelectionInterface();
               break;
            case const_821:
               this.requestGirlEditor();
               this.hideGenderSelectionInterface();
               break;
            case "close":
            case "close_btn":
               this.hideGenderSelectionInterface();
         }
      }
      
      private function requestBoyEditor() : void
      {
         this.requestEditor(FigureData.const_70);
      }
      
      private function requestGirlEditor() : void
      {
         this.requestEditor(FigureData.FEMALE);
      }
      
      private function requestEditor(param1:String) : void
      {
         this.hideEditorInterface();
         var _loc2_:IAsset = assets.getAssetByName("editor");
         var _loc3_:XmlAsset = XmlAsset(_loc2_);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:IFrameWindow = windowManager.buildFromXML(XML(_loc3_.content)) as IFrameWindow;
         var _loc5_:IWindowContainer = _loc4_.content;
         _loc5_.setParamFlag(HabboWindowParam.const_108,true);
         this.var_629 = _loc4_;
         this.var_629.offset(100,100);
         var _loc6_:IWindow = this.var_629.findChildByTag("close");
         if(_loc6_ != null)
         {
            _loc6_.procedure = this.onEditorWindowClose;
         }
         var _loc7_:* = null;
         _loc7_ = new RoomWidgetClothingChangeMessage(RoomWidgetClothingChangeMessage.const_374,param1,this.var_293,this.var_1942,this._roomId,this._roomCategory,_loc5_);
         messageListener.processWidgetMessage(_loc7_);
      }
      
      private function onEditorWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideEditorInterface();
      }
   }
}
