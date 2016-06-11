// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_085._011

package _085 {
import _0Mr._1vN;
import _0Mr._5R;

import _1T3.*;

import _6u._TG;

import com.company.assembleegameclient.util.offer.Offer;

public class _011 implements _hh {


    public function _1L1():Boolean {
        return (true);
    }

    public function _kU():Boolean {
        return (true);
    }

    public function _1F(_arg1:Offer):_1vN {
        return (new _5R().setParams(_TG._0NL, {cost: _arg1.price_}));
    }

    public function _0x8():String {
        return ("rotmg.KabamPayment.setupRotmgAccount");
    }


}
}//package _085

