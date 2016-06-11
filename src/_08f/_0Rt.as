// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08f._0Rt

package _08f {
public class _0Rt {

    public function _0Rt() {
        this._cY = Console.FATAL;
        this.traceCall = function (_arg1:String, _arg2:String, ..._args):void {
            trace(((("[" + _arg1) + "] ") + _arg2));
        };
        this.timeStampFormatter = function (_arg1:uint):String {
            var _local2:uint = (_arg1 * 0.001);
            return (((this._1sP((_local2 / 60)) + ":") + this._1sP((_local2 % 60))));
        };
        super();
        this._1Zh = new _0eS();
    }
    public var keystrokePassword:String;
    public var remotingPassword:String;
    public var maxLines:uint = 1000;
    public var maxRepeats:int = 75;
    public var _cY:int;
    public var _0Z5:int = 2;
    public var useObjectLinking:Boolean = true;
    public var objectHardReferenceTimer:uint = 0;
    public var tracing:Boolean;
    public var traceCall:Function;
    public var showTimestamp:Boolean = false;
    public var timeStampFormatter:Function;
    public var showLineNumber:Boolean = false;
    public var remotingConnectionName:String = "_Console";
    public var allowedRemoteDomain:String = "*";
    public var commandLineAllowed:Boolean;
    public var commandLineAutoScope:Boolean;
    public var commandLineInputPassThrough:Function;
    public var commandLineAutoCompleteEnabled:Boolean = true;
    public var keyBindsEnabled:Boolean = true;
    public var displayRollerEnabled:Boolean = true;
    public var rulerToolEnabled:Boolean = true;
    public var _1y2:Boolean = true;
    public var _nZ:String = "com.junkbyte/Console/UserData";
    public var _0j5:String = "/";
    public var rememberFilterSettings:Boolean;
    public var _MH:Boolean = true;
    private var _1Zh:_0eS;

    public function get style():_0eS {
        return (this._1Zh);
    }

    private function _1sP(_arg1:uint):String {
        if (_arg1 < 10) {
            return (("0" + _arg1));
        }
        ;
        return (String(_arg1));
    }


}
}//package _08f

