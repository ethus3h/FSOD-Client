// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_md._0AH

package _md {
import flash.geom.Rectangle;

public class _0AH {

    public function _0AH() {
        this._06N = new Vector.<_1ty>();
        super();
        this._5m = new Rectangle(0, 0, 600, 300);
        this._1M4 = 20;
        this._0GJ = 10;
        this._0AS = 150;
    }
    public var _5m:Rectangle;
    public var _1M4:int;
    public var _0GJ:int;
    public var _0AS:int;
    public var _06N:Vector.<_1ty>;

    public function _Cb(_arg1:_1ty):void {
        this._06N.push(_arg1);
        if (this._06N.length > this._0AS) {
            this._06N.shift();
        }
        ;
    }


}
}//package _md

