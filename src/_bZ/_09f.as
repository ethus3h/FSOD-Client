// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bZ._09f

package _bZ {
import _UB._0fY;
import _UB._1Xg;

import flash.display.DisplayObject;
import flash.events.Event;
import flash.utils.getDefinitionByName;

public class _09f {

    private static const _1os:Boolean = _1Wf();

    private static var _0WB:Class;

    private static function _1Wf():Boolean {
        try {
            _0WB = (getDefinitionByName("mx.core::UIComponent") as Class);
        } catch (error:Error) {
        }
        ;
        return (!((_0WB == null)));
    }

    public function _09f(_arg1:_0fY) {
        this._factory = _arg1;
        this._factory.addEventListener(_1Xg._00N, this._0Tv);
        this._factory.addEventListener(_1Xg._dj, this._13P);
    }
    private var _factory:_0fY;

    private function _1zj(_arg1:Object, _arg2:Object):void {
        if (_arg2.hasOwnProperty("viewComponent")) {
            _arg2.viewComponent = _arg1;
        }
        ;
        if (_arg2.hasOwnProperty("initialize")) {
            _arg2.initialize();
        }
        ;
    }

    private function _UT(_arg1:Object):void {
        if (_arg1.hasOwnProperty("destroy")) {
            _arg1.destroy();
        }
        ;
    }

    private function _0Tv(_arg1:_1Xg):void {
        var mediator:Object;
        var displayObject:DisplayObject;
        var event:_1Xg = _arg1;
        mediator = event.mediator;
        displayObject = (event.view as DisplayObject);
        if (!displayObject) {
            this._1zj(event.view, mediator);
            return;
        }
        ;
        displayObject.addEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        if (((((_1os) && ((displayObject is _0WB)))) && (!(displayObject["initialized"])))) {
            displayObject.addEventListener("creationComplete", function (_arg1:Event):void {
                displayObject.removeEventListener("creationComplete", arguments.callee);
                if (_factory._1Pb(displayObject, event.mapping)) {
                    _1zj(displayObject, mediator);
                }
                ;
            });
        } else {
            this._1zj(displayObject, mediator);
        }
        ;
    }

    private function _13P(_arg1:_1Xg):void {
        var _local2:DisplayObject = (_arg1.view as DisplayObject);
        if (_local2) {
            _local2.removeEventListener(Event.REMOVED_FROM_STAGE, this.onRemovedFromStage);
        }
        ;
        if (_arg1.mediator) {
            this._UT(_arg1.mediator);
        }
        ;
    }

    private function onRemovedFromStage(_arg1:Event):void {
        this._factory._1B9(_arg1.target);
    }


}
}//package _bZ

