// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1H0.FameView

package _1H0 {
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Kr._1E8;

import _1Sm._sy;

import _1TG._0Yn;

import _6u._TG;

import _DO.GTween;

import _U1._1O0;
import _U1._1hn;
import _U1._AL;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util._0ZU;
import com.company.rotmg.graphics.FameIconBackgroundDesign;
import com.company.rotmg.graphics.ScreenGraphic;
import com.company.util.BitmapUtil;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.geom.Rectangle;
import flash.text.TextFieldAutoSize;

public class FameView extends Sprite {

    public function FameView() {
        addChild(new _1E8());
        addChild((this._Az = new Sprite()));
        addChild((this._Ru = new Bitmap()));
        this._true = new _1O0(_TG._0BY, 36, false);
        this._true.setAutoSize(TextFieldAutoSize.CENTER);
        this._true.setVerticalAlign(_06T.MIDDLE);
        this.closed = new _0q(this._true, MouseEvent.CLICK);
    }
    public var closed:_sy;
    private var _Az:DisplayObjectContainer;
    private var _Ru:Bitmap;
    private var title:_06T;
    private var date:_06T;
    private var _QW:_1hn;
    private var _l2:_AL;
    private var _true:_1O0;
    private var _0ls:Boolean;
    private var _1A1:Boolean;
    private var _1NU:Boolean;

    public function _2v(_arg1:Boolean):void {
        this._0ls = _arg1;
    }

    public function _yI(_arg1:BitmapData):void {
        this._Ru.bitmapData = _arg1;
        var _local2:GTween = new GTween(this._Ru, 2, {alpha: 0});
        _local2.onComplete = this._sQ;
        _0Yn.play("death_screen");
    }

    public function _1ln():void {
        this._Ru.bitmapData = null;
    }

    public function _1XZ(_arg1:String, _arg2:int, _arg3:int):void {
        this.title = new _06T().setSize(38).setColor(0xCCCCCC);
        this.title.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        this.title.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        var _local4:String = ObjectLibrary._1w3[_arg3];
        this.title.setStringBuilder(new _5R().setParams(_TG._0vC, {
            name: _arg1,
            level: _arg2,
            type: _local4
        }));
        this.title.x = (stage.stageWidth / 2);
        this.title.y = 225;
        this._Az.addChild(this.title);
    }

    public function _0dr(_arg1:String, _arg2:String):void {
        this.date = new _06T().setSize(24).setColor(0xCCCCCC);
        this.date.setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
        this.date.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        var _local3:_5R = new _5R();
        if (_arg2) {
            _local3.setParams(_TG._Kz, {
                date: _arg1,
                killer: _arg2
            });
        } else {
            _local3.setParams(_TG._o, {date: this.date});
        }
        ;
        this.date.setStringBuilder(_local3);
        this.date.x = (stage.stageWidth / 2);
        this.date.y = 272;
        this._Az.addChild(this.date);
    }

    public function setIcon(_arg1:BitmapData):void {
        var _local2:Sprite;
        var _local4:Bitmap;
        _local2 = new Sprite();
        var _local3:Sprite = new FameIconBackgroundDesign();
        _local3.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        _local2.addChild(_local3);
        _local4 = new Bitmap(_arg1);
        _local4.x = ((_local2.width / 2) - (_local4.width / 2));
        _local4.y = ((_local2.height / 2) - (_local4.height / 2));
        _local2.addChild(_local4);
        _local2.y = 20;
        _local2.x = ((stage.stageWidth / 2) - (_local2.width / 2));
        this._Az.addChild(_local2);
    }

    public function _0S0(_arg1:int, _arg2:XML):void {
        this._QW = new _1hn(new Rectangle(0, 0, 784, 150), _arg2);
        this._QW.x = 8;
        this._QW.y = 316;
        addChild(this._QW);
        this._Az.addChild(this._QW);
        var _local3:BitmapData = _0ZU._0e1();
        _local3 = BitmapUtil._6L(_local3, 6, 6, (_local3.width - 12), (_local3.height - 12));
        this._l2 = new _AL(24, 0xCCCCCC, 0xFFC800, _TG._2C, null, 0, _arg1, "", "", new Bitmap(_local3));
        this._l2.x = 10;
        this._l2.y = 470;
        this._Az.addChild(this._l2);
        this._1NU = true;
        if (((!(this._0ls)) || (this._1A1))) {
            this._12n();
        }
        ;
    }

    private function _sQ(_arg1:GTween):void {
        removeChild(this._Ru);
        this._1A1 = true;
        if (this._1NU) {
            this._12n();
        }
        ;
    }

    private function _12n():void {
        this._Az.addChild(new ScreenGraphic());
        this._true.x = (stage.stageWidth / 2);
        this._true.y = 550;
        this._Az.addChild(this._true);
        if (this._0ls) {
            this._QW._LZ();
        } else {
            this._QW._86();
        }
        ;
    }


}
}//package _1H0

