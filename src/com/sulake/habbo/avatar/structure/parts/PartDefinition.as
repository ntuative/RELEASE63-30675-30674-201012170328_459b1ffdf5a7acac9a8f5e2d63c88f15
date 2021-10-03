package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2065:String;
      
      private var var_1498:String;
      
      private var var_2064:String;
      
      private var var_1496:Boolean;
      
      private var var_1497:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2065 = String(param1["set-type"]);
         this.var_1498 = String(param1["flipped-set-type"]);
         this.var_2064 = String(param1["remove-set-type"]);
         this.var_1496 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1497 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1497;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1497 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2065;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1498;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2064;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1496;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1496 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1498 = param1;
      }
   }
}
