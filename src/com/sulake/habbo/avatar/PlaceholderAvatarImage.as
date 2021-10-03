package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_690:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_689)
         {
            _structure = null;
            _assets = null;
            var_244 = null;
            var_255 = null;
            var_598 = null;
            var_511 = null;
            var_289 = null;
            if(!var_1170 && var_39)
            {
               var_39.dispose();
            }
            var_39 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_684 = null;
            var_689 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_690[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_690[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_379:
               switch(_loc3_)
               {
                  case AvatarAction.const_658:
                  case AvatarAction.const_399:
                  case AvatarAction.const_334:
                  case AvatarAction.const_695:
                  case AvatarAction.const_380:
                  case AvatarAction.const_674:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_287:
            case AvatarAction.const_581:
            case AvatarAction.const_211:
            case AvatarAction.const_584:
            case AvatarAction.const_782:
            case AvatarAction.const_676:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
