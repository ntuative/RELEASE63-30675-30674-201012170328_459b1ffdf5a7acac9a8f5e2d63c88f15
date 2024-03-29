package com.sulake.habbo.navigator.domain
{
   import com.sulake.core.window.components.ITabButtonWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.ITabPageDecorator;
   
   public class Tab
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _defaultSearchType:int;
      
      private var _button:ITabButtonWindow;
      
      private var var_2112:ITabPageDecorator;
      
      private var var_184:Boolean;
      
      private var var_1525:int;
      
      public function Tab(param1:HabboNavigator, param2:int, param3:int, param4:ITabPageDecorator, param5:int = 1)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._defaultSearchType = param3;
         this.var_2112 = param4;
         this.var_1525 = param5;
      }
      
      public function sendSearchRequest() : void
      {
         this._navigator.mainViewCtrl.startSearch(this._id,this._defaultSearchType,"-1",this.var_1525);
      }
      
      public function set selected(param1:Boolean) : void
      {
         this.var_184 = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get defaultSearchType() : int
      {
         return this._defaultSearchType;
      }
      
      public function get selected() : Boolean
      {
         return this.var_184;
      }
      
      public function get tabPageDecorator() : ITabPageDecorator
      {
         return this.var_2112;
      }
      
      public function get searchMsg() : int
      {
         return this.var_1525;
      }
      
      public function get button() : ITabButtonWindow
      {
         return this._button;
      }
      
      public function set button(param1:ITabButtonWindow) : void
      {
         this._button = param1;
      }
   }
}
