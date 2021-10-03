package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_659:String = "RWUAM_WHISPER_USER";
      
      public static const const_655:String = "RWUAM_IGNORE_USER";
      
      public static const const_628:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_474:String = "RWUAM_KICK_USER";
      
      public static const const_614:String = "RWUAM_BAN_USER";
      
      public static const const_742:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_609:String = "RWUAM_RESPECT_USER";
      
      public static const const_603:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_737:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_692:String = "RWUAM_START_TRADING";
      
      public static const const_613:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_439:String = "RWUAM_KICK_BOT";
      
      public static const const_763:String = "RWUAM_REPORT";
      
      public static const const_415:String = "RWUAM_PICKUP_PET";
      
      public static const const_1298:String = "RWUAM_TRAIN_PET";
      
      public static const const_457:String = " RWUAM_RESPECT_PET";
      
      public static const const_337:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
