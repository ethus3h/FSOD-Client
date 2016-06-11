// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1CB._1Qk

package _1CB {
import _07g._gC;

import _0MO._07F;

import _r7._17v;

import com.company.assembleegameclient.objects.Player;

import flash.events.MouseEvent;

public class _1Qk extends _17v {

    [Inject]
    public var view:__0Vh;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _0tg:_0r;
    [Inject]
    public var _Q6:_gC;


    override public function initialize():void {
        this.view._0Jd.add(this._1rF);
        this._1VF.add(this._09V);
        this._Q6.add(this._Yf);
    }

    override public function destroy():void {
        this.view._0Jd.remove(this._1rF);
        this._1VF.remove(this._09V);
    }

    private function _09V(_arg1:Player):void {
        this.view.draw(_arg1);
    }

    private function _Yf():void {
        this.view._c();
    }

    private function _1rF(_arg1:MouseEvent):void {
        if (this.view._64 == __0Vh._0On) {
            this.view._5W();
            this._0tg.dispatch(this.view);
        }
        ;
    }


}
}//package _1CB

