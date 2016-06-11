// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Kt._1VS

package _Kt {
import _1Fr._qf;

import _1d9._0z0;

import _6u._TG;

import _md._1ty;

import com.company.assembleegameclient.parameters.Parameters;

public class _1VS {

    [Inject]
    public var data:String;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1u7:_0z0;


    public function execute():void {
        if (this.data == "/help") {
            this._1u7.dispatch(_1ty.make(Parameters._0Cn, _TG._Im));
        } else {
            this._1b._1P.gsc_.playerText(this.data);
        }
        ;
    }


}
}//package _Kt

