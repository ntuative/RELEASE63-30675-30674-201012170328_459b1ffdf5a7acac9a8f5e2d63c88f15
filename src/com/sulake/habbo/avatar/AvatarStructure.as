package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.AssetLibraryCollection;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.events.EventDispatcher;
   import com.sulake.habbo.avatar.actions.ActionDefinition;
   import com.sulake.habbo.avatar.actions.AvatarActionManager;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.animation.AddDataContainer;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.AnimationLayerData;
   import com.sulake.habbo.avatar.animation.AnimationManager;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarType;
   import com.sulake.habbo.avatar.geometry.AvatarModelGeometry;
   import com.sulake.habbo.avatar.geometry.GeometryBodyPart;
   import com.sulake.habbo.avatar.geometry.GeometryItem;
   import com.sulake.habbo.avatar.structure.AnimationData;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.FigureData;
   import com.sulake.habbo.avatar.structure.IFigureData;
   import com.sulake.habbo.avatar.structure.PartSetsData;
   import com.sulake.habbo.avatar.structure.animation.ActionPart;
   import com.sulake.habbo.avatar.structure.animation.AnimationAction;
   import com.sulake.habbo.avatar.structure.figure.IFigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPalette;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import com.sulake.habbo.avatar.structure.parts.PartDefinition;
   import com.sulake.habbo.avatar.structure.parts.PartOffsetData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display.Stage;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class AvatarStructure extends EventDispatcher
   {
       
      
      private var var_363:AvatarRenderManager;
      
      private var _geometry:AvatarModelGeometry;
      
      private var var_776:AvatarActionManager;
      
      private var var_295:FigureData;
      
      private var var_353:PartSetsData;
      
      private var var_438:AnimationData;
      
      private var var_630:AnimationManager;
      
      private var var_890:ActionDefinition;
      
      private var var_418:String;
      
      private var var_1188:PartOffsetData;
      
      private var var_520:Dictionary;
      
      public function AvatarStructure(param1:AvatarRenderManager, param2:String, param3:PartOffsetData)
      {
         super();
         this.var_363 = param1;
         this.var_295 = new FigureData();
         this.var_353 = new PartSetsData();
         this.var_438 = new AnimationData();
         this.var_630 = new AnimationManager();
         this.var_418 = param2;
         this.var_520 = new Dictionary();
         this.var_1188 = param3;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            super.dispose();
            this.var_363 = null;
            this.var_295 = null;
            this.var_353 = null;
            this.var_438 = null;
            this.var_520 = null;
            this.var_1188 = null;
         }
      }
      
      public function resetPartOffsets(param1:IAssetLibrary) : void
      {
         this.var_1188.loadOffsets(param1);
      }
      
      public function initGeometry(param1:XML) : void
      {
         if(!param1)
         {
            Logger.log("[AvatarStructure] Could not init Geometry for structure: " + this.var_418);
            return;
         }
         this._geometry = new AvatarModelGeometry(param1);
      }
      
      public function initActions(param1:IAssetLibrary, param2:XML) : void
      {
         if(!param2)
         {
            Logger.log("[AvatarStructure] Could not init Actions for structure: " + this.var_418);
            return;
         }
         this.var_776 = new AvatarActionManager(param1,this.var_418,param2);
         this.var_890 = this.var_776.getDefaultAction();
      }
      
      public function initPartSets(param1:XML) : Boolean
      {
         if(!param1)
         {
            Logger.log("[AvatarStructure] Could not init Part Sets for structure: " + this.var_418);
            return false;
         }
         if(this.var_353.parse(param1))
         {
            if(this.var_418 == AvatarType.const_112)
            {
               this.var_353.getPartDefinition("ri").appendToFigure = true;
               this.var_353.getPartDefinition("li").appendToFigure = true;
            }
            return true;
         }
         return false;
      }
      
      public function initAnimation(param1:XML) : Boolean
      {
         if(!param1)
         {
            Logger.log("[AvatarStructure] Could not init Animations for structure: " + this.var_418);
            return false;
         }
         return this.var_438.parse(param1);
      }
      
      public function initFigureData(param1:XML) : Boolean
      {
         if(!param1)
         {
            Logger.log("[AvatarStructure] Could not init Figure Data for structure: " + this.var_418);
            return false;
         }
         return this.var_295.parse(param1);
      }
      
      public function injectFigureData(param1:XML) : void
      {
         this.var_295.injectXML(param1);
      }
      
      public function registerAnimations(param1:AssetLibraryCollection, param2:String = "fx", param3:int = 200) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         while(_loc5_ < param3)
         {
            if(param1.hasAsset(param2 + _loc5_))
            {
               _loc4_ = param1.getAssetByName(param2 + _loc5_).content as XML;
               this.var_630.registerAnimation(this,_loc4_);
            }
            _loc5_++;
         }
      }
      
      public function getPartColor(param1:AvatarFigureContainer, param2:String, param3:int = 0) : IPartColor
      {
         var _loc4_:Array = param1.getPartColorIds(param2);
         if(!_loc4_ || _loc4_.length < param3)
         {
            return null;
         }
         var _loc5_:ISetType = this.var_295.getSetType(param2);
         if(_loc5_ == null)
         {
            return null;
         }
         var _loc6_:IPalette = this.var_295.getPalette(_loc5_.paletteID);
         if(!_loc6_)
         {
            return null;
         }
         return _loc6_.getColor(_loc4_[param3]);
      }
      
      public function getBodyPartData(param1:String, param2:int, param3:String) : AnimationLayerData
      {
         return this.var_630.getLayerData(param1,param2,param3) as AnimationLayerData;
      }
      
      public function getAnimation(param1:String) : Animation
      {
         return this.var_630.getAnimation(param1) as Animation;
      }
      
      public function getActionDefinition(param1:String) : ActionDefinition
      {
         return this.var_776.getActionDefinition(param1);
      }
      
      public function getActionDefinitionWithState(param1:String) : ActionDefinition
      {
         return this.var_776.getActionDefinitionWithState(param1);
      }
      
      public function isMainAvatarSet(param1:String) : Boolean
      {
         return this._geometry.isMainAvatarSet(param1);
      }
      
      public function sortActions(param1:Array) : Array
      {
         return this.var_776.sortActions(param1);
      }
      
      public function getMandatorySetTypeIds(param1:String, param2:int) : Array
      {
         if(!this.var_520[param1])
         {
            this.var_520[param1] = new Dictionary();
         }
         if(this.var_520[param1][param2])
         {
            return this.var_520[param1][param2];
         }
         this.var_520[param1][param2] = this.var_295.getMandatorySetTypeIds(param1,param2);
         return this.var_520[param1][param2];
      }
      
      public function getDefaultPartSet(param1:String, param2:String) : IFigurePartSet
      {
         return this.var_295.getDefaultPartSet(param1,param2);
      }
      
      public function getCanvasOffsets(param1:Array, param2:String, param3:int) : Array
      {
         return this.var_776.getCanvasOffsets(param1,param2,param3);
      }
      
      public function getCanvas(param1:String, param2:String) : AvatarCanvas
      {
         return this._geometry.getCanvas(param1,param2);
      }
      
      public function removeDynamicItems() : void
      {
         this._geometry.removeDynamicItems();
      }
      
      public function getActiveBodyPartIds(param1:IActiveActionData) : Array
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc2_:* = [];
         var _loc3_:Array = new Array();
         var _loc4_:String = param1.definition.geometryType;
         if(param1.definition.isAnimation)
         {
            _loc6_ = param1.definition.state + "." + param1.actionParameter;
            _loc7_ = this.var_630.getAnimation(_loc6_) as Animation;
            if(_loc7_ != null)
            {
               _loc2_ = _loc7_.getAnimatedBodyPartIds(0,param1.overridingAction);
               if(_loc7_.hasAddData())
               {
                  _loc10_ = <item id="" x="0" y="0" z="0" radius="0.01" nx="0" ny="0" nz="-1" double="1"/>;
                  _loc11_ = <part/>;
                  for each(_loc12_ in _loc7_.addData)
                  {
                     _loc5_ = this._geometry.getBodyPart(_loc4_,_loc12_.align);
                     if(_loc5_ != null)
                     {
                        _loc10_.@id = _loc12_.id;
                        _loc5_.addPart(_loc10_);
                        _loc11_["set-type"] = _loc12_.id;
                        _loc9_ = this.var_353.addPartDefinition(_loc11_);
                        _loc9_.appendToFigure = true;
                        if(_loc12_.base == "")
                        {
                           _loc9_.staticId = 1;
                        }
                        if(_loc3_.indexOf(_loc5_.id) == -1)
                        {
                           _loc3_.push(_loc5_.id);
                        }
                     }
                  }
               }
            }
            for each(_loc8_ in _loc2_)
            {
               _loc5_ = this._geometry.getBodyPart(_loc4_,_loc8_);
               if(_loc5_ != null)
               {
                  if(_loc3_.indexOf(_loc5_.id) == -1)
                  {
                     _loc3_.push(_loc5_.id);
                  }
               }
            }
         }
         else
         {
            _loc2_ = this.var_353.getActiveParts(param1.definition);
            for each(_loc13_ in _loc2_)
            {
               _loc5_ = this._geometry.getBodyPartOfItem(_loc4_,_loc13_);
               if(_loc5_ != null)
               {
                  if(_loc3_.indexOf(_loc5_.id) == -1)
                  {
                     _loc3_.push(_loc5_.id);
                  }
               }
            }
         }
         return _loc3_;
      }
      
      public function getBodyPartsUnordered(param1:String) : Array
      {
         return this._geometry.getBodyPartIdsInAvatarSet(param1);
      }
      
      public function getBodyParts(param1:String, param2:String, param3:int) : Array
      {
         var _loc4_:Number = AvatarDirectionAngle.const_1517[param3];
         return this._geometry.getBodyPartsAtAngle(param1,_loc4_,param2);
      }
      
      public function getParts(param1:String, param2:AvatarFigureContainer, param3:IActiveActionData, param4:String, param5:int, param6:Array, param7:Dictionary = null) : Array
      {
         var _loc9_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc26_:* = null;
         var _loc27_:int = 0;
         var _loc28_:* = null;
         var _loc29_:* = null;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc33_:* = null;
         var _loc34_:* = null;
         var _loc35_:* = null;
         var _loc36_:* = false;
         var _loc37_:Boolean = false;
         var _loc38_:* = null;
         var _loc39_:int = 0;
         var _loc40_:int = 0;
         var _loc41_:* = null;
         var _loc42_:Boolean = false;
         var _loc43_:* = NaN;
         var _loc44_:* = null;
         var _loc45_:* = null;
         if(param3 == null)
         {
            Logger.log("[AvatarStructure] getParts action == NULL!! bodyPartId: " + param1);
            return [];
         }
         var _loc8_:Array = this.var_353.getActiveParts(param3.definition);
         var _loc10_:Array = new Array();
         var _loc13_:* = [0];
         var _loc14_:AnimationAction = this.var_438.getAction(param3.definition);
         if(param3.definition.isAnimation)
         {
            _loc23_ = param3.definition.state + "." + param3.actionParameter;
            _loc9_ = this.var_630.getAnimation(_loc23_) as Animation;
            if(_loc9_ != null)
            {
               _loc13_ = this.getPopulatedArray(_loc9_.frameCount(param3.overridingAction));
               for each(_loc24_ in _loc9_.getAnimatedBodyPartIds(0,param3.overridingAction))
               {
                  if(_loc24_ == param1)
                  {
                     _loc25_ = this._geometry.getBodyPart(param4,_loc24_);
                     if(_loc25_ != null)
                     {
                        for each(_loc26_ in _loc25_.getDynamicParts())
                        {
                           _loc8_.push(_loc26_.id);
                        }
                     }
                  }
               }
            }
         }
         var _loc15_:Array = this._geometry.getParts(param4,param1,param5,_loc8_);
         var _loc20_:Array = param2.getPartTypeIds();
         for each(_loc16_ in _loc20_)
         {
            if(param7 != null)
            {
               if(param7[_loc16_] != null)
               {
                  continue;
               }
            }
            _loc27_ = param2.getPartSetId(_loc16_);
            _loc28_ = param2.getPartColorIds(_loc16_);
            _loc29_ = this.var_295.getSetType(_loc16_);
            if(_loc29_)
            {
               _loc30_ = this.var_295.getPalette(_loc29_.paletteID);
               if(_loc30_)
               {
                  _loc31_ = _loc29_.getPartSet(_loc27_);
                  if(_loc31_)
                  {
                     param6 = param6.concat(_loc31_.hiddenLayers);
                     for each(_loc32_ in _loc31_.parts)
                     {
                        if(_loc15_.indexOf(_loc32_.type) > -1)
                        {
                           if(_loc14_ != null)
                           {
                              _loc18_ = _loc14_.getPart(_loc32_.type);
                              if(_loc18_ != null)
                              {
                                 _loc19_ = _loc18_.frames;
                              }
                              else
                              {
                                 _loc19_ = _loc13_;
                              }
                           }
                           else
                           {
                              _loc19_ = _loc13_;
                           }
                           _loc33_ = param3.definition;
                           if(_loc8_.indexOf(_loc32_.type) == -1)
                           {
                              _loc33_ = this.var_890;
                           }
                           _loc12_ = this.var_353.getPartDefinition(_loc32_.type);
                           _loc34_ = _loc12_ == null ? _loc32_.type : _loc12_.flippedSetType;
                           if(_loc34_ == "")
                           {
                              _loc34_ = _loc32_.type;
                           }
                           if(_loc28_ && _loc28_.length > _loc32_.colorLayerIndex - 1)
                           {
                              _loc35_ = _loc30_.getColor(_loc28_[_loc32_.colorLayerIndex - 1]);
                           }
                           _loc36_ = _loc32_.colorLayerIndex > 0;
                           _loc17_ = new AvatarImagePartContainer(param1,_loc32_.type,_loc32_.id.toString(),_loc35_,_loc19_,_loc33_,_loc36_,_loc32_.paletteMap,_loc34_);
                           _loc10_.push(_loc17_);
                        }
                     }
                  }
               }
            }
         }
         _loc21_ = new Array();
         for each(_loc11_ in _loc15_)
         {
            _loc37_ = false;
            for each(_loc22_ in _loc10_)
            {
               if(_loc22_.partType == _loc11_)
               {
                  _loc37_ = true;
                  if(param6.indexOf(_loc11_) == -1)
                  {
                     _loc21_.push(_loc22_);
                  }
               }
            }
            if(!_loc37_)
            {
               if(param7 && param7[_loc11_])
               {
                  _loc38_ = param7[_loc11_];
                  _loc39_ = 0;
                  _loc40_ = 0;
                  while(_loc40_ < _loc38_.length)
                  {
                     _loc39_ += _loc38_.charCodeAt(_loc40_);
                     _loc40_++;
                  }
                  if(_loc14_ != null)
                  {
                     _loc18_ = _loc14_.getPart(_loc11_);
                     if(_loc18_ != null)
                     {
                        _loc19_ = _loc18_.frames;
                     }
                     else
                     {
                        _loc19_ = _loc13_;
                     }
                  }
                  else
                  {
                     _loc19_ = _loc13_;
                  }
                  _loc17_ = new AvatarImagePartContainer(param1,_loc11_,_loc38_,null,_loc19_,param3.definition,false,-1,_loc11_,false,1);
                  _loc21_.push(_loc17_);
               }
               if(_loc8_.indexOf(_loc11_) > -1)
               {
                  _loc41_ = this._geometry.getBodyPartOfItem(param4,_loc11_);
                  if(param1 != _loc41_.id)
                  {
                     Logger.log("BodypartId mismatch:" + param1 + " " + _loc41_.id);
                  }
                  else
                  {
                     _loc12_ = this.var_353.getPartDefinition(_loc11_);
                     _loc42_ = false;
                     _loc43_ = 1;
                     if(_loc12_.appendToFigure)
                     {
                        Logger.log("PART NOT FOUND, ALTHOUGH IT SHOULD HAVE BEEN! Add now?" + _loc11_);
                        _loc44_ = "1";
                        if(param3.actionParameter != "")
                        {
                           _loc44_ = param3.actionParameter;
                        }
                        if(_loc12_.hasStaticId())
                        {
                           _loc44_ = _loc12_.staticId.toString();
                        }
                        if(_loc9_ != null)
                        {
                           _loc45_ = _loc9_.getAddData(_loc11_);
                           if(_loc45_ != null)
                           {
                              _loc42_ = _loc45_.isBlended;
                              _loc43_ = Number(_loc45_.blend);
                           }
                        }
                        if(_loc14_ != null)
                        {
                           _loc18_ = _loc14_.getPart(_loc11_);
                           if(_loc18_ != null)
                           {
                              _loc19_ = _loc18_.frames;
                           }
                           else
                           {
                              _loc19_ = _loc13_;
                           }
                        }
                        else
                        {
                           _loc19_ = _loc13_;
                        }
                        _loc17_ = new AvatarImagePartContainer(param1,_loc11_,_loc44_,null,_loc19_,param3.definition,false,-1,_loc11_,_loc42_,_loc43_);
                        _loc21_.push(_loc17_);
                     }
                  }
               }
            }
         }
         return _loc21_;
      }
      
      public function getPartActionOffset(param1:int, param2:String, param3:String, param4:String, param5:int, param6:int) : Point
      {
         return this.var_1188.getOffset(param1,param2,param3,param4,param5,param6);
      }
      
      public function get figureData() : IFigureData
      {
         return this.var_295;
      }
      
      public function get renderManager() : AvatarRenderManager
      {
         return this.var_363;
      }
      
      public function get avatarType() : String
      {
         return this.var_418;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.var_630;
      }
      
      private function getPopulatedArray(param1:int) : Array
      {
         var _loc2_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_.push(_loc3_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function displayGeometry(param1:Stage) : void
      {
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = null;
         var _loc2_:BitmapData = new BitmapData(960,540,false,4294967295);
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         param1.addChild(_loc3_);
         var _loc4_:Number = _loc2_.width / 2;
         var _loc5_:Number = _loc2_.height / 2;
         var _loc7_:TextField = new TextField();
         var _loc8_:Matrix = new Matrix();
         for each(_loc9_ in this._geometry.getBodyPartIdsInAvatarSet("full"))
         {
            _loc10_ = this._geometry.getBodyPart("vertical",_loc9_);
            Logger.log("Drawing bodypart : " + _loc9_);
            if(_loc10_ != null)
            {
               _loc11_ = _loc10_.location.x * 200;
               _loc12_ = _loc10_.location.z * 200;
               _loc13_ = _loc10_.radius * 200;
               _loc14_ = new Shape();
               _loc14_.graphics.lineStyle(1,4294901760,1);
               _loc14_.graphics.drawCircle(_loc4_ + _loc11_,_loc5_ + _loc12_,_loc13_);
               _loc2_.draw(_loc14_);
               _loc7_.text = _loc9_;
               _loc7_.textColor = 4294901760;
               _loc8_.identity();
               _loc8_.tx = _loc4_ + _loc11_ + _loc13_ - _loc7_.textWidth - 5;
               _loc8_.ty = _loc5_ + _loc12_ - 5;
               _loc2_.draw(_loc7_,_loc8_);
            }
            else
            {
               Logger.log("Could not draw bodypart : " + _loc9_);
            }
         }
      }
   }
}
