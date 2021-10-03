package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import flash.events.Event;
   
   public class QuestCompleted implements IDisposable
   {
       
      
      private var var_69:QuestCampaign;
      
      private var var_211:IFrameWindow;
      
      private var var_689:Boolean = false;
      
      public function QuestCompleted(param1:QuestCampaign, param2:QuestMessageData)
      {
         super();
         this.var_69 = param1;
         this.localize(param2);
      }
      
      public function dispose() : void
      {
         if(this.var_211)
         {
            this.var_211.dispose();
            this.var_211 = null;
         }
         this.var_689 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_689;
      }
      
      private function onOpenCatalog(param1:Event, param2:IWindow = null) : void
      {
         this.dispose();
         this.var_69.closeQuestCompleted(this);
         this.var_69.controller.questEngine.openCatalog();
      }
      
      private function onQuestCompletedRewardImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_689)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(!this.var_211)
         {
            return;
         }
         if(_loc2_ != null)
         {
            _loc3_ = this.var_211.findChildByName("reward.currency.icon") as IBitmapWrapperWindow;
            this.var_69.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onQuestCompletedRewardImageReady);
         }
      }
      
      private function onCompletedDialogClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.dispose();
            this.var_69.closeQuestCompleted(this);
         }
      }
      
      private function localize(param1:QuestMessageData) : void
      {
         this.var_211 = IFrameWindow(this.var_69.controller.questEngine.getXmlWindow("QuestCompletedDialog"));
         this.var_211.findChildByTag("close").procedure = this.onCompletedDialogClose;
         this.var_211.center();
         var _loc2_:IWindow = this.var_211.findChildByName("button.catalog");
         if(_loc2_)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onOpenCatalog);
         }
         var _loc3_:String = "quest_" + this.var_69.id;
         var _loc4_:String = _loc3_ + "_" + param1.localizationCode;
         this.var_211.caption = "${quest.completed}";
         this.var_211.findChildByName("reward.description").caption = "${" + _loc3_ + ".completed.reward}";
         this.var_69.controller.questEngine.localization.registerParameter(_loc4_ + ".completed.desc","amount",param1.rewardCurrencyAmount.toString());
         this.var_69.controller.questEngine.localization.registerParameter(_loc3_ + ".completed.currency","amount",param1.rewardCurrencyAmount.toString());
         this.var_211.findChildByName("description").caption = this.var_69.controller.questEngine.localization.getKey(_loc4_ + ".completed.desc");
         this.var_211.findChildByName("reward.currency.desc").caption = this.var_69.controller.questEngine.localization.getKey(_loc3_ + ".completed.currency");
         var _loc5_:String = "icon_" + this.var_69.id + "_reward_" + param1.rewardCurrencyAmount;
         var _loc6_:IBitmapWrapperWindow = this.var_211.findChildByName("reward.currency.icon") as IBitmapWrapperWindow;
         this.var_69.controller.questEngine.setImageFromAsset(_loc6_,_loc5_,this.onQuestCompletedRewardImageReady);
      }
   }
}
