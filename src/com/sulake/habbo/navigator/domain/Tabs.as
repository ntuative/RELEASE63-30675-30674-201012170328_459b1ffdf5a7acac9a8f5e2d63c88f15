package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_317:int = 1;
      
      public static const const_246:int = 2;
      
      public static const const_304:int = 3;
      
      public static const const_371:int = 4;
      
      public static const const_210:int = 5;
      
      public static const const_322:int = 1;
      
      public static const const_624:int = 2;
      
      public static const const_684:int = 3;
      
      public static const const_685:int = 4;
      
      public static const const_212:int = 5;
      
      public static const const_690:int = 6;
      
      public static const const_759:int = 7;
      
      public static const const_234:int = 8;
      
      public static const const_369:int = 9;
      
      public static const const_1590:int = 10;
      
      public static const const_756:int = 11;
      
      public static const const_521:int = 12;
       
      
      private var var_397:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_397 = new Array();
         this.var_397.push(new Tab(this._navigator,const_317,const_521,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_401));
         this.var_397.push(new Tab(this._navigator,const_246,const_322,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_401));
         this.var_397.push(new Tab(this._navigator,const_371,const_756,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1089));
         this.var_397.push(new Tab(this._navigator,const_304,const_212,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_401));
         this.var_397.push(new Tab(this._navigator,const_210,const_234,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_715));
         this.setSelectedTab(const_317);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_371;
      }
      
      public function get tabs() : Array
      {
         return this.var_397;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_397)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_397)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_397)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
