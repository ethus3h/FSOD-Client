// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._0fj

package _bb {
import _08f.Console;

import flash.events.AsyncErrorEvent;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.events.StatusEvent;
import flash.net.LocalConnection;
import flash.net.Socket;
import flash.system.Security;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

public class _0fj extends _1b6 {

    public static const NONE:uint = 0;
    public static const _1YW:uint = 1;
    public static const _0Cs:uint = 2;

    public function _0fj(_arg1:Console) {
        var m:Console = _arg1;
        this._callbacks = new Object();
        this._1Lf = new ByteArray();
        this._UM = new Object();
        this._051 = new Dictionary();
        super(m);
        this.registerCallback("login", function (_arg1:ByteArray):void {
            login(_arg1.readUTF());
        });
        this.registerCallback("requestLogin", this.requestLogin);
        this.registerCallback("loginFail", this.loginFail);
        this.registerCallback("loginSuccess", this.loginSuccess);
    }
    private var _callbacks:Object;
    private var _mode:uint;
    private var _0BT:LocalConnection;
    private var _4:Socket;
    private var _1Lf:ByteArray;
    private var _UM:Object;
    private var _051:Dictionary;
    private var _1Jv:String = "";
    private var _aX:Boolean;
    private var _SM:String;
    private var _0hT:String;

    public function get remoting():uint {
        return (this._mode);
    }

    public function set remoting(_arg1:uint):void {
        var _local2:String;
        if (_arg1 == this._mode) {
            return;
        }
        ;
        this._SM = this._188();
        if (_arg1 == _1YW) {
            if (!this._6a(_1YW)) {
                report("Could not create remoting client service. You will not be able to control this console with remote.", 10);
            }
            ;
            this._1Lf = new ByteArray();
            this._0BT.addEventListener(StatusEvent.STATUS, this._0O9, false, 0, true);
            report(("<b>Remoting started.</b> " + this._0q5()), -1);
            this._aX = this._1rD("");
            if (this._aX) {
                this._1uP();
            } else {
                this.send("requestLogin");
            }
            ;
        } else {
            if (_arg1 == _0Cs) {
                if (this._6a(_0Cs)) {
                    this._1Lf = new ByteArray();
                    this._0BT.addEventListener(AsyncErrorEvent.ASYNC_ERROR, this._1yP, false, 0, true);
                    this._0BT.addEventListener(StatusEvent.STATUS, this._1aY, false, 0, true);
                    report(("<b>Remote started.</b> " + this._0q5()), -1);
                    _local2 = Security.sandboxType;
                    if ((((_local2 == Security.LOCAL_WITH_FILE)) || ((_local2 == Security.LOCAL_WITH_NETWORK)))) {
                        report("Untrusted local sandbox. You may not be able to listen for logs properly.", 10);
                        this._0Ks();
                    }
                    ;
                    this.login(this._1Jv);
                } else {
                    report("Could not create remote service. You might have a console remote already running.", 10);
                }
                ;
            } else {
                this.close();
            }
            ;
        }
        ;
        console.panels.updateMenu();
    }

    public function get canSend():Boolean {
        return ((((this._mode == _1YW)) && (this._aX)));
    }

    public function update():void {
        var _local1:String;
        var _local2:ByteArray;
        var _local3:String;
        var _local4:ByteArray;
        if (this._1Lf.length) {
            if (((this._4) && (this._4.connected))) {
                this._4.writeBytes(this._1Lf);
                this._1Lf = new ByteArray();
            } else {
                if (this._0BT) {
                    this._1Lf.position = 0;
                    if (this._1Lf.bytesAvailable < 38000) {
                        _local2 = this._1Lf;
                        this._1Lf = new ByteArray();
                    } else {
                        _local2 = new ByteArray();
                        this._1Lf.readBytes(_local2, 0, Math.min(38000, this._1Lf.bytesAvailable));
                        _local4 = new ByteArray();
                        this._1Lf.readBytes(_local4);
                        this._1Lf = _local4;
                    }
                    ;
                    _local3 = (config.remotingConnectionName + (((this.remoting == _0fj._0Cs)) ? _1YW : _0Cs));
                    this._0BT.send(_local3, "synchronize", this._SM, _local2);
                } else {
                    this._1Lf = new ByteArray();
                }
                ;
            }
            ;
        }
        ;
        for (_local1 in this._UM) {
            this._13M(_local1);
        }
        ;
    }

    public function send(_arg1:String, _arg2:ByteArray = null):Boolean {
        if (this._mode == NONE) {
            return (false);
        }
        ;
        this._1Lf.position = this._1Lf.length;
        this._1Lf.writeUTF(_arg1);
        if (_arg2) {
            this._1Lf.writeBoolean(true);
            this._1Lf.writeUnsignedInt(_arg2.length);
            this._1Lf.writeBytes(_arg2);
        } else {
            this._1Lf.writeBoolean(false);
        }
        ;
        return (true);
    }

    public function remotingSocket(_arg1:String, _arg2:int = 0):void {
        if (((this._4) && (this._4.connected))) {
            this._4.close();
            this._4 = null;
        }
        ;
        if (((_arg1) && (_arg2))) {
            this.remoting = _1YW;
            report(((("Connecting to socket " + _arg1) + ":") + _arg2));
            this._4 = new Socket();
            this._4.addEventListener(Event.CLOSE, this._0Dt);
            this._4.addEventListener(Event.CONNECT, this._dW);
            this._4.addEventListener(IOErrorEvent.IO_ERROR, this._0t);
            this._4.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this._1x);
            this._4.addEventListener(ProgressEvent.SOCKET_DATA, this._0Wr);
            this._4.connect(_arg1, _arg2);
        }
        ;
    }

    public function _1Zo(_arg1:Socket):void {
        if (!this._051[_arg1]) {
            this._051[_arg1] = this._188();
            this._4 = _arg1;
        }
        ;
        var _local2:ByteArray = new ByteArray();
        _arg1.readBytes(_local2);
        this.synchronize(this._051[_arg1], _local2);
    }

    public function registerCallback(_arg1:String, _arg2:Function, _arg3:Boolean = false):void {
        this._callbacks[_arg1] = {
            fun: _arg2,
            latest: _arg3
        };
    }

    public function login(_arg1:String = ""):void {
        var _local2:ByteArray;
        if (this.remoting == _0fj._0Cs) {
            this._1Jv = _arg1;
            report("Attempting to login...", -1);
            _local2 = new ByteArray();
            _local2.writeUTF(_arg1);
            this.send("login", _local2);
        } else {
            if (((this._aX) || (this._1rD(_arg1)))) {
                this._1uP();
            } else {
                this.send("loginFail");
            }
            ;
        }
        ;
    }

    public function close():void {
        if (this._0BT) {
            try {
                this._0BT.close();
            } catch (error:Error) {
                report(("Remote.close: " + error), 10);
            }
            ;
        }
        ;
        this._mode = NONE;
        this._1Lf = new ByteArray();
        this._0BT = null;
    }

    private function _13M(_arg1:String):void {
        var pointer:uint;
        var cmd:String;
        var arg:ByteArray;
        var callbackData:Object;
        var blen:uint;
        var recbuffer:ByteArray;
        var id:String = _arg1;
        if (!this._051[id]) {
            this._051[id] = true;
            if (this._0hT) {
                report((("Remote switched to new sender [" + id) + "] as primary."), -2);
            }
            ;
            this._0hT = id;
        }
        ;
        var buffer:ByteArray = this._UM[id];
        try {
            pointer = (buffer.position = 0);
            while (buffer.bytesAvailable) {
                cmd = buffer.readUTF();
                arg = null;
                if (buffer.bytesAvailable == 0) break;
                if (buffer.readBoolean()) {
                    if (buffer.bytesAvailable == 0) {
                        break;
                    }
                    ;
                    blen = buffer.readUnsignedInt();
                    if (buffer.bytesAvailable < blen) {
                        break;
                    }
                    ;
                    arg = new ByteArray();
                    buffer.readBytes(arg, 0, blen);
                }
                ;
                callbackData = this._callbacks[cmd];
                if (((!(callbackData.latest)) || ((id == this._0hT)))) {
                    if (arg) {
                        callbackData.fun(arg);
                    } else {
                        callbackData.fun();
                    }
                    ;
                }
                ;
                pointer = buffer.position;
            }
            ;
            if (pointer < buffer.length) {
                recbuffer = new ByteArray();
                recbuffer.writeBytes(buffer, pointer);
                var _local3 = recbuffer;
                buffer = _local3;
                this._UM[id] = _local3;
            } else {
                delete this._UM[id];
            }
            ;
        } catch (err:Error) {
            report(("Remoting sync error: " + err), 9);
        }
        ;
    }

    private function synchronize(_arg1:String, _arg2:Object):void {
        if (!(_arg2 is ByteArray)) {
            report(("Remoting sync error. Recieved non-ByteArray:" + _arg2), 9);
            return;
        }
        ;
        var _local3:ByteArray = (_arg2 as ByteArray);
        var _local4:ByteArray = this._UM[_arg1];
        if (_local4) {
            _local4.position = _local4.length;
            _local4.writeBytes(_local3);
        } else {
            this._UM[_arg1] = _local3;
        }
        ;
    }

    private function _0q5():String {
        return ((((("<p4>channel:" + config.remotingConnectionName) + " (") + Security.sandboxType) + ")</p4>"));
    }

    private function _0Ks():void {
        report("Make sure your flash file is 'trusted' in Global Security Settings.", -2);
        report("Go to Settings Manager [<a href='event:settings'>click here</a>] &gt; 'Global Security Settings Panel' (on left) &gt; add the location of the local flash (swf) file.", -2);
    }

    private function _188():String {
        return (((new Date().time + ".") + Math.floor((Math.random() * 100000))));
    }

    private function _6a(_arg1:uint):Boolean {
        var targetmode:uint = _arg1;
        this.close();
        this._mode = targetmode;
        this._0BT = new LocalConnection();
        this._0BT.client = {synchronize: this.synchronize};
        if (config.allowedRemoteDomain) {
            this._0BT.allowDomain(config.allowedRemoteDomain);
            this._0BT.allowInsecureDomain(config.allowedRemoteDomain);
        }
        ;
        this._0BT.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this._Sk, false, 0, true);
        try {
            this._0BT.connect((config.remotingConnectionName + this._mode));
        } catch (err:Error) {
            return (false);
        }
        ;
        return (true);
    }

    private function loginFail():void {
        if (this.remoting != _0fj._0Cs) {
            return;
        }
        ;
        report("Login Failed", 10);
        console.panels.mainPanel.requestLogin();
    }

    private function _1uP():void {
        this._aX = true;
        this.send("loginSuccess");
        dispatchEvent(new Event(Event.CONNECT));
    }

    private function loginSuccess():void {
        console.setViewingChannels();
        report("Login Successful", -1);
    }

    private function requestLogin():void {
        if (this.remoting != _0fj._0Cs) {
            return;
        }
        ;
        this._1Lf = new ByteArray();
        if (this._1Jv) {
            this.login(this._1Jv);
        } else {
            console.panels.mainPanel.requestLogin();
        }
        ;
    }

    private function _1rD(_arg1:String):Boolean {
        return ((((((((config.remotingPassword === null)) && ((config.keystrokePassword == _arg1)))) || ((config.remotingPassword === "")))) || ((config.remotingPassword == _arg1))));
    }

    private function _0Dt(_arg1:Event):void {
        if (_arg1.currentTarget == this._4) {
            this._4 = null;
        }
        ;
    }

    private function _dW(_arg1:Event):void {
        report("Remoting socket connected.", -1);
        this._1Lf = new ByteArray();
        if (((this._aX) || (this._1rD("")))) {
            this._1uP();
        } else {
            this.send("requestLogin");
        }
        ;
    }

    private function _0t(_arg1:Event):void {
        report(("Remoting socket error." + _arg1), 9);
        this.remotingSocket(null);
    }

    private function _1x(_arg1:Event):void {
        report(("Remoting security error." + _arg1), 9);
        this.remotingSocket(null);
    }

    private function _0Wr(_arg1:Event):void {
        this._1Zo((_arg1.currentTarget as Socket));
    }

    private function _0O9(_arg1:StatusEvent):void {
        if ((((_arg1.level == "error")) && (!(((this._4) && (this._4.connected)))))) {
            this._aX = false;
        }
        ;
    }

    private function _1aY(_arg1:StatusEvent):void {
        if ((((this.remoting == _0fj._0Cs)) && ((_arg1.level == "error")))) {
            report("Problem communicating to client.", 10);
        }
        ;
    }

    private function _Sk(_arg1:SecurityErrorEvent):void {
        report("Remoting security error.", 9);
        this._0Ks();
    }

    private function _1yP(_arg1:AsyncErrorEvent):void {
        report("Problem with remote sync. [<a href='event:remote'>Click here</a>] to restart.", 10);
        this.remoting = NONE;
    }


}
}//package _bb

