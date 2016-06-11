// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Z0.QuestToolTip

package _Z0 {
import _0Mr._5R;

import _0y9._06T;

import _6u._TG;

import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.ui._wA;

import flash.filters.DropShadowFilter;

public class QuestToolTip extends ToolTip {

    public function QuestToolTip(_arg1:GameObject) {
        super(6036765, 1, 16549442, 1, false);
        this.text_ = new _06T().setSize(22).setColor(16549442).setBold(true);
        this.text_.setStringBuilder(new _5R().setParams(_TG._0EA));
        this.text_.filters = [new DropShadowFilter(0, 0, 0)];
        this.text_.x = 0;
        this.text_.y = 0;
        _qH.push(this.text_.textChanged);
        addChild(this.text_);
        this._0PL = new _wA(0xB3B3B3, true, _arg1);
        this._0PL.x = 0;
        this._0PL.y = 32;
        _qH.push(this._0PL._jU);
        addChild(this._0PL);
        filters = [];
    }
    public var _0PL:_wA;
    private var text_:_06T;

}
}//package _Z0

