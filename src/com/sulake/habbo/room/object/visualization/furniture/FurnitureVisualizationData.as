package com.sulake.habbo.room.object.visualization.furniture
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.visualization.furniture.data.ColorData;
   import com.sulake.habbo.room.object.visualization.furniture.data.LayerData;
   import com.sulake.habbo.room.object.visualization.furniture.data.SizeData;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.utils.XMLValidator;
   
   public class FurnitureVisualizationData implements IRoomObjectVisualizationData
   {
      
      public static const const_329:int = 1000;
      
      public static const const_1070:Array = new Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z");
       
      
      private var var_271:Map;
      
      private var _sizes:Array;
      
      private var var_822:SizeData = null;
      
      private var var_1585:int = -1;
      
      private var var_2171:int = -1;
      
      private var var_2170:int = -1;
      
      private var _type:String = "";
      
      public function FurnitureVisualizationData()
      {
         this._sizes = [];
         super();
         this.var_271 = new Map();
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(this.var_271 != null)
         {
            _loc1_ = null;
            _loc2_ = 0;
            while(_loc2_ < this.var_271.length)
            {
               _loc1_ = this.var_271.getWithIndex(_loc2_) as SizeData;
               if(_loc1_ != null)
               {
                  _loc1_.dispose();
               }
               _loc2_++;
            }
            this.var_271.dispose();
            this.var_271 = null;
         }
         this.var_822 = null;
         this._sizes = null;
      }
      
      public function initialize(param1:XML) : Boolean
      {
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:String = param1.@type;
         if(_loc2_.length == 0)
         {
            return false;
         }
         this._type = _loc2_;
         if(!this.defineVisualizations(param1))
         {
            this.reset();
            return false;
         }
         return true;
      }
      
      protected function reset() : void
      {
         this._type = "";
         var _loc1_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_271.length)
         {
            _loc1_ = this.var_271.getWithIndex(_loc2_) as SizeData;
            if(_loc1_ != null)
            {
               _loc1_.dispose();
            }
            _loc2_++;
         }
         this.var_271.reset();
         this._sizes = [];
         this.var_822 = null;
         this.var_1585 = -1;
      }
      
      protected function defineVisualizations(param1:XML) : Boolean
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc2_:XMLList = param1.visualization;
         if(_loc2_.length() == 0)
         {
            return false;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length())
         {
            _loc5_ = _loc2_[_loc4_];
            if(!XMLValidator.checkRequiredAttributes(_loc5_,["size","layerCount","angle"]))
            {
               return false;
            }
            _loc6_ = int(_loc5_.@size);
            _loc7_ = int(_loc5_.@layerCount);
            _loc8_ = int(_loc5_.@angle);
            if(this.var_271.getValue(String(_loc6_)) != null)
            {
               return false;
            }
            _loc9_ = this.createSizeData(_loc7_,_loc8_);
            if(_loc9_ == null)
            {
               return false;
            }
            _loc10_ = _loc5_.children();
            _loc11_ = 0;
            while(_loc11_ < _loc10_.length())
            {
               _loc12_ = _loc10_[_loc11_];
               if(!this.processVisualizationElement(_loc9_,_loc12_))
               {
                  _loc9_.dispose();
                  return false;
               }
               _loc11_++;
            }
            this.var_271.add(String(_loc6_),_loc9_);
            this._sizes.push(_loc6_);
            this._sizes.sort(Array.NUMERIC);
            _loc4_++;
         }
         return true;
      }
      
      protected function createSizeData(param1:int, param2:int) : SizeData
      {
         var _loc3_:* = null;
         return new SizeData(param1,param2);
      }
      
      protected function processVisualizationElement(param1:SizeData, param2:XML) : Boolean
      {
         if(param1 == null || param2 == null)
         {
            return false;
         }
         switch(String(param2.name()))
         {
            case "layers":
               if(!param1.defineLayers(param2))
               {
                  return false;
               }
               break;
            case "directions":
               if(!param1.defineDirections(param2))
               {
                  return false;
               }
               break;
            case "colors":
               if(!param1.defineColors(param2))
               {
                  return false;
               }
               break;
         }
         return true;
      }
      
      public function getType() : String
      {
         return this._type;
      }
      
      private function getSizeIndex(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         while(_loc3_ < this._sizes.length)
         {
            if(this._sizes[_loc3_] > param1)
            {
               if(this._sizes[_loc3_] - param1 < param1 - this._sizes[_loc3_ - 1])
               {
                  _loc2_ = _loc3_;
               }
               break;
            }
            _loc2_ = _loc3_;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getSize(param1:int) : int
      {
         if(param1 == this.var_2170)
         {
            return this.var_2171;
         }
         var _loc2_:int = this.getSizeIndex(param1);
         var _loc3_:int = -1;
         if(_loc2_ < this._sizes.length)
         {
            _loc3_ = this._sizes[_loc2_];
         }
         this.var_2170 = param1;
         this.var_2171 = _loc3_;
         return _loc3_;
      }
      
      public function getLayerCount(param1:int) : int
      {
         var _loc2_:SizeData = this.getSizeData(param1);
         if(_loc2_ != null)
         {
            return _loc2_.layerCount;
         }
         return 0;
      }
      
      public function getDirectionValue(param1:int, param2:int) : int
      {
         var _loc3_:SizeData = this.getSizeData(param2);
         if(_loc3_ != null)
         {
            return _loc3_.getDirectionValue(param1);
         }
         return 0;
      }
      
      public function getTag(param1:int, param2:int, param3:int) : String
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getTag(param1,param2);
         }
         return LayerData.const_656;
      }
      
      public function getInk(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getInk(param1,param2);
         }
         return LayerData.const_533;
      }
      
      public function getAlpha(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getAlpha(param1,param2);
         }
         return LayerData.const_534;
      }
      
      public function getColor(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getColor(param1,param2);
         }
         return ColorData.const_67;
      }
      
      public function getIgnoreMouse(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getIgnoreMouse(param1,param2);
         }
         return LayerData.const_583;
      }
      
      public function getXOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getXOffset(param1,param2);
         }
         return LayerData.const_440;
      }
      
      public function getYOffset(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getYOffset(param1,param2);
         }
         return LayerData.const_416;
      }
      
      public function getZOffset(param1:int, param2:int, param3:int) : Number
      {
         var _loc4_:SizeData = this.getSizeData(param3);
         if(_loc4_ != null)
         {
            return _loc4_.getZOffset(param1,param2);
         }
         return LayerData.const_431;
      }
      
      protected function getSizeData(param1:int) : SizeData
      {
         if(param1 == this.var_1585)
         {
            return this.var_822;
         }
         var _loc2_:int = this.getSizeIndex(param1);
         if(_loc2_ < this._sizes.length)
         {
            this.var_822 = this.var_271.getValue(String(this._sizes[_loc2_])) as SizeData;
         }
         else
         {
            this.var_822 = null;
         }
         this.var_1585 = param1;
         return this.var_822;
      }
   }
}
