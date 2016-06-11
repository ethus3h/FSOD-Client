// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld.NewAbility

package _0ld {
import _0Mr._5R;

import _0Sj._1kR;

import _0y9._06T;

import _1Sm._sy;

import _Vb.*;

import flash.display.DisplayObjectContainer;
import flash.text.TextFieldAutoSize;

public class NewAbility extends _0p1 implements _1gk {

    private const _ay:_qK = new _qK();
    private const _6U:DisplayObjectContainer = _1kR._0gu();
    private const _0o2:Number = _6U.width;
    private const _1N4:Number = _6U.height;

    public function NewAbility(_arg1:String) {
        this._0mF = new _06T();
        this._1A6 = _arg1;
        super("NewAbility.gratz", "NewAbility.text", "NewAbility.righteous", null, null);
        this._ay.add(this, Dialog.LEFT_BUTTON);
    }
    public var _1A6:String;
    private var _0mF:_06T;

    override protected function makeUIAndAdd():void {
        this._0mF.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(_06T.MIDDLE).setColor(9632505).setSize(16).setBold(true).setStringBuilder(new _5R().setParams(this._1A6));
        this._6U.addChild(this._0mF);
        addChild(this._6U);
        box_.addChild(this._6U);
        _xZ.pushArgs(this._0mF.textChanged);
    }

    override protected function drawAdditionalUI():void {
        super.drawAdditionalUI();
        this._0mF.x = (this._0o2 / 2);
        this._0mF.y = (this._1N4 / 2);
        this._6U.x = ((WIDTH - this._6U.width) / 2);
        this._6U.y = (_1Ws.getBounds(box_).bottom + _0iD);
        leftButton.y = (this._6U.getBounds(box_).bottom + _0i4);
    }

    public function _Tt():String {
        return (this._1A6);
    }

    public function _zK():_sy {
        return (this._ay._zK());
    }


}
}//package _0ld

