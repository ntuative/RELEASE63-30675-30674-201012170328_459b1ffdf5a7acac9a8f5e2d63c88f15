package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1961:int;
      
      private var var_2211:int;
      
      private var var_2208:String;
      
      private var var_2209:String;
      
      private var var_2210:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_1961 = param1;
         this.var_2211 = param2;
         this.var_2208 = param3;
         this.var_2209 = param4;
      }
      
      public function get id() : int
      {
         return this.var_1961;
      }
      
      public function get length() : int
      {
         return this.var_2211;
      }
      
      public function get name() : String
      {
         return this.var_2208;
      }
      
      public function get creator() : String
      {
         return this.var_2209;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2210;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2210 = param1;
      }
   }
}
