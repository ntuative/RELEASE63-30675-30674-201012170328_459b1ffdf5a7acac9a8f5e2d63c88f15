package com.sulake.habbo.moderation
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.outgoing.moderator.CloseIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.PickIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ReleaseIssuesMessageComposer;
   import com.sulake.habbo.communication.messages.parser.moderation.IssueMessageData;
   import com.sulake.habbo.sound.HabboSoundTypesEnum;
   import flash.utils.getTimer;
   
   public class IssueManager
   {
      
      public static const const_940:String = "issue_bundle_open";
      
      public static const const_677:String = "issue_bundle_my";
      
      public static const const_1063:String = "issue_bundle_picked";
       
      
      private var var_60:ModerationManager;
      
      private var var_567:IssueBrowser;
      
      private var _issues:Map;
      
      private var var_94:Map;
      
      private var var_830:Map;
      
      private var var_1046:Array;
      
      private var var_1047:Array;
      
      private var var_677:Map;
      
      private var var_2255:int = 1;
      
      public function IssueManager(param1:ModerationManager)
      {
         super();
         this.var_60 = param1;
         this._issues = new Map();
         this.var_94 = new Map();
         this.var_830 = new Map();
         this.var_567 = new IssueBrowser(this,this.var_60.windowManager,this.var_60.assets);
         this.var_1046 = [];
         this.var_1047 = [];
         this.var_677 = new Map();
      }
      
      public function init() : void
      {
         this.var_567.show();
      }
      
      public function pickBundle(param1:int, param2:Boolean = false, param3:int = 0) : void
      {
         var _loc4_:IssueBundle = this.var_94.getValue(param1) as IssueBundle;
         if(_loc4_ == null)
         {
            return;
         }
         this.sendPick(_loc4_.getIssueIds(),param2,param3);
         this.var_1046 = this.var_1046.concat(_loc4_.getIssueIds());
      }
      
      public function autoPick(param1:Boolean = false, param2:int = 0) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:Array = this.var_94.getValues();
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_.state == IssueMessageData.const_157 && (_loc4_ == null || _loc5_.getPrioritySum() > _loc4_.getPrioritySum()))
            {
               _loc4_ = _loc5_;
            }
         }
         if(_loc4_ == null)
         {
            return;
         }
         this.pickBundle(_loc4_.id,param1,param2);
      }
      
      public function releaseAll() : void
      {
         var _loc3_:* = null;
         if(this.var_94 == null)
         {
            return;
         }
         var _loc1_:int = this.var_60.sessionDataManager.userId;
         var _loc2_:* = [];
         for each(_loc3_ in this.var_94)
         {
            if(_loc3_.state == IssueMessageData.const_346 && _loc3_.pickerUserId == _loc1_)
            {
               _loc2_ = _loc2_.concat(_loc3_.getIssueIds());
            }
         }
         this.sendRelease(_loc2_);
      }
      
      public function releaseBundle(param1:int) : void
      {
         if(this.var_94 == null)
         {
            return;
         }
         var _loc2_:IssueBundle = this.var_94.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         this.sendRelease(_loc2_.getIssueIds());
      }
      
      private function sendRelease(param1:Array) : void
      {
         if(param1 == null || param1.length == 0 || this.var_60 == null || this.var_60.connection == null)
         {
            return;
         }
         this.var_60.connection.send(new ReleaseIssuesMessageComposer(param1));
         this.var_1047 = this.var_1047.concat(param1);
      }
      
      public function playSound(param1:IssueMessageData) : void
      {
         if(this._issues[param1.issueId] != null)
         {
            return;
         }
         if(this.var_567 == null || !this.var_567.isOpen())
         {
            this.var_60.soundManager.playSound(HabboSoundTypesEnum.const_1111);
         }
      }
      
      public function updateIssue(param1:IssueMessageData) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:Boolean = false;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return;
         }
         this._issues.remove(param1.issueId);
         this._issues.add(param1.issueId,param1);
         var _loc2_:int = int(this.var_830.getValue(param1.issueId));
         if(_loc2_ != 0)
         {
            _loc3_ = this.var_94.getValue(_loc2_) as IssueBundle;
            if(_loc3_ != null)
            {
               if(this.validateBundle(_loc3_,param1))
               {
                  _loc3_.updateIssue(param1);
               }
               else
               {
                  _loc3_.removeIssue(param1.issueId);
                  if(_loc3_.getIssueCount() == 0)
                  {
                     this.var_94.remove(_loc3_.id);
                     this.removeHandler(_loc3_.id);
                  }
                  this.var_830.remove(param1.issueId);
                  _loc3_ = null;
               }
            }
         }
         if(param1.state == IssueMessageData.const_1315)
         {
            this._issues.remove(param1.issueId);
            return;
         }
         if(_loc3_ == null)
         {
            for each(_loc4_ in this.var_94)
            {
               if(this.validateBundle(_loc4_,param1))
               {
                  _loc3_ = _loc4_;
                  _loc3_.updateIssue(param1);
                  this.var_830.add(param1.issueId,_loc3_.id);
                  break;
               }
            }
         }
         if(_loc3_ == null)
         {
            _loc2_ = this.var_2255++;
            _loc3_ = new IssueBundle(_loc2_,param1);
            this.var_830.add(param1.issueId,_loc2_);
            this.var_94.add(_loc2_,_loc3_);
         }
         if(_loc3_ == null)
         {
            return;
         }
         if(this.var_1046.indexOf(param1.issueId) != -1)
         {
            this.handleBundle(_loc3_.id);
            _loc5_ = this.var_60.sessionDataManager.userId;
            if(_loc5_ != param1.pickerUserId)
            {
               if(param1.state == IssueMessageData.const_346)
               {
                  this.unhandleBundle(_loc3_.id);
               }
            }
         }
         if(param1.state == IssueMessageData.const_157)
         {
            _loc6_ = this.getBundles(const_677);
            _loc7_ = false;
            for each(_loc8_ in _loc6_)
            {
               if(this.validateBundle(_loc8_,param1,true))
               {
                  _loc7_ = true;
                  break;
               }
            }
            _loc9_ = this.var_1047.indexOf(param1.issueId);
            if(_loc9_ == -1 && _loc7_)
            {
               this.sendPick([param1.issueId]);
            }
            else
            {
               this.var_1047.splice(_loc9_,1);
            }
         }
         this.updateHandler(_loc3_.id);
         this.var_567.update();
      }
      
      public function updatePriorities() : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:* = null;
         if(this.var_60 == null || this.var_60.configuration == null)
         {
            return;
         }
         var _loc1_:int = getTimer();
         var _loc3_:int = parseInt(this.var_60.configuration.getKey("chf.score.updatefactor","60"));
         for each(_loc4_ in this._issues)
         {
            if(_loc4_ != null)
            {
               _loc2_ = (_loc1_ - _loc4_.timeStamp) / 1000;
               _loc4_.temporalPriority = int(_loc2_ / _loc3_);
            }
         }
         if(this.var_567 != null)
         {
            this.var_567.update();
         }
      }
      
      private function updateHandler(param1:int) : void
      {
         var _loc2_:IssueHandler = this.var_677.getValue(param1) as IssueHandler;
         if(_loc2_ != null)
         {
            _loc2_.update();
         }
      }
      
      public function removeHandler(param1:int) : void
      {
         var _loc2_:* = this.var_677.remove(param1) as IssueHandler;
         if(_loc2_ != null)
         {
            _loc2_.dispose();
            _loc2_ = null;
         }
      }
      
      public function removeIssue(param1:int) : void
      {
         var _loc3_:* = null;
         if(this._issues == null)
         {
            return;
         }
         var _loc2_:int = this.var_830.getValue(param1);
         if(_loc2_ != 0)
         {
            _loc3_ = this.var_94.getValue(_loc2_) as IssueBundle;
            if(_loc3_ != null)
            {
               _loc3_.removeIssue(param1);
               if(_loc3_.getIssueCount() == 0)
               {
                  this.var_94.remove(_loc3_.id);
               }
            }
         }
         this._issues.remove(param1);
         this.var_567.update();
      }
      
      public function getBundles(param1:String) : Array
      {
         var _loc4_:* = null;
         if(this.var_94 == null)
         {
            return [];
         }
         var _loc2_:* = [];
         var _loc3_:int = this.var_60.sessionDataManager.userId;
         for each(_loc4_ in this.var_94)
         {
            switch(param1)
            {
               case const_940:
                  if(_loc4_.state == IssueMessageData.const_157)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
               case const_677:
                  if(_loc4_.state == IssueMessageData.const_346 && _loc4_.pickerUserId == _loc3_)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
               case const_1063:
                  if(_loc4_.state == IssueMessageData.const_346 && _loc4_.pickerUserId != _loc3_)
                  {
                     _loc2_.push(_loc4_);
                  }
                  break;
            }
         }
         return _loc2_;
      }
      
      public function handleBundle(param1:int) : void
      {
         var _loc2_:IssueBundle = this.var_94.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IssueHandler = new IssueHandler(this.var_60,_loc2_);
         this.var_677.remove(param1);
         this.var_677.add(param1,_loc3_);
         this.var_60.windowTracker.show(_loc3_,null,false,false,false);
         this.var_1046 = [];
      }
      
      public function unhandleBundle(param1:int) : void
      {
         var _loc2_:IssueBundle = this.var_94.getValue(param1) as IssueBundle;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IssueHandler = this.var_677.remove(param1);
         if(_loc3_ != null)
         {
            _loc3_.dispose();
         }
      }
      
      public function closeBundle(param1:int, param2:int) : void
      {
         var _loc3_:IssueBundle = this.var_94.getValue(param1) as IssueBundle;
         if(_loc3_ == null)
         {
            return;
         }
         this.sendClose(_loc3_.getIssueIds(),param2);
      }
      
      public function closeIssue(param1:int, param2:int) : void
      {
         this.sendClose([param1],param2);
      }
      
      private function sendClose(param1:Array, param2:int) : void
      {
         if(param1 == null || this.var_60 == null || this.var_60.connection == null)
         {
            return;
         }
         this.var_60.connection.send(new CloseIssuesMessageComposer(param1,param2));
      }
      
      private function sendPick(param1:Array, param2:Boolean = false, param3:int = 0) : void
      {
         if(param1 == null || this.var_60 == null || this.var_60.connection == null)
         {
            return;
         }
         this.var_60.connection.send(new PickIssuesMessageComposer(param1,param2,param3));
      }
      
      private function validateBundle(param1:IssueBundle, param2:IssueMessageData, param3:Boolean = false) : Boolean
      {
         if(param2.reportedUserId == 0)
         {
            return false;
         }
         if(param1.reportedUserId != param2.reportedUserId)
         {
            return false;
         }
         if(!param3)
         {
            if(param1.state != param2.state)
            {
               return false;
            }
            if(param1.pickerUserId != param2.pickerUserId)
            {
               return false;
            }
         }
         return true;
      }
      
      public function autoHandle(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc2_:Array = this.var_94.getValues();
         var _loc4_:int = this.var_60.sessionDataManager.userId;
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.state == IssueMessageData.const_346 && _loc5_.pickerUserId == _loc4_ && _loc5_.id != param1 && (_loc3_ == null || _loc5_.getPrioritySum() > _loc3_.getPrioritySum()))
            {
               _loc3_ = _loc5_;
            }
         }
         if(_loc3_ == null)
         {
            this.autoPick();
            return;
         }
         this.handleBundle(_loc3_.id);
      }
      
      public function issuePickFailed(param1:Array) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = null;
         if(!param1)
         {
            return false;
         }
         var _loc2_:Boolean = false;
         var _loc3_:int = this.var_60.sessionDataManager.userId;
         for each(_loc4_ in param1)
         {
            _loc5_ = _loc4_.issueId;
            _loc6_ = _loc4_.pickerUserName;
            _loc7_ = _loc4_.pickerUserId;
            if(_loc7_ != -1 && _loc7_ != _loc3_)
            {
               _loc2_ = true;
            }
            _loc8_ = null;
            for each(_loc9_ in this.var_94)
            {
               _loc10_ = _loc9_.getIssueIds();
               if(_loc10_ != null)
               {
                  for each(_loc11_ in _loc10_)
                  {
                     if(_loc5_ == _loc11_)
                     {
                        _loc8_ = _loc9_;
                        break;
                     }
                  }
               }
            }
            if(_loc8_ != null)
            {
               _loc12_ = _loc8_.id;
               _loc13_ = this.var_677.getValue(_loc12_) as IssueHandler;
               if(_loc13_ != null)
               {
                  _loc13_.dispose();
               }
               this.releaseBundle(_loc12_);
            }
         }
         return _loc2_;
      }
   }
}
