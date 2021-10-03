package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_936:String;
      
      protected var var_154:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_764:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_764 = param1;
         this.var_936 = param2;
      }
      
      public function get url() : String
      {
         return this.var_936;
      }
      
      public function get content() : Object
      {
         return this.var_154;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_764;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_154.loaderInfo != null)
            {
               if(this.var_154.loaderInfo.loader != null)
               {
                  this.var_154.loaderInfo.loader.unload();
               }
            }
            this.var_154 = null;
            this.var_764 = null;
            this._disposed = true;
            this.var_936 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_154 = param1 as DisplayObject;
            if(this.var_154 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_154 = DisplayAsset(param1).var_154;
            this.var_764 = DisplayAsset(param1).var_764;
            if(this.var_154 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_154 = DisplayAsset(param1).var_154;
            this.var_764 = DisplayAsset(param1).var_764;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
