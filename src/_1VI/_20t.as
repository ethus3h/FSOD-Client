// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1VI._20t

package _1VI {
import flash.display3D.IndexBuffer3D;

public class _20t {

    public function _20t(_arg1:String = null, _arg2:String = null) {
        this.name = _arg1;
        this._IQ = _arg2;
        this._0Q5 = new Vector.<Vector.<String>>();
        this._1fi = new Vector.<uint>();
    }
    public var name:String;
    public var _IQ:String;
    public var _1jc:IndexBuffer3D;
    var _0Q5:Vector.<Vector.<String>>;
    var _1fi:Vector.<uint>;

    public function dispose():void {
        if (this._1jc != null) {
            this._1jc.dispose();
            this._1jc = null;
        }
        ;
        this._0Q5.length = 0;
        this._1fi.length = 0;
    }


}
}//package _1VI

