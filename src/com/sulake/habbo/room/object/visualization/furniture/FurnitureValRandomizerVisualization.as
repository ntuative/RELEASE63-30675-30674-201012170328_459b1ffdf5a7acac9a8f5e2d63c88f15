package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_845:int = 20;
      
      private static const const_560:int = 10;
      
      private static const const_1173:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_287:Array;
      
      private var var_687:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_287 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_560)
         {
            if(this.var_687)
            {
               this.var_687 = false;
               this.var_287 = new Array();
               if(_direction == 2)
               {
                  this.var_287.push(const_845 + 5 - param1);
                  this.var_287.push(const_560 + 5 - param1);
               }
               else
               {
                  this.var_287.push(const_845 + param1);
                  this.var_287.push(const_560 + param1);
               }
               this.var_287.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
