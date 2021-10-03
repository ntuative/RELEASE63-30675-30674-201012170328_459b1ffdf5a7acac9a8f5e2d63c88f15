package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1346:int;
      
      private var var_280:String;
      
      private var var_2347:int;
      
      private var var_2346:int;
      
      private var var_1746:int;
      
      private var var_2345:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1346 = param1.readInteger();
         this.var_280 = param1.readString();
         this.var_2347 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         this.var_1746 = param1.readInteger();
         this.var_2345 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_280;
      }
      
      public function get level() : int
      {
         return this.var_1346;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2347;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2346;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1746;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2345;
      }
   }
}
