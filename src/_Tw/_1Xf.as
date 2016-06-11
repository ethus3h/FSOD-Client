// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Tw._1Xf

package _Tw {
import __Nj._0aS;
import __Nj._0ay;
import __Nj._0uG;
import __Nj._1G1;
import __Nj._1HT;
import __Nj._M4;

import _r7._17v;

import flash.display.Sprite;

public class _1Xf extends _17v {

    [Inject]
    public var view:_10n;
    [Inject]
    public var _0Ib:_0uG;
    [Inject]
    public var _nU:_M4;
    [Inject]
    public var _00G:_0ay;
    [Inject]
    public var _1vM:_1HT;
    [Inject]
    public var _1xB:_0aS;
    [Inject]
    public var _3c:_1G1;


    override public function initialize():void {
        this._1vM.add(this._XO);
        this._nU.add(this._Xb);
        this._0Ib.add(this._EY);
        this._00G.add(this._LK);
        this._1xB.add(this._0iV);
        this._3c.add(this._6o);
    }

    override public function destroy():void {
        this._1vM.remove(this._XO);
        this._nU.remove(this._Xb);
        this._0Ib.remove(this._EY);
        this._00G.remove(this._LK);
        this._1xB.remove(this._0iV);
        this._3c.remove(this._6o);
    }

    private function _0iV(_arg1:Sprite):void {
        this.view.push(_arg1);
    }

    private function _6o():void {
        this.view.pop();
    }

    private function _XO(_arg1:int = 0x151515):void {
        this.view._1gc(_arg1);
    }

    private function _Xb(_arg1:Sprite):void {
        this.view.show(_arg1, true);
    }

    private function _EY(_arg1:Sprite):void {
        this.view.show(_arg1, false);
    }

    private function _LK():void {
        this.view.stage.focus = null;
        this.view._1GX();
    }


}
}//package _Tw

