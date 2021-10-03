package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_656:String = "";
      
      public static const const_533:int = 0;
      
      public static const const_534:int = 255;
      
      public static const const_583:Boolean = false;
      
      public static const const_440:int = 0;
      
      public static const const_416:int = 0;
      
      public static const const_431:int = 0;
      
      public static const const_1058:int = 1;
      
      public static const const_1015:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2056:String = "";
      
      private var var_1528:int = 0;
      
      private var var_2235:int = 255;
      
      private var var_2607:Boolean = false;
      
      private var var_2606:int = 0;
      
      private var var_2609:int = 0;
      
      private var var_2608:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2056 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2056;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1528 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1528;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2235 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2235;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2607 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2607;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2606 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2606;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2609 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2609;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2608 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2608;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
