package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2614:String;
      
      private var var_2615:Class;
      
      private var var_2613:Class;
      
      private var var_1859:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2614 = param1;
         this.var_2615 = param2;
         this.var_2613 = param3;
         if(rest == null)
         {
            this.var_1859 = new Array();
         }
         else
         {
            this.var_1859 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2614;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2615;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2613;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1859;
      }
   }
}
