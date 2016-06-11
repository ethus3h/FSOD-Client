// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0no._1Wq

package _0no {
import _1d9._0l;

import com.company.assembleegameclient.game._1g;

public class _1Wq {

    [Inject]
    public var _0Kt:_0l;
    [Inject]
    public var view:GiftStatusDisplay;
    [Inject]
    public var _0kv:_1g;


    public function initialize():void {
        this._0Kt.add(this._07e);
        if (this._0kv._02J) {
            this.view._0Ci();
        } else {
            this.view._1pF();
        }
        ;
    }

    private function _07e():void {
        if (this._0kv._02J) {
            this.view._0Ci();
        } else {
            this.view._1pF();
        }
        ;
    }


}
}//package _0no

