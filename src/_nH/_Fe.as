// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_nH._Fe

package _nH {
import __Nj._0uG;
import __Nj._M4;

import _r7._17v;

import com.company.assembleegameclient.parameters.Parameters;

import flash.events.KeyboardEvent;
import flash.events.MouseEvent;

public class _Fe extends _17v {

    [Inject]
    public var view:_4m;
    [Inject]
    public var _0AQ:_0uG;
    [Inject]
    public var _nU:_M4;


    override public function initialize():void {
        this.view.init();
        if (_4m._TB()) {
            if (!_1IA._so) {
                this.view._20a.addEventListener(MouseEvent.CLICK, this._127);
                WebMain._0b2.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
            } else {
                _1eP.closed.add(this._1eV);
            }
            ;
        }
        ;
    }

    override public function destroy():void {
        _1eP.closed.remove(this._1eV);
        this.view._20a.removeEventListener(MouseEvent.CLICK, this._127);
        WebMain._0b2.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
        super.destroy();
    }

    private function _1eV():void {
        _1eP.closed.remove(this._1eV);
        this.view._20a.addEventListener(MouseEvent.CLICK, this._127);
        WebMain._0b2.addEventListener(KeyboardEvent.KEY_DOWN, this._13y);
    }

    protected function _127(_arg1:MouseEvent):void {
        if (!_1IA._so) {
            this._0AQ.dispatch(new _1IA());
            this.view._20a.removeEventListener(MouseEvent.CLICK, this._127);
            WebMain._0b2.removeEventListener(KeyboardEvent.KEY_DOWN, this._13y);
            _1eP.closed.add(this._1eV);
        }
        ;
    }

    private function _13y(_arg1:KeyboardEvent):void {
        if ((((_arg1.keyCode == Parameters.data_.interact)) && ((WebMain._0b2.focus == null)))) {
            this._127(null);
        }
        ;
    }


}
}//package _nH

