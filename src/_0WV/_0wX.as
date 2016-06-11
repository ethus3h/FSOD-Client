// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0WV._0wX

package _0WV {
import __1Ye._0nK;
import __1Ye._1bh;

public class _0wX {

    [Inject]
    public var analytics:_1bh;
    [Inject]
    public var _1HM:_0nK;


    public function execute():void {
        this.analytics.trackEvent(this._1HM.category, this._1HM._0HR, this._1HM.label, this._1HM.value);
    }


}
}//package _0WV

