package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_845:int = 10;
      
      private static const const_560:int = 20;
      
      private static const const_1173:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
       
      
      private var var_287:Array;
      
      private var var_687:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_287 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_687)
            {
               this.var_687 = true;
               this.var_287 = new Array();
               this.var_287.push(const_1173);
               this.var_287.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_845)
         {
            if(this.var_687)
            {
               this.var_687 = false;
               this.var_287 = new Array();
               this.var_287.push(const_845 + param1);
               this.var_287.push(const_560 + param1);
               this.var_287.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_287.length > 0)
            {
               super.setAnimation(this.var_287.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
