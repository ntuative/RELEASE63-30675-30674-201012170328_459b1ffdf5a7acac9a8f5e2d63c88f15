package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1346:int;
      
      private var var_1507:int;
      
      private var var_2346:int;
      
      private var var_1746:int;
      
      private var var_1347:int;
      
      private var var_2117:String = "";
      
      private var var_2538:String = "";
      
      private var var_2539:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1346 = param1.readInteger();
         this.var_2117 = param1.readString();
         this.var_1507 = param1.readInteger();
         this.var_2346 = param1.readInteger();
         this.var_1746 = param1.readInteger();
         this.var_1347 = param1.readInteger();
         this.var_2539 = param1.readInteger();
         this.var_2538 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1346;
      }
      
      public function get points() : int
      {
         return this.var_1507;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2346;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1746;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1347;
      }
      
      public function get badgeID() : String
      {
         return this.var_2117;
      }
      
      public function get achievementID() : int
      {
         return this.var_2539;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2538;
      }
   }
}
