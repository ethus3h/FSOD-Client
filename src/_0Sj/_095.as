// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Sj._095

package _0Sj {
import _1Sm._sy;

import _DO.GTween;

import flash.display.Shape;
import flash.display.Sprite;
import flash.geom.ColorTransform;

public class _095 extends Sprite {

    public const _0Nz:_sy = new _sy(Boolean);
    public const _0tp:_sy = new _sy();
    private const _1HH:uint = 0xB3B3B3;
    private const _4v:uint = 1572859;
    private const _41:uint = 0x565656;

    public function _095(_arg1:int, _arg2:int) {
        this._0iH = new Shape();
        this._43 = new Shape();
        super();
        this._sr = _arg1;
        this._0rZ = _arg2;
        this._43.graphics.beginFill(this._41, 1);
        this._43.graphics.drawRect(0, 0, _arg1, _arg2);
        addChild(this._43);
        addChild(this._0iH);
    }
    public var _1xm:int = -1;
    private var _0iH:Shape;
    private var _43:Shape;
    private var _1XD:int = 0;
    private var _sr:int = 0;
    private var _0rZ:int = 0;

    public function reset():void {
        this._1xm = 0;
        this._0iH.graphics.clear();
        this._0iH.graphics.beginFill(this._1HH, 1);
        this._0iH.graphics.drawRect(0, 0, 1, this._0rZ);
        this._0iH.width = 1;
    }

    public function fill():void {
        if (this._1xm == this._1XD) {
            this.reset();
            this._0tp.dispatch();
            return;
        }
        ;
        var _local1:Number = this._sr;
        this._0e5(this._4v);
        var _local2:GTween = new GTween(this._0iH, 1, {width: _local1});
        _local2.onComplete = this._14;
    }

    public function _0e5(_arg1:uint):void {
        var _local2:ColorTransform = this._0iH.transform.colorTransform;
        _local2.color = _arg1;
        this._0iH.transform.colorTransform = _local2;
    }

    public function _0BK(_arg1:int):void {
        this._1XD = _arg1;
        this._1a3();
    }

    public function _1WE(_arg1:int):void {
        var _local2:Number;
        if (this._1xm == -1) {
            this._1xm = _arg1;
            _local2 = this._0zJ();
            this._0iH.graphics.beginFill(this._1HH, 1);
            this._0iH.graphics.drawRect(0, 0, _local2, this._0rZ);
        }
        ;
        this._1xm = _arg1;
        this._1a3();
    }

    public function _0ia(_arg1:GTween):void {
        this._0e5(this._1HH);
        this._0Nz.dispatch(false);
    }

    private function _14(_arg1:GTween):void {
        this._0tp.dispatch();
    }

    private function _1a3():void {
        var _local2:GTween;
        var _local1:int = this._0zJ();
        if (((((!((this._1xm == -1))) && (!((this._1xm == 0))))) && (!((_local1 == Math.round(this._0iH.width)))))) {
            this._0Nz.dispatch(true);
            this._0e5(this._4v);
            _local2 = new GTween(this._0iH, 2, {width: _local1});
            _local2.onComplete = this._0ia;
        }
        ;
    }

    private function _0zJ():int {
        var _local1:int = ((this._1xm * this._sr) / this._1XD);
        return (((isNaN(_local1)) ? 1 : Math.round(Math.max(1, Math.min(this._sr, _local1)))));
    }


}
}//package _0Sj

