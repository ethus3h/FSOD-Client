// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._S1

package _1CB {
import _1Sm._sy;

import com.company.util._1WM;

import flash.display.Bitmap;
import flash.display.GraphicsPath;
import flash.display.GraphicsSolidFill;
import flash.display.IGraphicsData;
import flash.display.Sprite;
import flash.events.MouseEvent;

public class _S1 extends Sprite {

    public const _0jE:_sy = new _sy(String);
    public const WIDTH:Number = 186;
    public const HEIGHT:Number = 153;
    private const _1Ba:Sprite = new Sprite();
    private const background:Sprite = new Sprite();
    private const _1tD:Sprite = new Sprite();

    public function _S1() {
        this._mU = new Vector.<_V6>();
        this._1io = new Vector.<Sprite>();
        super();
        this._1Ba.addEventListener(MouseEvent.CLICK, this._Ks);
        addChild(this._1Ba);
        this._QO();
        addChild(this._1tD);
        this._1tD.y = _1Jz._0AX;
    }
    public var _mU:Vector.<_V6>;
    public var _0Hj:int;
    private var _1io:Vector.<Sprite>;

    public function _0Jz(_arg1:uint):void {
        this._8f(this._mU[_arg1]);
    }

    public function _QO():void {
        var _local1:GraphicsSolidFill = new GraphicsSolidFill(_1Jz._1QI, 1);
        var _local2:GraphicsPath = new GraphicsPath(new Vector.<int>(), new Vector.<Number>());
        var _local3:Vector.<IGraphicsData> = new <IGraphicsData>[_local1, _local2, _1WM.END_FILL];
        _1WM._0lo(0, 0, this.WIDTH, (this.HEIGHT - _1Jz._0AX), 6, [1, 1, 1, 1], _local2);
        this.background.graphics.drawGraphicsData(_local3);
        this.background.y = _1Jz._0AX;
        addChild(this.background);
    }

    public function _1un():void {
        var _local1:uint;
        this._0Hj = 0;
        var _local2:uint = this._mU.length;
        _local1 = 0;
        while (_local1 < _local2) {
            this._1Ba.removeChild(this._mU[_local1]);
            this._1tD.removeChild(this._1io[_local1]);
            _local1++;
        }
        ;
        this._mU = new Vector.<_V6>();
        this._1io = new Vector.<Sprite>();
    }

    public function _03S(_arg1:Bitmap, _arg2:Sprite):void {
        var _local3:int = this._mU.length;
        var _local4:_V6 = this._1UM(_local3, _arg1);
        this._mU.push(_local4);
        this._1Ba.addChild(_local4);
        this._1io.push(_arg2);
        this._1tD.addChild(_arg2);
        if (_local3 > 0) {
            _arg2.visible = false;
        } else {
            _local4.setSelected(true);
            this._1lF(0);
            this._0jE.dispatch(_arg2.name);
        }
        ;
    }

    public function _1A():void {
    }

    private function _8f(_arg1:_V6):void {
        var _local2:_V6;
        if (_arg1) {
            _local2 = this._mU[this._0Hj];
            if (_local2.index != _arg1.index) {
                _local2.setSelected(false);
                _arg1.setSelected(true);
                this._1lF(_arg1.index);
                this._0jE.dispatch(this._1io[_arg1.index].name);
            }
            ;
        }
        ;
    }

    private function _1UM(_arg1:int, _arg2:Bitmap):_V6 {
        var _local4:_V6;
        var _local3:Sprite = new _0vH();
        _local4 = new _V6(_arg1, _local3, _arg2);
        _local4.x = (_arg1 * (_local3.width + _1Jz._1U6));
        _local4.y = _1Jz._1EN;
        return (_local4);
    }

    private function _1lF(_arg1:int):void {
        var _local2:Sprite;
        var _local3:Sprite;
        if (_arg1 != this._0Hj) {
            _local2 = this._1io[this._0Hj];
            _local3 = this._1io[_arg1];
            _local2.visible = false;
            _local3.visible = true;
            this._0Hj = _arg1;
        }
        ;
    }

    private function _Ks(_arg1:MouseEvent):void {
        this._8f((_arg1.target.parent as _V6));
    }


}
}//package _1CB

