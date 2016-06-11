// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0SK._1iH

package _0SK {
import _r7._17v;

public class _1iH extends _17v {

    [Inject]
    public var view:KongregateAccountInfoView;
    [Inject]
    public var _C:_Qo;


    override public function initialize():void {
        this.view.register.add(this._jy);
    }

    override public function destroy():void {
        this.view.register.remove(this._jy);
    }

    private function _jy():void {
        this._C._O2();
    }


}
}//package _0SK

