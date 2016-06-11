// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_09n._87

package _09n {
import _0Mr._1vN;
import _0Mr._5R;

import _1T3.*;

import _6u._TG;

import com.company.assembleegameclient.util.offer.Offer;

public class _87 implements _hh {


    public function _1L1():Boolean {
        return (false);
    }

    public function _kU():Boolean {
        return (false);
    }

    public function _1F(_arg1:Offer):_1vN {
        return (new _5R().setParams(_TG._0t9, {cost: _arg1.price_}));
    }

    public function _0x8():String {
        throw (new Error("No current support for new Kabam offer wall on Kongregate."));
    }


}
}//package _09n

