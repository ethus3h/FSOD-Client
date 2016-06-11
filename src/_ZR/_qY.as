// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_ZR._qY

package _ZR {
import _Z0.QuestToolTip;
import _Z0.ToolTip;
import _Z0._1yn;

import com.company.assembleegameclient.map.Map;
import com.company.assembleegameclient.map.Quest;
import com.company.assembleegameclient.map._18q;
import com.company.assembleegameclient.objects.GameObject;
import com.company.assembleegameclient.parameters.Parameters;

import flash.events.MouseEvent;
import flash.utils.getTimer;

public class _qY extends _0Lx {

    public function _qY(_arg1:Map) {
        super(16352321, 12919330, true);
        this.map_ = _arg1;
    }
    public var map_:Map;

    override public function draw(_arg1:int, _arg2:_18q):void {
        var _local4:Boolean;
        var _local5:Boolean;
        var _local3:GameObject = this.map_.quest_.getObject(_arg1);
        if (_local3 != go_) {
            _1bQ(_local3);
            _1jT(this.getToolTip(_local3, _arg1));
        } else {
            if (go_ != null) {
                _local4 = (_Ly is QuestToolTip);
                _local5 = this._1CZ(_arg1);
                if (_local4 != _local5) {
                    _1jT(this.getToolTip(_local3, _arg1));
                }
                ;
            }
            ;
        }
        ;
        super.draw(_arg1, _arg2);
    }

    public function refreshToolTip():void {
        _1jT(this.getToolTip(go_, getTimer()));
    }

    private function getToolTip(_arg1:GameObject, _arg2:int):ToolTip {
        if ((((_arg1 == null)) || ((_arg1.texture_ == null)))) {
            return (null);
        }
        ;
        if (this._1CZ(_arg2)) {
            return (new QuestToolTip(go_));
        }
        ;
        if (Parameters.data_.showQuestPortraits) {
            return (new _1yn(_arg1));
        }
        ;
        return (null);
    }

    private function _1CZ(_arg1:int):Boolean {
        var _local2:Quest = this.map_.quest_;
        return (((_cL) || (_local2.isNew(_arg1))));
    }

    override protected function onMouseOver(_arg1:MouseEvent):void {
        super.onMouseOver(_arg1);
        this.refreshToolTip();
    }

    override protected function onMouseOut(_arg1:MouseEvent):void {
        super.onMouseOut(_arg1);
        this.refreshToolTip();
    }


}
}//package _ZR

