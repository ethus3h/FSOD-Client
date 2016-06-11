// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0Vn._Ar

package _0Vn {
import _r7._17v;

import flash.external.ExternalInterface;
import flash.net.URLRequest;
import flash.net.navigateToURL;

public class _Ar extends _17v {

    private static const _0O:String = "rotmg.KabamDotComLib.getKabamGamePage";
    private static const _0lU:String = "https://www.kabam.com";
    private static const TOP:String = "_top";

    [Inject]
    public var view:_0Nd;


    override public function initialize():void {
        this.view.close.addOnce(this._0mM);
    }

    private function _0mM():void {
        navigateToURL(new URLRequest(this._OV()), TOP);
    }

    private function _OV():String {
        var _local2:String;
        var _local1:String = _0lU;
        try {
            _local2 = ExternalInterface.call(_0O);
            if (((_local2) && (_local2.length))) {
                _local1 = _local2;
            }
            ;
        } catch (error:Error) {
        }
        ;
        return (_local1);
    }


}
}//package _0Vn

