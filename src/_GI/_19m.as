// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_GI._19m

package _GI {
import com.company.assembleegameclient.objects.GameObject;

import flash.events.TimerEvent;
import flash.geom.Point;
import flash.utils.Timer;

public class _19m extends _1S9 {

    public function _19m(_arg1:GameObject) {
        this.go = _arg1;
    }
    public var start_:Point;
    public var go:GameObject;
    private var _0U3:Boolean;

    override public function update(_arg1:int, _arg2:int):Boolean {
        var _local3:Timer = new Timer(50, 12);
        _local3.addEventListener(TimerEvent.TIMER, this._5N);
        _local3.start();
        return (false);
    }

    private function _5N(_arg1:TimerEvent):void {
        this._0U3 = !(this._0U3);
        this.go._0F2(this._0U3);
    }


}
}//package _GI

