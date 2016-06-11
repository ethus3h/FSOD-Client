// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._03x

package _07g {
import _0MO._07F;

import _1Fr._qf;

import _r7._17v;

import com.company.assembleegameclient.objects.Player;

public class _03x extends _17v {

    [Inject]
    public var view:_11N;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1VF:_07F;


    override public function initialize():void {
        this._1VF.add(this._09V);
    }

    override public function destroy():void {
        this._1VF.add(this._09V);
    }

    private function _09V(_arg1:Player):void {
        this.view.update(_arg1);
    }


}
}//package _07g

