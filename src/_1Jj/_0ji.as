// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Jj._0ji

package _1Jj {
import _0oZ.Console;

import _1RN._035;

public final class _0ji {

    [Inject]
    public var console:Console;
    [Inject]
    public var log:_035;


    public function execute():void {
        var _local1:String = ("  " + this.console._NM().join("\r  "));
        this.log.dispatch(_local1);
    }


}
}//package _1Jj

