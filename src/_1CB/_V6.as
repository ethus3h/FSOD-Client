// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._V6

package _1CB {
import flash.display.Bitmap;
import flash.display.Sprite;
import flash.geom.ColorTransform;

public class _V6 extends Sprite {

    public function _V6(_arg1:int, _arg2:Sprite, _arg3:Bitmap) {
        this.index = _arg1;
        this._0Zq(_arg2);
        if (_arg3) {
            this._1l2(_arg3);
        }
        ;
    }
    public var index:int;
    private var background:Sprite;
    private var icon:Bitmap;

    public function setSelected(_arg1:Boolean):void {
        var _local2:ColorTransform = this.background.transform.colorTransform;
        _local2.color = ((_arg1) ? _1Jz._1QI : _1Jz._1Kl);
        this.background.transform.colorTransform = _local2;
    }

    private function _0Zq(_arg1:Sprite):void {
        this.background = _arg1;
        addChild(_arg1);
    }

    private function _1l2(_arg1:Bitmap):void {
        this.icon = _arg1;
        _arg1.x = (_arg1.x - 5);
        _arg1.y = (_arg1.y - 11);
        addChild(_arg1);
    }


}
}//package _1CB

