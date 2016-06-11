// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tb._0iU

package _0tb {
import _1PM._1YQ;

import flash.events.ErrorEvent;

public class _0iU {

    [Inject]
    public var _1TT:_1YQ;
    [Inject]
    public var event:ErrorEvent;


    public function execute():void {
        this._1TT.error(this.event.text);
        if (((this.event["error"]) && ((this.event["error"] is Error)))) {
            this._1dy(this.event["error"]);
        }
        ;
    }

    private function _1dy(_arg1:Error):void {
        this._1TT.error(_arg1.message);
        this._1TT.error(_arg1.getStackTrace());
    }


}
}//package _0tb

