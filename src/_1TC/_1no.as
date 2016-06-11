// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1TC._1no

package _1TC {
import com.company.assembleegameclient.util.Currency;
import com.company.googleanalytics.GA;

class _1no {

    public function _1no(_arg1:String, _arg2:int, _arg3:int, _arg4:Boolean) {
        this.id_ = _arg1;
        this.price_ = _arg2;
        this.currency_ = _arg3;
        this.converted_ = _arg4;
    }
    private var id_:String;
    private var price_:int;
    private var currency_:int;
    private var converted_:Boolean;

    public function record():void {
        switch (this.currency_) {
            case Currency._1mE:
                GA.global().trackEvent("credits", ((this.converted_) ? "buyConverted" : "buy"), this.id_, this.price_);
                return;
            case Currency.FAME:
                GA.global().trackEvent("credits", "buyFame", this.id_, this.price_);
                return;
            case Currency._vZ:
                GA.global().trackEvent("credits", "buyGuildFame", this.id_, this.price_);
                return;
        }
        ;
    }


}
}//package _1TC

