// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1l6._0Dr

package _1l6 {
import _0tf.*;

import _1Sm._0N3;

import _4p._1ae;

import flash.net.URLLoaderDataFormat;

public class _0Dr implements _0yo {

    public function _0Dr() {
        this._Lz = true;
        this._0sp = 0;
        this.dataFormat = URLLoaderDataFormat.TEXT;
    }
    [Inject]
    public var loader:_0lD;
    [Inject]
    public var setup:_1ae;
    private var _Lz:Boolean;
    private var _0sp:int;
    private var dataFormat:String;

    public function get complete():_0N3 {
        return (this.loader.complete);
    }

    public function _97(_arg1:String):void {
        this.loader._97(_arg1);
    }

    public function _160(_arg1:Boolean):void {
        this._Lz = _arg1;
    }

    public function _1Vb(_arg1:int):void {
        this.loader._1Vb(_arg1);
    }

    public function sendRequest(_arg1:String, _arg2:Object):void {
        this.loader.sendRequest(this._1Z9(_arg1), _arg2);
    }

    public function _7e():Boolean {
        return (this.loader._Lv());
    }

    private function _1Z9(_arg1:String):String {
        if (_arg1.charAt(0) != "/") {
            _arg1 = ("/" + _arg1);
        }
        ;
        return ((this.setup._kx() + _arg1));
    }


}
}//package _1l6

