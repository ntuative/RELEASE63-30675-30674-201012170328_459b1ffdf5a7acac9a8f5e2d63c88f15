package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1352:String = "WN_CRETAE";
      
      public static const const_1351:String = "WN_CREATED";
      
      public static const const_919:String = "WN_DESTROY";
      
      public static const const_1057:String = "WN_DESTROYED";
      
      public static const const_990:String = "WN_OPEN";
      
      public static const const_1064:String = "WN_OPENED";
      
      public static const const_1087:String = "WN_CLOSE";
      
      public static const const_916:String = "WN_CLOSED";
      
      public static const const_906:String = "WN_FOCUS";
      
      public static const const_1040:String = "WN_FOCUSED";
      
      public static const const_1011:String = "WN_UNFOCUS";
      
      public static const const_1100:String = "WN_UNFOCUSED";
      
      public static const const_1082:String = "WN_ACTIVATE";
      
      public static const const_327:String = "WN_ACTVATED";
      
      public static const const_951:String = "WN_DEACTIVATE";
      
      public static const const_950:String = "WN_DEACTIVATED";
      
      public static const const_522:String = "WN_SELECT";
      
      public static const const_341:String = "WN_SELECTED";
      
      public static const const_796:String = "WN_UNSELECT";
      
      public static const const_758:String = "WN_UNSELECTED";
      
      public static const const_898:String = "WN_LOCK";
      
      public static const const_947:String = "WN_LOCKED";
      
      public static const const_1004:String = "WN_UNLOCK";
      
      public static const const_1062:String = "WN_UNLOCKED";
      
      public static const const_1065:String = "WN_ENABLE";
      
      public static const const_806:String = "WN_ENABLED";
      
      public static const const_978:String = "WN_DISABLE";
      
      public static const const_568:String = "WN_DISABLED";
      
      public static const const_634:String = "WN_RESIZE";
      
      public static const const_182:String = "WN_RESIZED";
      
      public static const const_899:String = "WN_RELOCATE";
      
      public static const const_517:String = "WN_RELOCATED";
      
      public static const const_1059:String = "WN_MINIMIZE";
      
      public static const const_910:String = "WN_MINIMIZED";
      
      public static const const_1096:String = "WN_MAXIMIZE";
      
      public static const const_998:String = "WN_MAXIMIZED";
      
      public static const const_1072:String = "WN_RESTORE";
      
      public static const const_1071:String = "WN_RESTORED";
      
      public static const const_1646:String = "WN_ARRANGE";
      
      public static const const_1706:String = "WN_ARRANGED";
      
      public static const const_1626:String = "WN_UPDATE";
      
      public static const const_1674:String = "WN_UPDATED";
      
      public static const const_314:String = "WN_CHILD_ADDED";
      
      public static const const_769:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_306:String = "WN_CHILD_RELOCATED";
      
      public static const const_238:String = "WN_CHILD_ACTIVATED";
      
      public static const const_428:String = "WN_PARENT_ADDED";
      
      public static const const_1050:String = "WN_PARENT_REMOVED";
      
      public static const const_501:String = "WN_PARENT_RESIZED";
      
      public static const const_976:String = "WN_PARENT_RELOCATED";
      
      public static const const_580:String = "WN_PARENT_ACTIVATED";
      
      public static const const_417:String = "WN_STATE_UPDATED";
      
      public static const const_490:String = "WN_STYLE_UPDATED";
      
      public static const const_473:String = "WN_PARAM_UPDATED";
      
      public static const const_1805:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1886,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
