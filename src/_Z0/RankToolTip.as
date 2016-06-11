// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.RankToolTip

package _Z0 {
import _07g._2v;

import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.ui._yz;
import com.company.assembleegameclient.util._0ZU;
import com.company.rotmg.graphics.StarGraphic;

import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;
import flash.geom.Rectangle;

public class RankToolTip extends ToolTip {

    private static const _1Gz:int = 6;

    public function RankToolTip(_arg1:int) {
        this._0a1 = new _yz(100, 0x1C1C1C);
        super(0x363636, 1, 0xFFFFFF, 1);
        this._Bs = new _06T().setSize(13).setColor(0xB3B3B3).setBold(true);
        this._Bs.setVerticalAlign(_06T.BOTTOM);
        this._Bs.setStringBuilder(new _5R().setParams(_TG._12L, {numStars: _arg1}));
        this._Bs.filters = [new DropShadowFilter(0, 0, 0)];
        this._Bs.x = _1Gz;
        addChild(this._Bs);
        this._1Vd = new _06T().setSize(13).setColor(0xB3B3B3);
        this._1Vd.setTextWidth(174);
        this._1Vd.setMultiLine(true).setWordWrap(true);
        this._1Vd.setStringBuilder(new _5R().setParams(_TG._0Oq));
        this._1Vd.filters = [new DropShadowFilter(0, 0, 0)];
        this._1Vd.x = _1Gz;
        this._1Vd.y = 30;
        addChild(this._1Vd);
        var _local2:_2v = new _2v().push(this._Bs.textChanged).push(this._1Vd.textChanged);
        _local2.complete.addOnce(this._0a2);
    }
    private var _Bs:_06T;
    private var star_:StarGraphic;
    private var _1Vd:_06T;
    private var _0a1:_yz;

    override public function draw():void {
        this._0a1._1s9((width - 10), 0x1C1C1C);
        super.draw();
    }

    private function _0a2():void {
        var _local2:LegendLine;
        var _local3:int;
        this._Bs.y = (this._Bs.height + 2);
        this.star_ = new StarGraphic();
        this.star_.transform.colorTransform = new ColorTransform((179 / 0xFF), (179 / 0xFF), (179 / 0xFF));
        var _local1:Rectangle = this._Bs.getBounds(this);
        this.star_.x = (_local1.right + 7);
        this.star_.y = (this._Bs.y - this.star_.height);
        addChild(this.star_);
        this._0a1.x = _1Gz;
        this._0a1.y = (height + 10);
        addChild(this._0a1);
        _local3 = (this._0a1.y + 4);
        var _local4:int;
        while (_local4 < _0ZU._02E.length) {
            _local2 = new LegendLine((_local4 * ObjectLibrary._0ZM.length), (((_local4 + 1) * ObjectLibrary._0ZM.length) - 1), _0ZU._02E[_local4]);
            _local2.x = _1Gz;
            _local2.y = _local3;
            addChild(_local2);
            _local3 = (_local3 + _local2.height);
            _local4++;
        }
        ;
        _local2 = new LegendLine(_0ZU._0fG(), _0ZU._0fG(), new ColorTransform());
        _local2.x = _1Gz;
        _local2.y = _local3;
        addChild(_local2);
        this.draw();
    }


}
}//package _Z0

import _0Mr._1M;

import _0y9._06T;

import com.company.rotmg.graphics.StarGraphic;

import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

class LegendLine extends Sprite {

    private var coloredStar_:StarGraphic;
    private var rangeText_:_06T;
    private var star_:StarGraphic;

    public function LegendLine(_arg1:int, _arg2:int, _arg3:ColorTransform) {
        this.addColoredStar(_arg3);
        this.addRangeText(_arg1, _arg2);
        this.addGreyStar();
    }

    public function addGreyStar():void {
        this.star_ = new StarGraphic();
        this.star_.transform.colorTransform = new ColorTransform((179 / 0xFF), (179 / 0xFF), (179 / 0xFF));
        addChild(this.star_);
    }

    public function addRangeText(_arg1:int, _arg2:int):void {
        this.rangeText_ = new _06T().setSize(13).setColor(0xB3B3B3);
        this.rangeText_.setVerticalAlign(_06T.BOTTOM);
        this.rangeText_.setStringBuilder(new _1M((": " + (((_arg1 == _arg2)) ? _arg1.toString() : ((_arg1 + " - ") + _arg2)))));
        this.rangeText_.setBold(true);
        filters = [new DropShadowFilter(0, 0, 0)];
        this.rangeText_.x = this.coloredStar_.width;
        this.rangeText_.y = this.coloredStar_.getBounds(this).bottom;
        this.rangeText_.textChanged.addOnce(this.positionGreyStar);
        addChild(this.rangeText_);
    }

    public function addColoredStar(_arg1:ColorTransform):void {
        this.coloredStar_ = new StarGraphic();
        this.coloredStar_.transform.colorTransform = _arg1;
        this.coloredStar_.y = 4;
        addChild(this.coloredStar_);
    }

    private function positionGreyStar():void {
        this.star_.x = (this.rangeText_.getBounds(this).right + 2);
        this.star_.y = 4;
    }


}

