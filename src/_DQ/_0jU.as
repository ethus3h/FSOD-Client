// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_DQ._0jU

package _DQ {
import _0Mr._5R;

import _0y9._06T;
import _0y9._1Ds;

import com.company.assembleegameclient.ui._mH;

public class _0jU extends _mH {

    public function _0jU(_arg1:int, _arg2:String, _arg3:int = 0) {
        super(_arg3);
        _1pL(_arg1);
        text_.setStringBuilder(new _5R().setParams(_arg2));
        initText();
    }

    override protected function makeText():_06T {
        return (new _1Ds());
    }


}
}//package _DQ

