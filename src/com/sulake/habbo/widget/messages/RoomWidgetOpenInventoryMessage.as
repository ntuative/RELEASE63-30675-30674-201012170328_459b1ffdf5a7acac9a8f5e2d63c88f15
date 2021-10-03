package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_678:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1076:String = "inventory_effects";
      
      public static const const_988:String = "inventory_badges";
      
      public static const const_1304:String = "inventory_clothes";
      
      public static const const_1375:String = "inventory_furniture";
       
      
      private var var_2226:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_678);
         this.var_2226 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2226;
      }
   }
}
