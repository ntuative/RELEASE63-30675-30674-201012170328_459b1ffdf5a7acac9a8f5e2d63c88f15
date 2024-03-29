package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.quest.OpenQuestListMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDRoomEngine;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.display.BitmapData;
   import flash.net.URLRequest;
   import iid.IIDHabboWindowManager;
   
   public class HabboQuestEngine extends Component implements IHabboQuestEngine
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var _configuration:IHabboConfigurationManager;
      
      private var _incomingMessages:IncomingMessages;
      
      private var _controller:QuestController;
      
      private var _roomEngine:IRoomEngine;
      
      private var _toolbar:IHabboToolbar;
      
      private var _catalog:IHabboCatalog;
      
      private var var_393:ISessionDataManager;
      
      public function HabboQuestEngine(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this._controller = new QuestController(this);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationComponentInit);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(this._toolbar)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this._catalog != null)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this._windowManager != null)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._roomEngine != null)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this._configuration != null)
         {
            this._configuration.release(new IIDHabboConfigurationManager());
            this._configuration = null;
         }
         if(this._localization != null)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         if(this._communication != null)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this.var_393 != null)
         {
            this.var_393.release(new IIDSessionDataManager());
            this.var_393 = null;
         }
      }
      
      public function getXmlWindow(param1:String) : IWindow
      {
         var asset:IAsset = null;
         var xmlAsset:XmlAsset = null;
         var name:String = param1;
         var window:IWindow = null;
         try
         {
            asset = assets.getAssetByName(name);
            xmlAsset = XmlAsset(asset);
            window = this._windowManager.buildFromXML(XML(xmlAsset.content));
         }
         catch(e:Error)
         {
         }
         return window;
      }
      
      private function onCommunicationComponentInit(param1:IID = null, param2:IUnknown = null) : void
      {
         this._communication = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._roomEngine = param2 as IRoomEngine;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         return this._roomEngine;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._localization = IHabboLocalizationManager(param2);
      }
      
      private function onConfigurationReady(param1:IID, param2:IUnknown) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._configuration = param2 as IHabboConfigurationManager;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_393 = param2 as ISessionDataManager;
      }
      
      public function get communication() : IHabboCommunicationManager
      {
         return this._communication;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this._localization;
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this._configuration;
      }
      
      public function get controller() : QuestController
      {
         return this._controller;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this._toolbar;
      }
      
      public function openCatalog() : void
      {
         this._catalog.openCatalogPage(CatalogPageName.const_1343,true);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = IHabboToolbar(param2) as IHabboToolbar;
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_39,this.onHabboToolbarEvent);
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_39)
         {
            if(param1.iconId == HabboToolbarIconEnum.QUESTS)
            {
               this.onQuestsToolBarIconClick();
               return;
            }
         }
      }
      
      private function onQuestsToolBarIconClick() : void
      {
         var _loc1_:Boolean = this._controller.isVisible();
         if(_loc1_)
         {
            this._controller.close();
         }
         else
         {
            this._communication.getHabboMainConnection(null).send(new OpenQuestListMessageComposer());
         }
      }
      
      public function setImageFromAsset(param1:IBitmapWrapperWindow, param2:String, param3:Function) : void
      {
         if(!param2 || !assets)
         {
            return;
         }
         var _loc4_:BitmapDataAsset = assets.getAssetByName(param2) as BitmapDataAsset;
         if(_loc4_ == null)
         {
            this.retrievePreviewAsset(param2,param3);
            return;
         }
         if(param1)
         {
            QuestUtils.setElementImage(param1,_loc4_.content as BitmapData);
         }
      }
      
      private function retrievePreviewAsset(param1:String, param2:Function) : void
      {
         if(!param1 || !assets)
         {
            return;
         }
         var _loc3_:String = this._configuration.getKey("image.library.questing.url");
         var _loc4_:* = _loc3_ + param1 + ".png";
         Logger.log("[HabboQuestEngine] Retrieve Product Preview Asset: " + _loc4_);
         var _loc5_:URLRequest = new URLRequest(_loc4_);
         var _loc6_:AssetLoaderStruct = assets.loadAssetFromFile(param1,_loc5_,"image/png");
         if(!_loc6_)
         {
            return;
         }
         _loc6_.addEventListener(AssetLoaderEvent.const_30,param2);
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         if(!this._catalog)
         {
            return 0;
         }
         return this._catalog.getPurse().getActivityPointsForType(param1);
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_393;
      }
   }
}
