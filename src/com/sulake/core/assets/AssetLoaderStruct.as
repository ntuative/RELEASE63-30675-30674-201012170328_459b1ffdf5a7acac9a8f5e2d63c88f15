package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_878:IAssetLoader;
      
      private var var_1592:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1592 = param1;
         this.var_878 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1592;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_878;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_878 != null)
            {
               if(!this.var_878.disposed)
               {
                  this.var_878.dispose();
                  this.var_878 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
