// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0JD.ReskinPanel

package _0JD {
import _0Mr._5R;

import _0Ql._0q;

import _0y9._06T;

import _1Sm._sy;

import _1f4.Panel;

import _6u._TG;

import com.company.assembleegameclient.game.GameSprite;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.assembleegameclient.ui._1jP;

import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.filters.DropShadowFilter;
import flash.text.TextFieldAutoSize;

public class ReskinPanel extends Panel {

    private const title:_06T = _JX();
    private const button:_1jP = _0Cf();
    private const _02v:_sy = new _0q(button, MouseEvent.CLICK);
    public const reskin:_sy = new _sy();

    public function ReskinPanel(_arg1:GameSprite = null) {
        super(_arg1);
        this._02v.add(this._1Lb);
    }

    private function _1Lb():void {
        this.reskin.dispatch();
    }

    private function _JX():_06T {
        var _local1:_06T;
        _local1 = new _06T().setSize(18).setColor(0xFFFFFF).setAutoSize(TextFieldAutoSize.CENTER);
        _local1.x = (WIDTH / 2);
        _local1.setBold(true);
        _local1.filters = [new DropShadowFilter(0, 0, 0)];
        _local1.setStringBuilder(new _5R().setParams(_TG._Bl));
        addChild(_local1);
        return (_local1);
    }

    private function _0Cf():_1jP {
        var _local1:_1jP = new _1jP(16, _TG._0xb);
        _local1.textChanged.addOnce(this._TQ);
        addChild(_local1);
        return (_local1);
    }

    private function _TQ():void {
        this.button.x = ((WIDTH / 2) - (this.button.width / 2));
        this.button.y = ((HEIGHT - this.button.height) - 4);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((stage.focus == null)))) {
            this.reskin.dispatch();
        }
        ;
    }


}
}//package _0JD

