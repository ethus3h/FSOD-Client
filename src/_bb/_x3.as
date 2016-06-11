// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb._x3

package _bb {
import _08f.Console;

import flash.system.System;
import flash.utils.Dictionary;
import flash.utils.getQualifiedClassName;
import flash.utils.getTimer;

public class _x3 extends _1b6 {

    public function _x3(_arg1:Console) {
        super(_arg1);
        this._0nm = new Object();
        this._0d4 = new Dictionary(true);
        console.remoter.registerCallback("gc", this.gc);
    }
    private var _0nm:Object;
    private var _0d4:Dictionary;

    private var _count:uint;

    public function get count():uint {
        return (this._count);
    }

    public function _1f(_arg1:Object, _arg2:String):String {
        var _local3:String = getQualifiedClassName(_arg1);
        if (!_arg2) {
            _arg2 = ((_local3 + "@") + getTimer());
        }
        ;
        if (this._0d4[_arg1]) {
            if (this._0nm[this._0d4[_arg1]]) {
                this._18p(this._0d4[_arg1]);
            }
            ;
        }
        ;
        if (this._0nm[_arg2]) {
            if (this._0d4[_arg1] == _arg2) {
                this._count--;
            } else {
                _arg2 = ((((_arg2 + "@") + getTimer()) + "_") + Math.floor((Math.random() * 100)));
            }
            ;
        }
        ;
        this._0nm[_arg2] = true;
        this._count++;
        this._0d4[_arg1] = _arg2;
        return (_arg2);
    }

    public function _18p(_arg1:String):void {
        var _local2:Object;
        for (_local2 in this._0d4) {
            if (this._0d4[_local2] == _arg1) {
                delete this._0d4[_local2];
            }
            ;
        }
        ;
        if (this._0nm[_arg1]) {
            delete this._0nm[_arg1];
            this._count--;
        }
        ;
    }

    public function update():void {
        var _local3:Object;
        var _local4:String;
        if (this._count == 0) {
            return;
        }
        ;
        var _local1:Array = new Array();
        var _local2:Object = new Object();
        for (_local3 in this._0d4) {
            _local2[this._0d4[_local3]] = true;
        }
        ;
        for (_local4 in this._0nm) {
            if (!_local2[_local4]) {
                _local1.push(_local4);
                delete this._0nm[_local4];
                this._count--;
            }
            ;
        }
        ;
        if (_local1.length) {
            report(((("<b>GARBAGE COLLECTED " + _local1.length) + " item(s): </b>") + _local1.join(", ")), -2);
        }
        ;
    }

    public function gc():void {
        var ok:Boolean;
        var str:String;
        if (remoter.remoting == _0fj._0Cs) {
            try {
                remoter.send("gc");
            } catch (e:Error) {
                report(e, 10);
            }
            ;
        } else {
            try {
                if (System["gc"] != null) {
                    var _local2 = System;
                    (_local2["gc"]());
                    ok = true;
                }
                ;
            } catch (e:Error) {
            }
            ;
            str = ("Manual garbage collection " + ((ok) ? "successful." : "FAILED. You need debugger version of flash player."));
            report(str, ((ok) ? -1 : 10));
        }
        ;
    }


}
}//package _bb

