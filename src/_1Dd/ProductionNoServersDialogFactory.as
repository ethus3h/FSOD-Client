// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1Dd.ProductionNoServersDialogFactory

package _1Dd {
import _6u._TG;

import _Vb.Dialog;

public class ProductionNoServersDialogFactory implements _0Qf {

    private static const forums_link:String = '<font color="#7777EE"><a href="http://forums.wildshadow.com/">forums.wildshadow.com</a></font>';
    private static const _0Q:String = "/offLine";


    public function _1l1():Dialog {
        var _local1:Dialog = new Dialog(_TG._1Qd, "", null, null, _0Q);
        _local1._1Ws.setHTML(true);
        _local1._Mu(_TG._Ix, {forums_link: forums_link});
        return (_local1);
    }


}
}//package _1Dd

