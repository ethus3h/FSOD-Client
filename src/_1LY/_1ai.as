// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._1ai

package _1LY {
import _0hi._1IP;

import _10a._1bT;

import _1i0._cz;
import _1i0._nB;

import _U1.CharacterSelectionAndNewsScreen;

import com.company.assembleegameclient.game.GameSprite;

import flash.display.Sprite;

public class _1ai {

    [Inject]
    public var _0ke:_1bT;
    [Inject]
    public var update:_1IP;
    [Inject]
    public var _1Dx:_cz;
    [Inject]
    public var _09N:_nB;


    public function execute():void {
        this.update.dispatch();
        this._1Dx.dispatch();
        this._09N.dispatch(this._1sj());
    }

    private function _1sj():Sprite {
        var _local1:Class = this._0ke._1Qb();
        if ((((_local1 == null)) || ((_local1 == GameSprite)))) {
            _local1 = CharacterSelectionAndNewsScreen;
        }
        ;
        return (new (_local1)());
    }


}
}//package _1LY

