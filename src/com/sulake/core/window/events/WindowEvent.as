package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1283:String = "WE_CREATE";
      
      public static const const_1488:String = "WE_CREATED";
      
      public static const const_1409:String = "WE_DESTROY";
      
      public static const const_292:String = "WE_DESTROYED";
      
      public static const const_1459:String = "WE_OPEN";
      
      public static const const_1471:String = "WE_OPENED";
      
      public static const const_1416:String = "WE_CLOSE";
      
      public static const const_1461:String = "WE_CLOSED";
      
      public static const const_1285:String = "WE_FOCUS";
      
      public static const const_161:String = "WE_FOCUSED";
      
      public static const const_1410:String = "WE_UNFOCUS";
      
      public static const const_1465:String = "WE_UNFOCUSED";
      
      public static const const_1463:String = "WE_ACTIVATE";
      
      public static const const_1503:String = "WE_ACTIVATED";
      
      public static const const_1311:String = "WE_DEACTIVATE";
      
      public static const const_939:String = "WE_DEACTIVATED";
      
      public static const const_426:String = "WE_SELECT";
      
      public static const const_57:String = "WE_SELECTED";
      
      public static const const_573:String = "WE_UNSELECT";
      
      public static const const_761:String = "WE_UNSELECTED";
      
      public static const const_1697:String = "WE_ATTACH";
      
      public static const const_1670:String = "WE_ATTACHED";
      
      public static const const_1746:String = "WE_DETACH";
      
      public static const const_1659:String = "WE_DETACHED";
      
      public static const const_1460:String = "WE_LOCK";
      
      public static const const_1395:String = "WE_LOCKED";
      
      public static const const_1473:String = "WE_UNLOCK";
      
      public static const const_1263:String = "WE_UNLOCKED";
      
      public static const const_693:String = "WE_ENABLE";
      
      public static const const_285:String = "WE_ENABLED";
      
      public static const const_639:String = "WE_DISABLE";
      
      public static const const_205:String = "WE_DISABLED";
      
      public static const const_1261:String = "WE_RELOCATE";
      
      public static const const_349:String = "WE_RELOCATED";
      
      public static const const_1349:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1293:String = "WE_MINIMIZE";
      
      public static const const_1299:String = "WE_MINIMIZED";
      
      public static const const_1464:String = "WE_MAXIMIZE";
      
      public static const const_1355:String = "WE_MAXIMIZED";
      
      public static const const_1466:String = "WE_RESTORE";
      
      public static const const_1478:String = "WE_RESTORED";
      
      public static const const_1643:String = "WE_ARRANGE";
      
      public static const const_1763:String = "WE_ARRANGED";
      
      public static const const_99:String = "WE_UPDATE";
      
      public static const const_1704:String = "WE_UPDATED";
      
      public static const const_1759:String = "WE_CHILD_RELOCATE";
      
      public static const const_497:String = "WE_CHILD_RELOCATED";
      
      public static const const_1769:String = "WE_CHILD_RESIZE";
      
      public static const const_262:String = "WE_CHILD_RESIZED";
      
      public static const const_1798:String = "WE_CHILD_REMOVE";
      
      public static const const_449:String = "WE_CHILD_REMOVED";
      
      public static const const_1764:String = "WE_PARENT_RELOCATE";
      
      public static const const_1677:String = "WE_PARENT_RELOCATED";
      
      public static const const_1689:String = "WE_PARENT_RESIZE";
      
      public static const const_1514:String = "WE_PARENT_RESIZED";
      
      public static const const_167:String = "WE_OK";
      
      public static const const_571:String = "WE_CANCEL";
      
      public static const const_113:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_491:String = "WE_SCROLL";
      
      public static const const_142:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1886:IWindow;
      
      protected var var_1885:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1886 = param3;
         this.var_1885 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1886;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1885 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1885;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
