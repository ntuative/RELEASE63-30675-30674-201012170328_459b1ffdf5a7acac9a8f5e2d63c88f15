package com.sulake.habbo.roomevents.userdefinedroomevents.triggerconfs
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.Triggerable;
   import com.sulake.habbo.roomevents.HabboUserDefinedRoomEvents;
   import com.sulake.habbo.roomevents.userdefinedroomevents.common.SliderWindowController;
   import flash.events.Event;
   
   public class TriggerOnce implements TriggerConf
   {
       
      
      private var var_89:HabboUserDefinedRoomEvents;
      
      private var var_945:SliderWindowController;
      
      public function TriggerOnce()
      {
         super();
      }
      
      public static function preparePulseSelection(param1:IWindowContainer, param2:IDropMenuWindow) : void
      {
         var _loc3_:Array = new Array();
         var _loc5_:int = 0;
         while(_loc5_ <= 10)
         {
            if(_loc5_ != 0)
            {
               _loc3_.push("at " + _loc5_ + " secs");
            }
            _loc3_.push("at " + _loc5_ + ".5 secs");
            _loc5_++;
         }
         if(param2)
         {
            param2.populate(_loc3_);
            param2.selection = 0;
         }
      }
      
      public static function getSecsFromPulses(param1:int) : String
      {
         var _loc2_:int = Math.floor(param1 / 2);
         if(param1 % 2 == 0)
         {
            return "" + _loc2_;
         }
         return _loc2_ + ".5";
      }
      
      public function get code() : int
      {
         return TriggerConfCodes.var_1862;
      }
      
      public function get requiresFurni() : Boolean
      {
         return false;
      }
      
      public function get hasStateSnapshot() : Boolean
      {
         return false;
      }
      
      public function readIntParamsFromForm(param1:IWindowContainer) : Array
      {
         var _loc2_:Array = new Array();
         _loc2_.push(this.var_945.getValue());
         return _loc2_;
      }
      
      public function readStringParamFromForm(param1:IWindowContainer) : String
      {
         return "";
      }
      
      public function onInit(param1:IWindowContainer, param2:HabboUserDefinedRoomEvents) : void
      {
         this.var_89 = param2;
         this.var_945 = new SliderWindowController(param2,this.getInput(param1),param2.assets,1,1200,1);
         this.var_945.setValue(1);
         this.var_945.addEventListener(Event.CHANGE,this.onSliderChange);
      }
      
      public function onEditStart(param1:IWindowContainer, param2:Triggerable) : void
      {
         var _loc3_:int = param2.intParams[0];
         this.var_945.setValue(_loc3_);
      }
      
      public function get hasSpecialInputs() : Boolean
      {
         return true;
      }
      
      private function getInput(param1:IWindowContainer) : IWindowContainer
      {
         return param1.findChildByName("slider_container") as IWindowContainer;
      }
      
      private function onSliderChange(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         if(param1.type == Event.CHANGE)
         {
            _loc2_ = param1.target as SliderWindowController;
            if(_loc2_)
            {
               _loc3_ = _loc2_.getValue();
               _loc4_ = int(_loc3_);
               _loc5_ = TriggerOnce.getSecsFromPulses(_loc4_);
               this.var_89.localization.registerParameter("wiredfurni.params.settime","seconds",_loc5_);
            }
         }
      }
   }
}
