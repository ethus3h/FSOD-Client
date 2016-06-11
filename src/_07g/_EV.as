// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._EV

package _07g {
import _0MO._07F;
import _0MO._0WQ;
import _0MO._gs;

import _1Fr._qf;

import _1Jc._1aj;

import _G8.Options;

import _md._1tJ;

import _r7._17v;

import com.company.assembleegameclient.objects.Player;
import com.company.assembleegameclient.objects._1Sg;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.googleanalytics.GA;

public class _EV extends _17v {

    [Inject]
    public var view:CharacterDetailsView;
    [Inject]
    public var _1b:_qf;
    [Inject]
    public var _1ts:_gs;
    [Inject]
    public var _1VF:_07F;
    [Inject]
    public var _LY:_0WQ;
    [Inject]
    public var _1yz:_1aj;
    [Inject]
    public var _196:_1Sg;
    [Inject]
    public var _1Zq:_1tJ;


    override public function initialize():void {
        this._1OO();
        this.view.init(this._1b._gH(), this._1b._B1());
        this._1VF.addOnce(this._09V);
        this._1VF.add(this._MW);
        this._LY.add(this._04A);
        this.view._1yv.add(this._1Ka);
        this.view._0Zv.add(this._0QP);
    }

    override public function destroy():void {
        this._1VF.remove(this._MW);
        this._LY.remove(this._04A);
        this.view._1yv.remove(this._1Ka);
        this.view._0Zv.remove(this._0QP);
    }

    private function _1OO():void {
        this.view._1yz = this._1yz;
        this.view._196 = this._196;
    }

    private function _1Ka():void {
        this._1Zq._G1();
        this._1b._1P.gsc_.escape();
        GA.global().trackEvent("enterPortal", "Nexus Button");
        Parameters.data_.needsRandomRealm = false;
        Parameters.save();
    }

    private function _0QP():void {
        this._1b._1P.mui_.clearInput();
        GA.global().trackEvent("options", "Options Button");
        this._1b._1P.addChild(new Options(this._1b._1P));
    }

    private function _09V(_arg1:Player):void {
        this.view.update(_arg1);
    }

    private function _MW(_arg1:Player):void {
        this.view.draw(_arg1);
    }

    private function _04A(_arg1:String):void {
        this.view.setName(_arg1);
    }


}
}//package _07g

