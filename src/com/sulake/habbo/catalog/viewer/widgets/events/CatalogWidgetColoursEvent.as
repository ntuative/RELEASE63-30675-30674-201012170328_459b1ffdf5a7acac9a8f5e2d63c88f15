package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1328:Array;
      
      private var var_2180:String;
      
      private var var_2178:String;
      
      private var var_2179:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_1328 = param1;
         this.var_2180 = param2;
         this.var_2178 = param3;
         this.var_2179 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1328;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2180;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2178;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2179;
      }
   }
}
