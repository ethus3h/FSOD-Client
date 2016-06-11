// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._1il

package _1CB {
import flash.display.DisplayObjectContainer;

public class _1il {

    public var target:DisplayObjectContainer;
    private var _11w:_mz;
    private var _qh:_mz;


    public function shift():void {
        this.target.removeChild(this._11w);
        this._11w = this._11w.next;
        if (this._11w) {
            this.target.addChild(this._11w);
        } else {
            this._qh = null;
        }
        ;
    }

    public function append(_arg1:_mz):void {
        _arg1.list = this;
        if (this._qh) {
            this._qh.next = _arg1;
            this._qh = _arg1;
        } else {
            this._11w = (this._qh = _arg1);
            this.target.addChild(_arg1);
        }
        ;
    }


}
}//package _1CB

