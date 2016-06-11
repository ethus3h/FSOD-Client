// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_Qu._en

package _Qu {
import _1Sm._sy;

import _1cr._0VP;

import com.hurlant.crypto.symmetric.ICipher;

import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.events.SecurityErrorEvent;
import flash.events.TimerEvent;
import flash.net.Socket;
import flash.utils.ByteArray;
import flash.utils.Timer;

public class _en {

    public static const _bs:int = 4;

    public const connected:_sy = new _sy();
    public const closed:_sy = new _sy();
    public const error:_sy = new _sy(String);
    private const _wo:_cx = new _cx(0);
    private const data:ByteArray = new ByteArray();

    public function _en() {
        this._11w = this._wo;
        this._qh = this._wo;
        super();
    }
    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var _0nj:Socket;
    [Inject]
    public var _0I9:_hs;
    public var _17p:Timer;
    private var _11w:_cx;
    private var _qh:_cx;
    private var _ZG:int = -1;
    private var _xJ:ICipher;
    private var _1mj:ICipher;
    private var server:String;
    private var port:int;

    public function setOutgoingCipher(_arg1:ICipher):_en {
        this._xJ = _arg1;
        return (this);
    }

    public function setIncomingCipher(_arg1:ICipher):_en {
        this._1mj = _arg1;
        return (this);
    }

    public function connect(_arg1:String, _arg2:int):void {
        this.server = _arg1;
        this.port = _arg2;
        this._V();
        this._ZG = -1;
        if (this._0I9._0e) {
            this._1e8();
        } else {
            this._0nj.connect(_arg1, _arg2);
        }
        ;
    }

    public function disconnect():void {
        this._0nj.close();
        this._0eP();
        this.closed.dispatch();
    }

    public function sendMessage(_arg1:_cx):void {
        this._qh.next = _arg1;
        this._qh = _arg1;
        ((this._0nj.connected) && (this._0ET()));
    }

    public function isConnected():Boolean {
        return (this._0nj.connected);
    }

    private function _V():void {
        this._0nj.addEventListener(Event.CONNECT, this._m8);
        this._0nj.addEventListener(Event.CLOSE, this._0mM);
        this._0nj.addEventListener(ProgressEvent.SOCKET_DATA, this._Zi);
        this._0nj.addEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        this._0nj.addEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onSecurityError);
    }

    private function _1e8():void {
        this._17p = new Timer(this._0I9._0e, 1);
        this._17p.addEventListener(TimerEvent.TIMER_COMPLETE, this._1VG);
        this._17p.start();
    }

    private function _0eP():void {
        this._0nj.removeEventListener(Event.CONNECT, this._m8);
        this._0nj.removeEventListener(Event.CLOSE, this._0mM);
        this._0nj.removeEventListener(ProgressEvent.SOCKET_DATA, this._Zi);
        this._0nj.removeEventListener(IOErrorEvent.IO_ERROR, this.onIOError);
        this._0nj.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, this.onSecurityError);
    }

    private function _0ET():void {
        var _local1:_cx = this._11w.next;
        var _local2:_cx = _local1;
        while (_local2) {
            this.data.clear();
            _local2.writeToOutput(this.data);
            this.data.position = 0;
            if (this._xJ != null) {
                this._xJ.encrypt(this.data);
                this.data.position = 0;
            }
            ;
            this._0nj.writeInt((this.data.bytesAvailable + 5));
            this._0nj.writeByte(_local2.id);
            this._0nj.writeBytes(this.data);
            _local2.consume();
            _local2 = _local2.next;
        }
        ;
        this._0nj.flush();
        this._wo.next = null;
        this._wo._dN = null;
        this._11w = (this._qh = this._wo);
    }

    private function _0qy(_arg1:String, _arg2:Array = null):void {
        this.error.dispatch(this._0ev(_arg1, _arg2));
        this.disconnect();
    }

    private function _0ev(_arg1:String, _arg2:Array):String {
        var _local3:int = _arg2.length;
        var _local4:int;
        while (_local4 < _local3) {
            _arg1 = _arg1.replace((("{" + _local4) + "}"), _arg2[_local4]);
            _local4++;
        }
        ;
        return (_arg1);
    }

    private function _1VG(_arg1:TimerEvent):void {
        this._17p.removeEventListener(TimerEvent.TIMER_COMPLETE, this._1VG);
        this._0nj.connect(this.server, this.port);
    }

    private function _m8(_arg1:Event):void {
        this._0ET();
        this.connected.dispatch();
    }

    private function _0mM(_arg1:Event):void {
        this.closed.dispatch();
    }

    private function onIOError(_arg1:IOErrorEvent):void {
        var _local2:String = this._0ev("Socket-Server IO Error: {0}", [_arg1.text]);
        this.error.dispatch(_local2);
        this.closed.dispatch();
    }

    private function onSecurityError(_arg1:SecurityErrorEvent):void {
        var _local2:String = this._0ev("Socket-Server Security Error: {0}", [_arg1.text]);
        this.error.dispatch(_local2);
        this.closed.dispatch();
    }

    private function _Zi(_arg1:ProgressEvent = null):void {
        var messageId:uint;
        var message:_cx;
        var data:ByteArray;
        var errorMessage:String;
        var _ = _arg1;
        while (true) {
            if ((((this._0nj == null)) || (!(this._0nj.connected)))) {
                return;
            }
            ;
            if (this._ZG == -1) {
                if (this._0nj.bytesAvailable < 4) {
                    return;
                }
                ;
                try {
                    this._ZG = this._0nj.readInt();
                } catch (e:Error) {
                    errorMessage = _0ev("Socket-Server Data Error: {0}: {1}", [e.name, e.message]);
                    error.dispatch(errorMessage);
                    _ZG = -1;
                    return;
                }
                ;
            }
            ;
            if (this._0nj.bytesAvailable < (this._ZG - _bs)) break;
            messageId = this._0nj.readUnsignedByte();
            message = this._1Zi._1SN(messageId);
            data = new ByteArray();
            if ((this._ZG - 5) > 0) {
                this._0nj.readBytes(data, 0, (this._ZG - 5));
            }
            ;
            data.position = 0;
            if (this._1mj != null) {
                this._1mj.decrypt(data);
                data.position = 0;
            }
            ;
            this._ZG = -1;
            if (message == null) {
                this._0qy("Socket-Server Protocol Error: Unknown message");
                return;
            }
            ;
            try {
                message.parseFromInput(data);
            } catch (error:Error) {
                _0qy("Socket-Server Protocol Error: {0}", [error.toString()]);
                return;
            }
            ;
            message.consume();
        }
        ;
    }


}
}//package _Qu

