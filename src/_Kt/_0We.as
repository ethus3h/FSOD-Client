// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Kt._0We

package _Kt {
import _0Mr._5R;

import _6u._1x1;

import _md._0AH;
import _md._1ty;

import _r7.Command;

import com.company.assembleegameclient.parameters.Parameters;

public class _0We extends Command {

    [Inject]
    public var _2Z:_1ty;
    [Inject]
    public var _0tm:_1x1;
    [Inject]
    public var _1L9:_0NT;
    [Inject]
    public var model:_0AH;


    override public function execute():void {
        this._e3();
        this._Zu();
        this.model._Cb(this._2Z);
        this._1L9.dispatch(this._2Z);
    }

    public function _1uK():void {
        var _local1:_5R = new _5R().setParams(this._2Z.text, this._2Z.tokens);
        _local1._qO(this._0tm._04());
        var _local2:String = _local1.getString();
        this._2Z.text = ((_local2) ? _local2 : this._2Z.text);
    }

    private function _Zu():void {
        var _local1:_5R;
        var _local2:String;
        if ((((this._2Z.name.length > 0)) && ((this._2Z.name.charAt(0) == "#")))) {
            _local1 = new _5R().setParams(this._2Z.name.substr(1, (this._2Z.name.length - 1)), this._2Z.tokens);
            _local1._qO(this._0tm._04());
            _local2 = _local1.getString();
            this._2Z.name = ((_local2) ? ("#" + _local2) : this._2Z.name);
        }
        ;
    }

    private function _e3():void {
        if ((((((((((this._2Z.name == Parameters._11L)) || ((this._2Z.name == Parameters._1o9)))) || ((this._2Z.name == Parameters._0c)))) || ((this._2Z.name == Parameters._0Cn)))) || ((this._2Z.name.charAt(0) == "#")))) {
            this._1uK();
        }
        ;
    }


}
}//package _Kt

