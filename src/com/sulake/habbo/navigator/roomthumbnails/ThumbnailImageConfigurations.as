package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   
   public class ThumbnailImageConfigurations
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_1587:Dictionary;
      
      private var var_1588:Dictionary;
      
      private var var_1825:BitmapData;
      
      public function ThumbnailImageConfigurations(param1:HabboNavigator)
      {
         this.var_1587 = new Dictionary();
         this.var_1588 = new Dictionary();
         super();
         this._navigator = param1;
         this.var_1825 = this._navigator.getButtonImage("rico_selected");
         this.addImg(1,ThumbnailEditorModel.const_35,"rico_bg1");
         this.addImg(2,ThumbnailEditorModel.const_35,"rico_bg2");
         this.addImg(3,ThumbnailEditorModel.const_35,"rico_bg3");
         this.addImg(4,ThumbnailEditorModel.const_35,"rico_bg4");
         this.addImg(5,ThumbnailEditorModel.const_35,"rico_bg5");
         this.addImg(6,ThumbnailEditorModel.const_35,"rico_bg6");
         this.addImg(7,ThumbnailEditorModel.const_35,"rico_bg7");
         this.addImg(8,ThumbnailEditorModel.const_35,"rico_bg8");
         this.addImg(9,ThumbnailEditorModel.const_35,"rico_bg9");
         this.addImg(10,ThumbnailEditorModel.const_35,"rico_bg10");
         this.addImg(11,ThumbnailEditorModel.const_35,"rico_bg11");
         this.addImg(12,ThumbnailEditorModel.const_35,"rico_bg12");
         this.addImg(13,ThumbnailEditorModel.const_35,"rico_bg13");
         this.addImg(14,ThumbnailEditorModel.const_35,"rico_bg14");
         this.addImg(15,ThumbnailEditorModel.const_35,"rico_bg15");
         this.addImg(16,ThumbnailEditorModel.const_35,"rico_bg16");
         this.addImg(17,ThumbnailEditorModel.const_35,"rico_bg17");
         this.addImg(18,ThumbnailEditorModel.const_35,"rico_bg18");
         this.addImg(19,ThumbnailEditorModel.const_35,"rico_bg19");
         this.addImg(20,ThumbnailEditorModel.const_35,"rico_bg20");
         this.addImg(22,ThumbnailEditorModel.const_35,"rico_bg22");
         this.addImg(23,ThumbnailEditorModel.const_35,"rico_bg23");
         this.addImg(24,ThumbnailEditorModel.const_35,"rico_bg24");
         this.addImg(0,ThumbnailEditorModel.const_55,"rico_top0");
         this.addImg(1,ThumbnailEditorModel.const_55,"rico_top1");
         this.addImg(2,ThumbnailEditorModel.const_55,"rico_top2");
         this.addImg(3,ThumbnailEditorModel.const_55,"rico_top3");
         this.addImg(4,ThumbnailEditorModel.const_55,"rico_top4");
         this.addImg(5,ThumbnailEditorModel.const_55,"rico_top5");
         this.addImg(6,ThumbnailEditorModel.const_55,"rico_top6");
         this.addImg(7,ThumbnailEditorModel.const_55,"rico_top7");
         this.addImg(8,ThumbnailEditorModel.const_55,"rico_top8");
         this.addImg(9,ThumbnailEditorModel.const_55,"rico_top9");
         this.addImg(10,ThumbnailEditorModel.const_55,"rico_top10");
         this.addImg(11,ThumbnailEditorModel.const_55,"rico_top11");
         this.addImg(0,ThumbnailEditorModel.const_33,"rico_ob0");
         this.addImg(1,ThumbnailEditorModel.const_33,"rico_ob1");
         this.addImg(2,ThumbnailEditorModel.const_33,"rico_ob2");
         this.addImg(3,ThumbnailEditorModel.const_33,"rico_ob3");
         this.addImg(4,ThumbnailEditorModel.const_33,"rico_ob4");
         this.addImg(5,ThumbnailEditorModel.const_33,"rico_ob5");
         this.addImg(6,ThumbnailEditorModel.const_33,"rico_ob6");
         this.addImg(7,ThumbnailEditorModel.const_33,"rico_ob7");
         this.addImg(8,ThumbnailEditorModel.const_33,"rico_ob8");
         this.addImg(9,ThumbnailEditorModel.const_33,"rico_ob9");
         this.addImg(10,ThumbnailEditorModel.const_33,"rico_ob10");
         this.addImg(11,ThumbnailEditorModel.const_33,"rico_ob11");
         this.addImg(12,ThumbnailEditorModel.const_33,"rico_ob12");
         this.addImg(13,ThumbnailEditorModel.const_33,"rico_ob13");
         this.addImg(14,ThumbnailEditorModel.const_33,"rico_ob14");
         this.addImg(15,ThumbnailEditorModel.const_33,"rico_ob15");
         this.addImg(16,ThumbnailEditorModel.const_33,"rico_ob16");
         this.addImg(17,ThumbnailEditorModel.const_33,"rico_ob17");
         this.addImg(18,ThumbnailEditorModel.const_33,"rico_ob18");
         this.addImg(19,ThumbnailEditorModel.const_33,"rico_ob19");
         this.addImg(20,ThumbnailEditorModel.const_33,"rico_ob20");
         this.addImg(21,ThumbnailEditorModel.const_33,"rico_ob21");
         this.addImg(22,ThumbnailEditorModel.const_33,"rico_ob22");
         this.addImg(23,ThumbnailEditorModel.const_33,"rico_ob23");
         this.addImg(24,ThumbnailEditorModel.const_33,"rico_ob24");
         this.addImg(25,ThumbnailEditorModel.const_33,"rico_ob25");
         this.addImg(26,ThumbnailEditorModel.const_33,"rico_ob26");
         this.addImg(27,ThumbnailEditorModel.const_33,"rico_ob27");
      }
      
      private function addImg(param1:int, param2:int, param3:String) : void
      {
         var _loc4_:ThumbnailImageConfiguration = new ThumbnailImageConfiguration(this._navigator,param1,param2,param3,this.var_1825);
         this.getImageList(param2).push(_loc4_);
         this.getImageMap(param2)[param1] = _loc4_;
      }
      
      public function getImage(param1:int, param2:int) : ThumbnailImageConfiguration
      {
         return this.getImageMap(param1)[param2];
      }
      
      private function getImageMap(param1:int) : Dictionary
      {
         var _loc2_:Dictionary = this.var_1588[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new Dictionary();
            this.var_1588[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      public function getImageList(param1:int) : Array
      {
         var _loc2_:Array = this.var_1587[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new Array();
            this.var_1587[param1] = _loc2_;
         }
         return _loc2_;
      }
   }
}
