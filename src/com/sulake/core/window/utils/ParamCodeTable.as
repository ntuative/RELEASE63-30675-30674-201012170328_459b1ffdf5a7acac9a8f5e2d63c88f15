package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_189;
         param1["bound_to_parent_rect"] = const_91;
         param1["child_window"] = const_979;
         param1["embedded_controller"] = const_992;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_665;
         param1["mouse_dragging_target"] = const_226;
         param1["mouse_dragging_trigger"] = const_326;
         param1["mouse_scaling_target"] = const_261;
         param1["mouse_scaling_trigger"] = const_412;
         param1["horizontal_mouse_scaling_trigger"] = const_199;
         param1["vertical_mouse_scaling_trigger"] = const_249;
         param1["observe_parent_input_events"] = const_1056;
         param1["optimize_region_to_layout_size"] = const_450;
         param1["parent_window"] = const_952;
         param1["relative_horizontal_scale_center"] = const_187;
         param1["relative_horizontal_scale_fixed"] = const_131;
         param1["relative_horizontal_scale_move"] = const_372;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_966;
         param1["relative_scale_fixed"] = const_618;
         param1["relative_scale_move"] = const_1045;
         param1["relative_scale_strech"] = const_962;
         param1["relative_vertical_scale_center"] = const_164;
         param1["relative_vertical_scale_fixed"] = const_135;
         param1["relative_vertical_scale_move"] = const_376;
         param1["relative_vertical_scale_strech"] = const_340;
         param1["on_resize_align_left"] = const_619;
         param1["on_resize_align_right"] = const_467;
         param1["on_resize_align_center"] = const_529;
         param1["on_resize_align_top"] = const_657;
         param1["on_resize_align_bottom"] = const_448;
         param1["on_resize_align_middle"] = const_515;
         param1["on_accommodate_align_left"] = const_927;
         param1["on_accommodate_align_right"] = const_410;
         param1["on_accommodate_align_center"] = const_572;
         param1["on_accommodate_align_top"] = const_892;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_720;
         param1["route_input_events_to_parent"] = const_507;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_891;
         param1["scalable_with_mouse"] = const_1000;
         param1["reflect_horizontal_resize_to_parent"] = const_512;
         param1["reflect_vertical_resize_to_parent"] = const_510;
         param1["reflect_resize_to_parent"] = const_293;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
