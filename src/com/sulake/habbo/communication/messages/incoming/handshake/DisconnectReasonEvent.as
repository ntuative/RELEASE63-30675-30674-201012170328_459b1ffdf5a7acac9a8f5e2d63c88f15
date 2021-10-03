package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1731:int = 0;
      
      public static const const_1319:int = 1;
      
      public static const const_1327:int = 2;
      
      public static const const_1758:int = 3;
      
      public static const const_1586:int = 4;
      
      public static const const_1662:int = 5;
      
      public static const const_1387:int = 10;
      
      public static const const_1657:int = 11;
      
      public static const const_1719:int = 12;
      
      public static const const_1732:int = 13;
      
      public static const const_1790:int = 16;
      
      public static const const_1666:int = 17;
      
      public static const const_1596:int = 18;
      
      public static const const_1623:int = 19;
      
      public static const const_1686:int = 20;
      
      public static const const_1620:int = 22;
      
      public static const const_1654:int = 23;
      
      public static const const_1685:int = 24;
      
      public static const const_1793:int = 25;
      
      public static const const_1619:int = 26;
      
      public static const const_1591:int = 27;
      
      public static const const_1776:int = 28;
      
      public static const const_1599:int = 29;
      
      public static const const_1672:int = 100;
      
      public static const const_1795:int = 101;
      
      public static const const_1658:int = 102;
      
      public static const const_1777:int = 103;
      
      public static const const_1588:int = 104;
      
      public static const const_1587:int = 105;
      
      public static const const_1608:int = 106;
      
      public static const const_1585:int = 107;
      
      public static const const_1766:int = 108;
      
      public static const const_1644:int = 109;
      
      public static const const_1624:int = 110;
      
      public static const const_1592:int = 111;
      
      public static const const_1687:int = 112;
      
      public static const const_1609:int = 113;
      
      public static const const_1601:int = 114;
      
      public static const const_1730:int = 115;
      
      public static const const_1705:int = 116;
      
      public static const const_1779:int = 117;
      
      public static const const_1684:int = 118;
      
      public static const const_1634:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1319:
            case const_1387:
               return "banned";
            case const_1327:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
