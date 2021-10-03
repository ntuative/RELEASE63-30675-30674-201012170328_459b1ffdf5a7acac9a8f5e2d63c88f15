package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1153:int = 2;
      
      private static const const_1152:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_287:Array;
      
      private var var_987:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_287 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1153)
         {
            this.var_287 = new Array();
            this.var_287.push(const_1152);
            this.var_987 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_987 > 0)
         {
            --this.var_987;
         }
         if(this.var_987 == 0)
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
