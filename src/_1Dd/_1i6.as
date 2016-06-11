// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Dd._1i6

package _1Dd {
import _Vb.Dialog;

public class _1i6 implements _0Qf {

    private static const _16j:String = 'There are currently no testing servers available. Please play on <font color="#7777EE"><a href="http://127.0.0.1/">127.0.0.1</a></font>.';
    private static const TITLE:String = "No Testing Servers";
    private static const _0Q:String = "/noTestingServers";


    public function _1l1():Dialog {
        return (new Dialog(TITLE, _16j, null, null, _0Q));
    }


}
}//package _1Dd

