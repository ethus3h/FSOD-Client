// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_45._rr

package _45 {
import _0MO._07F;

import _1qi._ry;

import _r7._17v;

import com.company.assembleegameclient.objects.Player;

public class _rr extends _17v {

    [Inject]
    public var view:_ry;
    [Inject]
    public var _1VF:_07F;


    override public function initialize():void {
        this._1VF.add(this._09V);
    }

    override public function destroy():void {
        this._1VF.remove(this._09V);
    }

    private function _09V(_arg1:Player):void {
        this.view.draw();
    }


}
}//package _45

