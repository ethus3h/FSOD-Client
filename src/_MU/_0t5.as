// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_MU._0t5

package _MU {
import _0PF._0ru;
import _0PF._15v;

import _1Sm._sy;

import _6u._TG;

import _eK._9W;

import _gl._0An;

import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.util._bp;
import com.company.util.MoreColorUtil;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.filters.ColorMatrixFilter;
import flash.geom.ColorTransform;

public class _0t5 extends _1kK {

    public const _1Ul:_sy = new _sy(int);
    public const _0za:_sy = new _sy();

    public function _0t5() {
        this._0Nj = new ColorMatrixFilter(MoreColorUtil._1Bu);
        super();
        _Vc.addEventListener(MouseEvent.MOUSE_DOWN, this.onMouseDown);
        this.updateTitle();
    }
    public var _hL:Boolean = false;
    public var _02M:Boolean = true;
    protected var _0Nj:ColorMatrixFilter;
    private var _1qp:Function;

    public function _0Ca(_arg1:Boolean):void {
        var _local2:ColorTransform;
        if (this._hL != _arg1) {
            this._hL = _arg1;
            _Vc.filters = ((_arg1) ? [this._0Nj] : []);
            _local2 = ((_arg1) ? MoreColorUtil._KM : new ColorTransform());
            _Vc.transform.colorTransform = _local2;
        }
        ;
    }

    public function setItem(_arg1:int, _arg2:int, _arg3:int, _arg4:Function):void {
        if (this.itemId != _arg1) {
            this._0Mj();
            this.itemId = _arg1;
            this._0k = _arg2;
            this.objectId = _arg3;
            _39.bitmapData = ObjectLibrary.getRedrawnTextureFromType(_arg1, 80, true);
            _0d0();
            this.updateTitle();
            this._1qp = _arg4;
        }
        ;
    }

    public function _1WY(_arg1:int):void {
        this._1Ul.dispatch(_arg1);
    }

    public function updateTitle():void {
        var _local1:XML;
        var _local2:String;
        if (((itemId) && (!((itemId == -1))))) {
            setTitle(_TG._1NG, {});
            _local1 = ObjectLibrary._22(ObjectLibrary._4C(itemId));
            _local2 = ((_local1.hasOwnProperty("feedPower")) ? _local1.feedPower : "0");
            _1lj(_TG._1Je, {data: _local2});
        } else {
            setTitle(_TG._0ck, {});
            _1lj(_TG._1Je, {data: ""});
        }
        ;
    }

    public function _6V(_arg1:Function):void {
        this._1qp = _arg1;
    }

    public function _3Z():void {
        this._0Mj();
        itemId = _0An._5v;
        _39.bitmapData = null;
        _0k = -1;
        objectId = -1;
        this.updateTitle();
    }

    private function _0Mj():void {
        ((this._1qp) && (this._1qp()));
        this._1qp = null;
    }

    private function _1mr(_arg1:int, _arg2:int):void {
        _39.x = (-(_39.width) / 2);
        _39.y = (-(_39.height) / 2);
        _Vc.x = _arg1;
        _Vc.y = _arg2;
    }

    override protected function onRemovedFromStage(_arg1:Event):void {
        super.onRemovedFromStage(_arg1);
        this._0Mj();
    }

    private function onMouseDown(_arg1:MouseEvent):void {
        if (!this._hL) {
            this._1mr(_arg1.stageX, _arg1.stageY);
            _Vc.startDrag(true);
            _Vc.addEventListener(MouseEvent.MOUSE_UP, this._08e);
            if (((!((_Vc.parent == null))) && (!((_Vc.parent == stage))))) {
                removeChild(_Vc);
                stage.addChild(_Vc);
            }
            ;
        }
        ;
    }

    private function _08e(_arg1:MouseEvent):void {
        _Vc.stopDrag();
        _Vc.removeEventListener(MouseEvent.MOUSE_UP, this._08e);
        stage.removeChild(_Vc);
        addChild(_Vc);
        _0d0();
        var _local2:* = _bp._0Wy(_Vc.dropTarget, _15v, _0ru, _9W);
        if (((((!((_local2 is _15v))) && (!((_local2 is _0ru))))) && (!((((_local2 is _9W)) && (((_local2 as _9W)._0Vx == true))))))) {
            this._02M = true;
            itemId = _0An._5v;
            _39.bitmapData = null;
            this._0Mj();
            this._0za.dispatch();
            this.updateTitle();
        }
        ;
    }


}
}//package _MU

