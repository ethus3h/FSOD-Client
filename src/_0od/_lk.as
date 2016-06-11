// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0od._lk

package _0od {
import flash.display.Sprite;

public class _lk extends Sprite {

    private static const BEVEL:int = 4;

    public function _lk(_arg1:Number, _arg2:Number) {
        this._0Ln = _arg1;
        this._0aA = _arg2;
        this._1lp = new Sprite();
        this._rd = new Sprite();
        addChild(this._1lp);
        addChild(this._rd);
        this.update(0);
    }
    private var _0Ln:Number = 100;
    private var _0aA:Number = 10;
    private var _1lp:Sprite;
    private var _rd:Sprite;

    public function update(_arg1:Number):void {
        this._PS(this._rd, 0xFFFFFF, ((_arg1 * 0.01) * this._0Ln));
        this._PS(this._1lp, 0, this._0Ln);
    }

    private function _PS(_arg1:Sprite, _arg2:uint, _arg3:Number):Sprite {
        _arg1.graphics.clear();
        _arg1.graphics.beginFill(_arg2);
        _arg1.graphics.drawRect(0, 0, _arg3, this._0aA);
        _arg1.graphics.endFill();
        return (_arg1);
    }


}
}//package _0od

