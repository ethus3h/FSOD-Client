// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._JF

package _07g {
import _1i0._0kU;

import _U1._4H;

import _r7._17v;

public class _JF extends _17v {

    [Inject]
    public var view:_4H;
    [Inject]
    public var _0O0:_0kU;


    override public function initialize():void {
        this._0O0.add(this._0S);
        this.view._1a2("Loading.text");
    }

    override public function destroy():void {
        this._0O0.remove(this._0S);
    }

    private function _0S(_arg1:String):void {
        this.view._1a2(_arg1);
    }


}
}//package _07g

