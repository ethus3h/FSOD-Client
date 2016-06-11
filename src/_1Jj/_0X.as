// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Jj._0X-

package _1Jj {
import _1RN._0Qv;
import _1RN._1ii;
import _1RN._7E;
import _1RN._BC;
import _1RN._Yg;

import _pz._1Oo;

public class _0X {

    [Inject]
    public var register:_BC;
    [Inject]
    public var _1ja:_1ii;
    [Inject]
    public var _0Bx:_7E;
    [Inject]
    public var _0zB:_0Qv;
    [Inject]
    public var _0vr:_Yg;


    public function execute():void {
        var _local1:_1Oo;
        _local1 = new _1Oo();
        _local1.name = "list";
        _local1.description = "lists available console commands";
        var _local2:_1Oo = new _1Oo();
        _local2.name = "clear";
        _local2.description = "clears the console";
        var _local3:_1Oo = new _1Oo();
        _local3.name = "exit";
        _local3.description = "closes the console";
        var _local4:_1Oo = new _1Oo();
        _local4.name = "copy";
        _local4.description = "copies the contents of the console to the clipboard";
        this.register.dispatch(_local1, this._1ja);
        this.register.dispatch(_local2, this._0Bx);
        this.register.dispatch(_local3, this._0zB);
        this.register.dispatch(_local4, this._0vr);
    }


}
}//package _1Jj

