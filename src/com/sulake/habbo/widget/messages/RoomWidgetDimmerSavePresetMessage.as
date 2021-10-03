package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_714:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2075:int;
      
      private var var_2077:int;
      
      private var _color:uint;
      
      private var var_984:int;
      
      private var var_2076:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_714);
         this.var_2075 = param1;
         this.var_2077 = param2;
         this._color = param3;
         this.var_984 = param4;
         this.var_2076 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2075;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2077;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_984;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2076;
      }
   }
}
