package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_63:EffectsModel;
      
      private var var_333:int;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         this.var_63 = param1;
         this.var_333 = param2;
      }
      
      public function dispose() : void
      {
         this.var_63 = null;
      }
      
      public function getDrawableList() : Array
      {
         return this.var_63.getEffects(this.var_333);
      }
   }
}
