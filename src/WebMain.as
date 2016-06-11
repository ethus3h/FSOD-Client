// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//WebMain

package {
import _07n._1K1;

import _07r._1Gy;

import _09L._Gc;

import _0A5._1Ly;

import _0BD._0nP;

import _0CT._0J1;
import _0CT._8w;

import _0GE._Gs;

import _0Ym._9w;

import _0fD._0lE;

import _0st._19c;

import _0vq._ub;

import _0zG._0Jy;

import _16a._5x;

import _19o._B;

import _1ES._0jf;

import _1OQ._1AP;
import _1OQ._Gy;
import _1OQ._gi;

import _1PM._0tC;
import _1PM._Ld;

import _1SF._0vd;

import _1fe._1JX;

import _1iD._Gg;

import _1mS._1nW;

import _1qN._04t;

import _1s5._0TF;

import _1zr._FG;

import _2C._ed;

import _2R._0hl;

import _B4._081;

import _Dc._0EZ;

import _Qj._1lN;

import _Yc._NT;

import _fa._19v;

import _gr._12m;

import _km._bg;

import _lr._DT;

import _mq._2F;

import _nO._1EZ;

import _r7._0af;

import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.util.EmbeddedAssetsLoader;
import com.company.assembleegameclient.util._1hw;

import flash.display.LoaderInfo;
import flash.display.Sprite;
import flash.display.Stage;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.system.Capabilities;

import kabam.rotmg.assets._27;

[SWF(backgroundColor="#000000", width="800", height="600")]
public class WebMain extends Sprite {

    public static var _0b2:Stage;

    public function WebMain() {
        if (stage) {
            this.setup();
        } else {
            addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        }
        ;
    }
    protected var context:_Ld;

    private function setup():void {
        this._1OM();
        this._1Nf();
        new EmbeddedAssetsLoader().load();
        stage.scaleMode = StageScaleMode.EXACT_FIT;
        this.context._sk.getInstance(_12m).dispatch();
        this._ae();
        _0b2 = stage;
        stage.frameRate = 80;
    }

    private function _1OM():void {
        Parameters.root = stage.root;
    }

    private function _1Nf():void {
        this.context = new _8w();
        this.context._sk.map(LoaderInfo)._nR(root.stage.root.loaderInfo);
        var _local1:_1hw = new _1hw(this);
        this.context._sk.map(_1hw)._nR(_local1);
        this.context.extend(_0af).extend(_bg).configure(_081).configure(_1EZ).configure(_Gs).configure(_27).configure(_Gg).configure(_Gy).configure(_gi).configure(_B).configure(_1Gy).configure(_2F).configure(_DT).configure(_0EZ).configure(_0J1).configure(_1AP).configure(_1JX).configure(_0lE).configure(_1Ly).configure(_0vd).configure(_0nP).configure(_1K1).configure(_04t).configure(_0Jy).configure(_0hl).configure(_0TF).configure(_1lN).configure(_19v).configure(_9w).configure(_FG).configure(_NT).configure(_ed).configure(_ub).configure(_0jf).configure(_1nW).configure(_5x).configure(_Gc).configure(_19c).configure(this);
        this.context._OS = _0tC.DEBUG;
    }

    private function _ae():void {
        if (Capabilities.playerType == "Desktop") {
            Parameters.data_.fullscreenMode = false;
            Parameters.save();
        }
        ;
    }

    private function onAddedToStage(_arg1:Event):void {
        removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        this.setup();
    }


}
}//package 

