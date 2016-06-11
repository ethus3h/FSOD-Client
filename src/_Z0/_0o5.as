// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0._0o5

package _Z0 {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.ui._wA;

import flash.filters.DropShadowFilter;

public class _0o5 extends ToolTip {

    public function _0o5(_arg1:Vector.<Player>, _arg2:Boolean = true) {
        this._e8 = new Vector.<_wA>();
        super(0x363636, 0.5, 0xFFFFFF, 1, _arg2);
        this._ta = new _06T().setSize(12).setColor(0xB3B3B3);
        this._ta.setStringBuilder(new _5R().setParams(_TG._1us));
        this._ta.filters = [new DropShadowFilter(0, 0, 0)];
        addChild(this._ta);
        this._15j(_arg1);
        if (!_arg2) {
            filters = [];
        }
        ;
        _qH.push(this._ta.textChanged);
    }
    public var _0Ih:Vector.<Player> = null;
    private var _e8:Vector.<_wA>;
    private var _ta:_06T;

    public function _15j(_arg1:Vector.<Player>):void {
        var _local3:Player;
        var _local4:_wA;
        this.clear();
        this._0Ih = _arg1.slice();
        if ((((this._0Ih == null)) || ((this._0Ih.length == 0)))) {
            return;
        }
        ;
        var _local2:int;
        for each (_local3 in _arg1) {
            _local4 = new _wA(0xB3B3B3, true, _local3);
            _local4.x = 0;
            _local4.y = _local2;
            addChild(_local4);
            this._e8.push(_local4);
            _local2 = (_local2 + 32);
        }
        ;
        this._ta.x = ((width / 2) - (this._ta.width / 2));
        this._ta.y = _local2;
        draw();
    }

    private function clear():void {
        var _local1:_wA;
        graphics.clear();
        for each (_local1 in this._e8) {
            removeChild(_local1);
        }
        ;
        this._e8.length = 0;
    }


}
}//package _Z0

