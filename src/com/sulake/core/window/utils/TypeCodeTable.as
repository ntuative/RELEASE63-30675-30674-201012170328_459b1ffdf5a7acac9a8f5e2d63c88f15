package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_638;
         param1["bitmap"] = const_637;
         param1["border"] = const_691;
         param1["border_notify"] = const_1381;
         param1["button"] = const_481;
         param1["button_thick"] = const_653;
         param1["button_icon"] = const_1421;
         param1["button_group_left"] = const_562;
         param1["button_group_center"] = const_799;
         param1["button_group_right"] = const_773;
         param1["canvas"] = const_760;
         param1["checkbox"] = const_643;
         param1["closebutton"] = const_954;
         param1["container"] = const_356;
         param1["container_button"] = const_625;
         param1["display_object_wrapper"] = const_813;
         param1["dropmenu"] = const_469;
         param1["dropmenu_item"] = const_493;
         param1["frame"] = const_365;
         param1["frame_notify"] = const_1480;
         param1["header"] = const_607;
         param1["icon"] = const_1033;
         param1["itemgrid"] = const_973;
         param1["itemgrid_horizontal"] = const_404;
         param1["itemgrid_vertical"] = const_800;
         param1["itemlist"] = const_1019;
         param1["itemlist_horizontal"] = const_368;
         param1["itemlist_vertical"] = const_363;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1279;
         param1["menu_item"] = const_1340;
         param1["submenu"] = const_911;
         param1["minimizebox"] = const_1492;
         param1["notify"] = const_1258;
         param1["null"] = const_646;
         param1["password"] = const_561;
         param1["radiobutton"] = const_616;
         param1["region"] = const_797;
         param1["restorebox"] = const_1398;
         param1["scaler"] = const_803;
         param1["scaler_horizontal"] = const_1403;
         param1["scaler_vertical"] = const_1468;
         param1["scrollbar_horizontal"] = const_429;
         param1["scrollbar_vertical"] = const_816;
         param1["scrollbar_slider_button_up"] = const_1048;
         param1["scrollbar_slider_button_down"] = const_900;
         param1["scrollbar_slider_button_left"] = const_1073;
         param1["scrollbar_slider_button_right"] = const_1005;
         param1["scrollbar_slider_bar_horizontal"] = const_924;
         param1["scrollbar_slider_bar_vertical"] = const_986;
         param1["scrollbar_slider_track_horizontal"] = const_969;
         param1["scrollbar_slider_track_vertical"] = const_972;
         param1["scrollable_itemlist"] = const_1443;
         param1["scrollable_itemlist_vertical"] = const_463;
         param1["scrollable_itemlist_horizontal"] = const_1007;
         param1["selector"] = const_681;
         param1["selector_list"] = const_735;
         param1["submenu"] = const_911;
         param1["tab_button"] = const_598;
         param1["tab_container_button"] = const_1081;
         param1["tab_context"] = const_331;
         param1["tab_content"] = const_901;
         param1["tab_selector"] = const_744;
         param1["text"] = const_703;
         param1["input"] = const_596;
         param1["toolbar"] = const_1318;
         param1["tooltip"] = const_343;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
