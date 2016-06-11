// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._0Fb

package _Z0 {
import _0Mr.AppendingLineBuilder;
import _0Mr._5R;

import _0y9._06T;

import _10a._FU;

import _6u._TG;

import com.company.assembleegameclient.appengine._0Iq;
import com.company.assembleegameclient.appengine._1Ha;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.ui._yz;
import com.company.assembleegameclient.util.TextureRedrawer;
import com.company.assembleegameclient.util._0T2;
import com.company.assembleegameclient.util._0ZU;
import com.company.assembleegameclient.util._0pu;
import com.company.assembleegameclient.util._0zq;
import com.company.util._1V;

import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

import kabam.rotmg.assets.services._Zm;

public class _0Fb extends ToolTip {

    public function _0Fb(_arg1:XML, _arg2:_FU, _arg3:_1Ha) {
        var _local8:AppendingLineBuilder;
        var _local9:XML;
        var _local10:BitmapData;
        var _local11:int;
        var _local12:int;
        var _local13:int;
        var _local14:int;
        super(0x363636, 1, 0xFFFFFF, 1);
        var _local4:_0zq = _0pu._1Iw(String(_arg1.AnimatedTexture.File), int(_arg1.AnimatedTexture.Index));
        var _local5:_0T2 = _local4.imageFromDir(_0zq.RIGHT, _0zq._c0, 0);
        var _local6:int = ((4 / _local5.width()) * 100);
        var _local7:BitmapData = TextureRedrawer.redraw(_local5.image_, _local6, true, 0);
        this._1rK = this._0il(_arg2, _arg1);
        if (this._1rK) {
            _local7 = _1V._EJ(_local7, new ColorTransform(0, 0, 0, 0.5, 0, 0, 0, 0));
        }
        ;
        this._0H = new Bitmap();
        this._0H.bitmapData = _local7;
        this._0H.x = -4;
        this._0H.y = -4;
        addChild(this._0H);
        this.nameText_ = new _06T().setSize(13).setColor(0xB3B3B3);
        this.nameText_.setBold(true);
        this.nameText_.setStringBuilder(new _5R().setParams(_arg1.DisplayId));
        this.nameText_.filters = [new DropShadowFilter(0, 0, 0)];
        _qH.push(this.nameText_.textChanged);
        addChild(this.nameText_);
        this._1xh = new _06T().setSize(13).setColor(0xB3B3B3).setWordWrap(true).setMultiLine(true).setTextWidth(174);
        this._1xh.setStringBuilder(new _5R().setParams(_arg1.Description));
        this._1xh.filters = [new DropShadowFilter(0, 0, 0)];
        _qH.push(this._1xh.textChanged);
        addChild(this._1xh);
        this._0a1 = new _yz(100, 0x1C1C1C);
        addChild(this._0a1);
        if (this._1rK) {
            this._1Yu = new _06T().setSize(13).setColor(0xB3B3B3).setTextWidth(174).setBold(true);
            this._1Yu.setStringBuilder(new _5R().setParams(_TG._1se));
            this._1Yu.filters = [new DropShadowFilter(0, 0, 0)];
            _qH.push(this._1Yu.textChanged);
            addChild(this._1Yu);
            this.unlockText_ = new _06T().setSize(13).setColor(16549442).setTextWidth(174).setWordWrap(false).setMultiLine(true);
            _local8 = new AppendingLineBuilder();
            for each (_local9 in _arg1.UnlockLevel) {
                _local11 = ObjectLibrary._qb[_local9.toString()];
                _local12 = int(_local9.@level);
                if (_arg2._0A6(_local11) < int(_local9.@level)) {
                    _local8.pushParams(_TG._1kL, {
                        unlockLevel: _local12,
                        typeToDisplay: ObjectLibrary._1w3[_local11]
                    });
                }
                ;
            }
            ;
            this.unlockText_.setStringBuilder(_local8);
            this.unlockText_.filters = [new DropShadowFilter(0, 0, 0)];
            _qH.push(this.unlockText_.textChanged);
            addChild(this.unlockText_);
            this.costText_ = new _06T().setSize(13).setColor(0xFF00);
            this.costText_.setStringBuilder(new _5R().setParams(_TG._0Z0, {unlockCost: _arg1.UnlockCost}));
            this.costText_.filters = [new DropShadowFilter(0, 0, 0)];
            _qH.push(this.costText_.textChanged);
            addChild(this.costText_);
            _local10 = _Zm.makeCoin();
            this._0yZ = new Bitmap(_local10);
            addChild(this._0yZ);
        } else {
            _local13 = (((_arg3 == null)) ? 0 : _arg3.numStars());
            this.bestLevel_ = new _06T().setSize(14).setColor(6206769).setMultiLine(true);
            this.bestLevel_.setStringBuilder(new _5R().setParams(_TG._vc, {
                numStars: _local13,
                bestLevel: (((_arg3) != null) ? _arg3.bestLevel() : 0),
                fame: (((_arg3) != null) ? _arg3._04z() : 0)
            }));
            this.bestLevel_.filters = [new DropShadowFilter(0, 0, 0)];
            _qH.push(this.bestLevel_.textChanged);
            addChild(this.bestLevel_);
            _local14 = _0ZU.nextStarFame((((_arg3 == null)) ? 0 : _arg3._04z()), 0);
            if (_local14 > 0) {
                this.nextClassQuest_ = new _06T().setSize(13).setColor(16549442).setTextWidth(160).setMultiLine(true).setWordWrap(true);
                this.nextClassQuest_.setStringBuilder(new _5R().setParams(_TG._1nU, {
                    nextStarFame: _local14,
                    typeToDisplay: _arg1.DisplayId
                }));
                this.nextClassQuest_.filters = [new DropShadowFilter(0, 0, 0)];
                _qH.push(this.nextClassQuest_.textChanged);
                addChild(this.nextClassQuest_);
            }
            ;
        }
        ;
    }
    private var _0H:Bitmap;
    private var nameText_:_06T;
    private var _1xh:_06T;
    private var _0a1:_yz;
    private var bestLevel_:_06T;
    private var _1Yu:_06T;
    private var unlockText_:_06T;
    private var nextClassQuest_:_06T;
    private var costText_:_06T;
    private var _0yZ:Bitmap;
    private var _1rK:Boolean;

    override protected function alignUI():void {
        this.nameText_.x = 32;
        this.nameText_.y = 6;
        this._1xh.x = 8;
        this._1xh.y = 40;
        this._0a1.x = 6;
        this._0a1.y = height;
        if (this._1rK) {
            this._1Yu.x = 8;
            this._1Yu.y = (height - 2);
            this.unlockText_.x = 12;
            this.unlockText_.y = (height - 4);
            this.costText_.x = 12;
            this.costText_.y = (height - 4);
            this._0yZ.y = (this.costText_.y - 2);
            this._0yZ.x = ((this.costText_.x + this.costText_.getBounds(this.costText_).width) + 4);
        } else {
            this.bestLevel_.x = 8;
            this.bestLevel_.y = (height - 2);
            if (this.nextClassQuest_) {
                this.nextClassQuest_.x = 8;
                this.nextClassQuest_.y = (height - 2);
            }
            ;
        }
        ;
        this.draw();
        position();
    }

    override public function draw():void {
        this._0a1._1s9((width - 10), 0x1C1C1C);
        super.draw();
    }

    private function _0il(_arg1:_FU, _arg2:XML):Boolean {
        var _local3:Boolean = _arg1._1lO(String(_arg2.@id), _0Iq._0l9);
        var _local4:Boolean = _arg1._8I(int(_arg2.@type));
        return (((!(_local3)) && (!(_local4))));
    }


}
}//package _Z0

