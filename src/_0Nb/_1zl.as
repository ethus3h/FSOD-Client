// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Nb._1zl

package _0Nb {
import flash.display.Shape;

public class _1zl extends Shape {

    private var _1pD:int;
    private var _height:int;
    private var _color:int;


    public function setSize(_arg1:int, _arg2:int):void {
        this._1pD = _arg1;
        this._height = _arg2;
        this._0D3();
    }

    public function setColor(_arg1:int):void {
        this._color = _arg1;
        this._0D3();
    }

    private function _0D3():void {
        graphics.clear();
        graphics.beginFill(this._color);
        graphics.drawRect(0, 0, this._1pD, this._height);
        graphics.endFill();
    }


}
}//package _0Nb

