// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cy._1XE

package _0cy {
import flash.display.Sprite;

public class _1XE extends Sprite {

    private var _Tg:Sprite;
    private var _0MN:Sprite;


    public function _p2(_arg1:Sprite):void {
        if (this._Tg == _arg1) {
            return;
        }
        ;
        this._N4();
        this._Tg = _arg1;
        addChild(_arg1);
    }

    public function _0TG():Sprite {
        return (this._0MN);
    }

    private function _N4():void {
        if (((this._Tg) && (contains(this._Tg)))) {
            this._0MN = this._Tg;
            removeChild(this._Tg);
        }
        ;
    }


}
}//package _0cy

