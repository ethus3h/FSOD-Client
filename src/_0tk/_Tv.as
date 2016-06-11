// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0tk._Tv

package _0tk {
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.utils.Dictionary;

public class _Tv extends Sprite {

    public function _Tv() {
        this._0Ul = new Dictionary();
        super();
        addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
    }
    private var _0Ul:Dictionary;
    private var _20G:int = 0;
    private var selected_:_0Jw = null;

    public function _08b():int {
        return (this.selected_._Ws);
    }

    public function _0ao(_arg1:int):void {
        var _local3:_0Jw;
        var _local2:int;
        while (_local2 < numChildren) {
            _local3 = (getChildAt(_local2) as _0Jw);
            if (_local3 == null) {
            } else {
                if (_local3._Ws == _arg1) {
                    this.setSelected(_local3);
                    return;
                }
                ;
            }
            ;
            _local2++;
        }
        ;
    }

    protected function setSelected(_arg1:_0Jw):void {
        if (this.selected_ != null) {
            this.selected_.setSelected(false);
        }
        ;
        this.selected_ = _arg1;
        this.selected_.setSelected(true);
    }

    protected function _T5(_arg1:String, _arg2:int, _arg3:Function, _arg4:int):void {
        var _local5:_0Jw = new _0Jw(_arg1, _arg3, _arg4);
        _local5.y = this._20G;
        addChild(_local5);
        this._0Ul[_arg2] = _local5;
        if (this.selected_ == null) {
            this.setSelected(_local5);
        }
        ;
        this._20G = (this._20G + 30);
    }

    protected function _vw():void {
        this._20G = (this._20G + 30);
    }

    private function onAddedToStage(_arg1:Event):void {
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function onRemovedFromStage(_arg1:Event):void {
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if (stage.focus != null) {
            return;
        }
        ;
        var _local2:_0Jw = this._0Ul[_arg1.keyCode];
        if (_local2 == null) {
            return;
        }
        ;
        _local2.callback_(_local2);
    }


}
}//package _0tk

