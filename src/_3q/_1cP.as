// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_3q._1cP

package _3q {
import _0y8._1xD;

import _1i0._0Ie;

import _1pV.Timespan;
import _1pV._0BG;
import _1pV._nD;

import _GD._7t;

import _X7._17k;
import _X7._P3;
import _X7._ns;

import _r7._17v;

public class _1cP extends _17v {

    [Inject]
    public var view:_0av;
    [Inject]
    public var model:_0BG;
    [Inject]
    public var _gn:_7t;
    [Inject]
    public var _1n5:_1xD;
    [Inject]
    public var _1ih:_P3;
    [Inject]
    public var update:_17k;
    [Inject]
    public var exit:_ns;
    [Inject]
    public var _16k:_0Ie;


    override public function initialize():void {
        this._16k.dispatch("/legendsScreen");
        this.view.close.add(this._0mM);
        this.view._1Gw.add(this._L);
        this.view._1tk.add(this._0YM);
        this.update.add(this._0B6);
        this._L(this.model._0Ud());
    }

    override public function destroy():void {
        this.view.close.remove(this._0mM);
        this.view._1Gw.remove(this._L);
        this.view._1tk.remove(this._0YM);
        this.update.remove(this._0B6);
        this._gn._Br();
        this.model.clear();
    }

    private function _0mM():void {
        this.exit.dispatch();
    }

    private function _L(_arg1:Timespan):void {
        this.model._1Re(_arg1);
        if (this.model._1dD()) {
            this._0B6();
        } else {
            this._0el();
        }
        ;
    }

    private function _0el():void {
        this.view.clear();
        this.view._0NV();
        this._1ih.dispatch(this.model._0Ud());
    }

    private function _0B6(_arg1:Timespan = null):void {
        _arg1 = ((_arg1) || (this.model._0Ud()));
        this.view._00A();
        this.view._1S5(_arg1, this.model._0zO());
    }

    private function _0YM(_arg1:_nD):void {
        this._1n5.dispatch(_arg1);
    }


}
}//package _3q

