package com.sulake.habbo.inventory.items
{
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.habbo.inventory.enum.FurniCategory;
   import com.sulake.habbo.inventory.furni.FurniModel;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.ImageResult;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class GroupItem implements IGetImageListener
   {
       
      
      protected var _type:int;
      
      protected var _items:Map;
      
      protected var _window:IWindowContainer;
      
      protected var _roomEngine:IRoomEngine;
      
      protected var var_904:Boolean;
      
      protected var var_184:Boolean;
      
      protected var _mainCategory:String;
      
      protected var _category:int;
      
      protected var var_1894:String;
      
      protected var var_1231:Number;
      
      protected var var_765:int = 0;
      
      protected var var_623:BitmapData;
      
      protected var var_2322:int;
      
      protected var var_1424:Boolean;
      
      protected var var_1895:Boolean;
      
      protected var var_2632:BitmapData;
      
      private const const_1824:int = 8947848;
      
      private const const_1825:int = 13421772;
      
      private const const_1556:Number = 1;
      
      private const const_1555:Number = 0.2;
      
      public function GroupItem(param1:int, param2:String, param3:int, param4:IWindowContainer, param5:IRoomEngine, param6:BitmapData, param7:Boolean, param8:String = null, param9:Number = NaN, param10:BitmapData = null, param11:Boolean = false)
      {
         super();
         this._type = param1;
         this._window = param4;
         this._roomEngine = param5;
         this.var_2632 = param6;
         this.var_1895 = param7;
         this._items = new Map();
         this._mainCategory = param2;
         this._category = param3;
         this.var_1894 = param8;
         this.var_1231 = param9;
         if(param10 != null)
         {
            this.setFinalImage(param10);
         }
         else if(!param11)
         {
            this.initImage();
         }
      }
      
      private function setFinalImage(param1:BitmapData) : void
      {
         this.var_623 = param1;
         this.var_1424 = true;
         this.var_765 = -1;
         this.updateThumbData();
      }
      
      private function setLoadingImage(param1:BitmapData) : void
      {
         this.var_623 = param1;
         this.var_1424 = true;
         this.updateThumbData();
      }
      
      public function initImage() : void
      {
         var _loc1_:* = null;
         if(this.var_623 != null)
         {
            return;
         }
         if(this._mainCategory == FurniModel.const_40)
         {
            _loc1_ = this._roomEngine.getFurnitureIcon(this._type,this,String(this.var_1231));
         }
         else
         {
            _loc1_ = this._roomEngine.getWallItemIcon(this._type,this,this.var_1894);
         }
         if(_loc1_.id > 0)
         {
            this.setLoadingImage(_loc1_.data);
            this.var_765 = _loc1_.id;
         }
         else
         {
            this.setFinalImage(_loc1_.data);
            this.var_765 = -1;
         }
         this.var_1424 = true;
      }
      
      public function get isImageInited() : Boolean
      {
         return this.var_1424;
      }
      
      public function get isImageFinished() : Boolean
      {
         return this.var_765 == -1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         if(this.var_184 != param1)
         {
            this.var_184 = param1;
            this.updateThumbData();
         }
      }
      
      public function get window() : IWindowContainer
      {
         if(this._window == null)
         {
            return null;
         }
         if(this._window.disposed)
         {
            return null;
         }
         return this._window;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this.var_904 = param1;
      }
      
      public function get isLocked() : Boolean
      {
         return this.var_904;
      }
      
      public function get isSelected() : Boolean
      {
         return this.var_184;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get iconImage() : BitmapData
      {
         return this.var_623;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         this.var_623 = param1;
      }
      
      public function get iconCallbackId() : int
      {
         return this.var_765;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         this.var_765 = param1;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2322;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1894;
      }
      
      public function get extra() : Number
      {
         return this.var_1231;
      }
      
      public function set showRecyclable(param1:Boolean) : void
      {
         this.var_1895 = param1;
         this.updateThumbData();
      }
      
      public function push(param1:IItem) : void
      {
         var _loc2_:IItem = this._items.getValue(param1.id);
         if(_loc2_ == null)
         {
            this._items.add(param1.id,param1);
         }
         else
         {
            _loc2_.locked = false;
         }
         this.updateThumbData();
      }
      
      public function unshift(param1:IItem) : void
      {
         var _loc2_:IItem = this._items.getValue(param1.id);
         if(_loc2_ == null)
         {
            this._items.unshift(param1.id,param1);
         }
         else
         {
            _loc2_.locked = false;
         }
         this.updateThumbData();
      }
      
      public function pop() : IItem
      {
         var _loc1_:* = null;
         if(this._items.length > 0)
         {
            _loc1_ = this._items.getWithIndex(this._items.length - 1) as IItem;
            this._items.remove(_loc1_.id);
         }
         this.updateThumbData();
         return _loc1_;
      }
      
      public function peek() : IItem
      {
         var _loc1_:* = null;
         if(this._items.length > 0)
         {
            _loc1_ = this._items.getWithIndex(this._items.length - 1) as IItem;
         }
         return _loc1_;
      }
      
      public function getAt(param1:int) : IItem
      {
         return this._items.getWithIndex(param1);
      }
      
      public function getOneForTrade() : IItem
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this._items.length)
         {
            _loc2_ = this._items.getWithIndex(_loc1_);
            if(!_loc2_.locked && _loc2_.tradeable)
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      public function getOneForRecycle() : IItem
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this._items.length)
         {
            _loc2_ = this._items.getWithIndex(_loc1_);
            if(!_loc2_.locked && _loc2_.recyclable)
            {
               this.addLockTo(_loc2_.id);
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      public function getOneForSelling() : IItem
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ < this._items.length)
         {
            _loc2_ = this._items.getWithIndex(_loc1_);
            if(!_loc2_.locked && _loc2_.sellable)
            {
               return _loc2_;
            }
            _loc1_++;
         }
         return null;
      }
      
      public function addLockTo(param1:int) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._items.length)
         {
            _loc3_ = this._items.getWithIndex(_loc2_);
            if(_loc3_.id == param1)
            {
               _loc3_.locked = true;
               this.updateThumbData();
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function addLocksFromData(param1:Array) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = this._items.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this._items.getWithIndex(_loc2_);
            if(param1.indexOf(_loc3_.ref) >= 0)
            {
               _loc3_.locked = true;
            }
            else
            {
               _loc3_.locked = false;
            }
            _loc2_--;
         }
         this.updateThumbData();
      }
      
      public function removeLockFrom(param1:int) : Boolean
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._items.length)
         {
            _loc3_ = this._items.getWithIndex(_loc2_);
            if(_loc3_.id == param1)
            {
               _loc3_.locked = false;
               this.updateThumbData();
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function removeAllLocks() : void
      {
         var _loc2_:* = null;
         var _loc1_:int = this._items.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this._items.getWithIndex(_loc1_);
            _loc2_.locked = false;
            _loc1_--;
         }
         this.updateThumbData();
      }
      
      public function getTotalCount() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(this.category == FurniCategory.const_789)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this._items.length)
            {
               _loc3_ = this._items.getWithIndex(_loc2_) as IItem;
               _loc1_ += int(_loc3_.stuffData);
               _loc2_++;
            }
            return _loc1_;
         }
         return this._items.length;
      }
      
      public function getRecyclableCount() : int
      {
         var _loc3_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._items.length)
         {
            _loc3_ = this._items.getWithIndex(_loc2_) as IItem;
            if(_loc3_.recyclable && !_loc3_.locked)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function getTradeableCount() : int
      {
         var _loc3_:* = null;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this._items.length)
         {
            _loc3_ = this._items.getWithIndex(_loc2_) as IItem;
            if(_loc3_.tradeable && !_loc3_.locked)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function remove(param1:int) : IItem
      {
         var _loc2_:IItem = this._items.getValue(param1);
         if(_loc2_)
         {
            this._items.remove(param1);
            this.updateThumbData();
            return _loc2_;
         }
         return null;
      }
      
      public function getItem(param1:int) : IItem
      {
         return this._items.getValue(param1);
      }
      
      public function replaceItem(param1:int, param2:IItem) : void
      {
         this._items.add(param1,param2);
         this.updateThumbData();
      }
      
      public function getUnlockedCount() : int
      {
         var _loc1_:* = null;
         if(this.category == FurniCategory.const_789)
         {
            return this.getTotalCount();
         }
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc1_ = this._items.getWithIndex(_loc3_);
            if(!_loc1_.locked)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function updateThumbData() : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(this._window == null)
         {
            return;
         }
         if(this._window.disposed)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         var _loc2_:int = this.getUnlockedCount();
         if(_loc1_)
         {
            if(this.var_623 != null)
            {
               _loc6_ = this.var_623;
               _loc7_ = !!_loc1_.bitmap ? _loc1_.bitmap : new BitmapData(_loc1_.width,_loc1_.height);
               _loc7_.fillRect(_loc7_.rect,0);
               _loc7_.copyPixels(_loc6_,_loc6_.rect,new Point(_loc7_.width / 2 - _loc6_.width / 2,_loc7_.height / 2 - _loc6_.height / 2));
               _loc1_.bitmap = _loc7_;
            }
            if(_loc2_ <= 0)
            {
               this._window.blend = this.const_1555;
               _loc1_.blend = this.const_1555;
            }
            else
            {
               this._window.blend = this.const_1556;
               _loc1_.blend = this.const_1556;
            }
         }
         if(this.isSelected)
         {
            this._window.color = this.const_1824;
         }
         else
         {
            this._window.color = this.const_1825;
         }
         var _loc3_:IWindow = this._window.findChildByName("number_container");
         var _loc4_:ITextWindow = this._window.findChildByName("number") as ITextWindow;
         if(_loc3_)
         {
            _loc3_.visible = _loc2_ > 1;
         }
         if(_loc4_)
         {
            _loc4_.text = String(_loc2_);
         }
         var _loc5_:IBitmapWrapperWindow = this._window.findChildByName("recyclable_container") as IBitmapWrapperWindow;
         if(_loc5_)
         {
            if(this.var_1895 && this.getRecyclableCount() > 0)
            {
               _loc5_.bitmap = this.var_2632;
               _loc5_.visible = true;
            }
            else
            {
               _loc5_.visible = false;
            }
         }
         this._window.invalidate();
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         if(this.var_765 != param1)
         {
            return;
         }
         this.var_623 = param2;
         this.updateThumbData();
      }
   }
}
