// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0ld._NF

package _0ld {
import _0y9._06T;

import _Vb.Dialog;

import flash.text.TextFormatAlign;

public class _NF {

    private static const _2S:int = 14;

    public function _NF(_arg1:Dialog):void {
        this._16Y = _arg1;
    }
    private var _16Y:Dialog;

    public function _T3():void {
        this._16Y._zj.setColor(Dialog._1iJ);
        this._16Y._1Ws.setHorizontalAlign(TextFormatAlign.CENTER);
        this._16Y._0iD = 4;
        this._16Y._0i4 = 18;
        this._16Y._1Qf = 18;
    }

    public function _1SX():void {
        var _local1:_06T = this._16Y._zj;
        var _local2:Number = (_local1.getBounds(this._16Y.rect_).bottom + this._16Y._0iD);
        this.drawLine(_local2);
    }

    public function drawLine(_arg1:Number):void {
        this._16Y.rect_.graphics.moveTo(0, _arg1);
        this._16Y.rect_.graphics.beginFill(0x666666, 1);
        this._16Y.rect_.graphics.drawRect(0, _arg1, (this._16Y._0j4 - 1), 2);
    }

    public function positionText():void {
        var _local1:_06T = this._16Y._zj;
        this._16Y._1Ws.y = ((_local1.getBounds(this._16Y.rect_).bottom + this._16Y._0iD) + _2S);
    }


}
}//package _0ld

