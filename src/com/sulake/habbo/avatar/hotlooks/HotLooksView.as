package com.sulake.habbo.avatar.hotlooks
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemGridWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.common.IAvatarEditorCategoryView;
   import com.sulake.habbo.avatar.wardrobe.Outfit;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.Event;
   
   public class HotLooksView implements IAvatarEditorCategoryView
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _window:IWindowContainer;
      
      private var var_63:HotLooksModel;
      
      private var var_545:IItemGridWindow;
      
      public function HotLooksView(param1:HotLooksModel, param2:IHabboWindowManager, param3:IAssetLibrary)
      {
         super();
         this.var_63 = param1;
         this._assetLibrary = param3;
         this._windowManager = param2;
      }
      
      public function init() : void
      {
         if(this.var_545)
         {
            this.var_545.removeGridItems();
         }
         if(this._window)
         {
            this._window.dispose();
         }
         var _loc1_:XmlAsset = this._assetLibrary.getAssetByName("avatareditor_hotlooks_base") as XmlAsset;
         this._window = IWindowContainer(this._windowManager.buildFromXML(_loc1_.content as XML));
         this.var_545 = this._window.findChildByName("hotlooks") as IItemGridWindow;
         this._window.visible = false;
         this.update();
      }
      
      public function dispose() : void
      {
         while(this.var_545.numGridItems > 0)
         {
            this.var_545.removeGridItemAt(0);
         }
         this._window.dispose();
         this._window = null;
         this.var_63 = null;
         this._assetLibrary = null;
         this._windowManager = null;
      }
      
      public function update() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         this.var_545.removeGridItems();
         for each(_loc2_ in this.var_63.hotLooks)
         {
            _loc1_ = _loc2_.view.window;
            this.var_545.addGridItem(_loc1_);
            _loc1_.procedure = this.hotLooksEventProc;
         }
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return this._window;
      }
      
      private function hotLooksEventProc(param1:Event, param2:IWindow = null) : void
      {
         var _loc3_:int = 0;
         if(param2 == null)
         {
            param2 = param1.target as IWindow;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            _loc3_ = this.var_545.getGridItemIndex(param2.parent);
            this.var_63.selectHotLook(_loc3_);
         }
      }
      
      public function switchCategory(param1:String) : void
      {
      }
      
      public function showPalettes(param1:String, param2:int) : void
      {
      }
      
      public function reset() : void
      {
      }
   }
}
