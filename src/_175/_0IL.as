// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_175._0IL

package _175 {
public class _0IL implements _dS {

    public function _0IL() {
        this._sl = {};
        this._0K = {};
        super();
    }
    private var _sl:Object;
    private var _0K:Object;

    public function clear():void {
        this._sl = {};
        this._0K = {};
    }

    public function setValue(_arg1:String, _arg2:String, _arg3:String):void {
        this._sl[_arg1] = _arg2;
        this._0K[_arg1] = _arg3;
    }

    public function _cb(_arg1:String):Boolean {
        return (!((this._sl[_arg1] == null)));
    }

    public function getValue(_arg1:String):String {
        return (this._sl[_arg1]);
    }

    public function _0nw(_arg1:String):String {
        return (this._0K[_arg1]);
    }


}
}//package _175

