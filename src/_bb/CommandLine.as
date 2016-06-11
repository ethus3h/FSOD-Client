// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_bb.CommandLine

package _bb {
import _08f.Console;

import _s2._1i5;
import _s2._hU;

import flash.display.DisplayObjectContainer;
import flash.events.Event;
import flash.utils.ByteArray;
import flash.utils.getQualifiedClassName;

public class CommandLine extends _1b6 {

    private static const _9j:String = "<b>Advanced CommandLine is disabled.</b>\nEnable by setting `Cc.config.commandLineAllowed = true;´\nType <b>/commands</b> for permitted commands.";
    private static const _1lP:Array = [Executer._0g, "base", "C"];

    public function CommandLine(_arg1:Console) {
        var m:Console = _arg1;
        this._1sX = new Array("filter", "filterexp");
        super(m);
        this._0N1 = new _1i5();
        this._1qX = m;
        this._0R = new Object();
        this._u3 = new _hU(m);
        this._0N1.set("C", m);
        remoter.registerCallback("cmd", function (_arg1:ByteArray):void {
            run(_arg1.readUTF());
        });
        remoter.registerCallback("scope", function (_arg1:ByteArray):void {
            handleScopeEvent(_arg1.readUnsignedInt());
        });
        remoter.registerCallback("cls", this._6N);
        remoter.addEventListener(Event.CONNECT, this._19x);
        this.addCLCmd("help", this._0MW, "How to use command line");
        this.addCLCmd("save|store", this._n9, "Save current scope as weak reference. (same as Cc.store(...))");
        this.addCLCmd("savestrong|storestrong", this._0HQ, "Save current scope as strong reference");
        this.addCLCmd("saved|stored", this._0b, "Show a list of all saved references");
        this.addCLCmd("string", this._1x8, "Create String, useful to paste complex strings without worrying about \" or '", false, null);
        this.addCLCmd("commands", this._10T, "Show a list of all slash commands", true);
        this.addCLCmd("inspect", this._1wb, "Inspect current scope");
        this.addCLCmd("explode", this._mk, "Explode current scope to its properties and values (similar to JSON)");
        this.addCLCmd("map", this._oC, "Get display list map starting from current scope");
        this.addCLCmd("function", this._uK, "Create function. param is the commandline string to create as function. (experimental)");
        this.addCLCmd("autoscope", this._1dQ, "Toggle autoscoping.");
        this.addCLCmd("base", this._mf, "Return to base scope");
        this.addCLCmd("/", this._xK, "Return to previous scope");
    }
    public var _1sX:Array;
    private var _0N1:_1i5;
    private var _1qX;
    private var _u3:_hU;
    private var _0YF:String = "";
    private var _0R:Object;

    public function get base():Object {
        return (this._0N1.get("base"));
    }

    public function set base(_arg1:Object):void {
        if (this.base) {
            report(((("Set new commandLine base from " + this.base) + " to ") + _arg1), 10);
        } else {
            this._u3._1hm = this._1qX;
            this._1qX = _arg1;
            this._0YF = _0wf._1eQ(_arg1, false);
        }
        ;
        this._0N1.set("base", _arg1);
    }

    public function get scopeString():String {
        return (((config.commandLineAllowed) ? this._0YF : ""));
    }

    public function _6N(_arg1:ByteArray):void {
        this._0YF = _arg1.readUTF();
    }

    public function handleScopeEvent(_arg1:uint):void {
        var _local2:ByteArray;
        var _local3:*;
        if (remoter.remoting == _0fj._0Cs) {
            _local2 = new ByteArray();
            _local2.writeUnsignedInt(_arg1);
            remoter.send("scope", _local2);
        } else {
            _local3 = console.refs.getRefById(_arg1);
            if (_local3) {
                console.cl.setReturned(_local3, true, false);
            } else {
                console.report("Reference no longer exist.", -2);
            }
            ;
        }
        ;
    }

    public function _0Hv(_arg1:String, _arg2:Object, _arg3:Boolean = false):void {
        if (!_arg1) {
            report("ERROR: Give a name to save.", 10);
            return;
        }
        ;
        if ((_arg2 is Function)) {
            _arg3 = true;
        }
        ;
        _arg1 = _arg1.replace(/[^\w]*/g, "");
        if (_1lP.indexOf(_arg1) >= 0) {
            report((("ERROR: The name [" + _arg1) + "] is reserved"), 10);
            return;
        }
        ;
        this._0N1.set(_arg1, _arg2, _arg3);
    }

    public function getHintsFor(_arg1:String, _arg2:uint):Array {
        var X:String;
        var canadate:Array;
        var cmd:Object;
        var Y:String;
        var str:String = _arg1;
        var max:uint = _arg2;
        var all:Array = new Array();
        for (X in this._0R) {
            cmd = this._0R[X];
            if (((config.commandLineAllowed) || (cmd.allow))) {
                all.push([(("/" + X) + " "), ((cmd.d) ? cmd.d : null)]);
            }
            ;
        }
        ;
        if (config.commandLineAllowed) {
            for (Y in this._0N1) {
                all.push([("$" + Y), _0wf._1eQ(this._0N1.get(Y))]);
            }
            ;
            if (this._1qX) {
                all.push(["this", _0wf._1eQ(this._1qX)]);
                all = all.concat(console.refs.getPossibleCalls(this._1qX));
            }
            ;
        }
        ;
        str = str.toLowerCase();
        var hints:Array = new Array();
        for each (canadate in all) {
            if (canadate[0].toLowerCase().indexOf(str) == 0) {
                hints.push(canadate);
            }
            ;
        }
        ;
        hints = hints.sort(function (_arg1:Array, _arg2:Array):int {
            if (_arg1[0].length < _arg2[0].length) {
                return (-1);
            }
            ;
            if (_arg1[0].length > _arg2[0].length) {
                return (1);
            }
            ;
            return (0);
        });
        if ((((max > 0)) && ((hints.length > max)))) {
            hints.splice(max);
            hints.push(["..."]);
        }
        ;
        return (hints);
    }

    public function addCLCmd(_arg1:String, _arg2:Function, _arg3:String, _arg4:Boolean = false, _arg5:String = ";"):void {
        var _local6:Array = _arg1.split("|");
        var _local7:int;
        while (_local7 < _local6.length) {
            _arg1 = _local6[_local7];
            this._0R[_arg1] = new SlashCommand(_arg1, _arg2, _arg3, false, _arg4, _arg5);
            if (_local7 > 0) {
                this._0R.setPropertyIsEnumerable(_arg1, false);
            }
            ;
            _local7++;
        }
        ;
    }

    public function _0xN(_arg1:String, _arg2:Function, _arg3:String = "", _arg4:Boolean = true, _arg5:String = ";"):void {
        var _local6:SlashCommand;
        _arg1 = _arg1.replace(/[^\w]*/g, "");
        if (this._0R[_arg1] != null) {
            _local6 = this._0R[_arg1];
            if (!_local6.user) {
                throw (new Error((("Can not alter build-in slash command [" + _arg1) + "]")));
            }
            ;
        }
        ;
        if (_arg2 == null) {
            delete this._0R[_arg1];
        } else {
            this._0R[_arg1] = new SlashCommand(_arg1, _arg2, _0wf._0Fn(_arg3), true, _arg4, _arg5);
        }
        ;
    }

    public function run(_arg1:String, _arg2:Object = null) {
        var bytes:ByteArray;
        var exe:Executer;
        var X:String;
        var str:String = _arg1;
        var saves = _arg2;
        if (!str) {
            return;
        }
        ;
        str = str.replace(/\s*/, "");
        if (remoter.remoting == _0fj._0Cs) {
            if (str.charAt(0) == "~") {
                str = str.substring(1);
            } else {
                if (str.search(new RegExp(("/" + this._1sX.join("|/")))) != 0) {
                    report(("Run command at remote: " + str), -2);
                    bytes = new ByteArray();
                    bytes.writeUTF(str);
                    if (!console.remoter.send("cmd", bytes)) {
                        report("Command could not be sent to client.", 10);
                    }
                    ;
                    return (null);
                }
                ;
            }
            ;
        }
        ;
        report(("&gt; " + str), 4, false);
        var v:* = null;
        try {
            if (str.charAt(0) == "/") {
                this._M3(str.substring(1));
            } else {
                if (!config.commandLineAllowed) {
                    report(_9j, 9);
                    return (null);
                }
                ;
                exe = new Executer();
                exe.addEventListener(Event.COMPLETE, this._uM, false, 0, true);
                if (saves) {
                    for (X in this._0N1) {
                        if (!saves[X]) {
                            saves[X] = this._0N1[X];
                        }
                        ;
                    }
                    ;
                } else {
                    saves = this._0N1;
                }
                ;
                exe._02U(saves);
                exe._uH(_1lP);
                exe._1s2 = config.commandLineAutoScope;
                v = exe.exec(this._1qX, str);
            }
            ;
        } catch (e:Error) {
            reportError(e);
        }
        ;
        return (v);
    }

    public function setReturned(_arg1, _arg2:Boolean = false, _arg3:Boolean = true):void {
        if (!config.commandLineAllowed) {
            report(_9j, 9);
            return;
        }
        ;
        if (_arg1 !== undefined) {
            this._0N1.set(Executer._0g, _arg1, true);
            if (((_arg2) && (!((_arg1 === this._1qX))))) {
                this._u3._1hm = this._1qX;
                this._1qX = _arg1;
                if (remoter.remoting != _0fj._0Cs) {
                    this._0YF = _0wf._1eQ(this._1qX, false);
                    this._19x();
                }
                ;
                report(("Changed to " + console.refs.makeRefTyped(_arg1)), -1);
            } else {
                if (_arg3) {
                    report(("Returned " + console.refs.makeString(_arg1)), -1);
                }
                ;
            }
            ;
        } else {
            if (_arg3) {
                report("Exec successful, undefined return.", -1);
            }
            ;
        }
        ;
    }

    private function _M3(_arg1:String):void {
        var slashcmd:SlashCommand;
        var restStr:String;
        var endInd:int;
        var str:String = _arg1;
        var brk:int = str.search(/[^\w]/);
        var cmd:String = str.substring(0, (((brk > 0)) ? brk : str.length));
        if (cmd == "") {
            this.setReturned(this._0N1.get(Executer._0g), true);
            return;
        }
        ;
        var param:String = (((brk > 0)) ? str.substring((brk + 1)) : "");
        if (this._0R[cmd] != null) {
            try {
                slashcmd = this._0R[cmd];
                if (((!(config.commandLineAllowed)) && (!(slashcmd.allow)))) {
                    report(_9j, 9);
                    return;
                }
                ;
                if (slashcmd.endMarker) {
                    endInd = param.indexOf(slashcmd.endMarker);
                    if (endInd >= 0) {
                        restStr = param.substring((endInd + slashcmd.endMarker.length));
                        param = param.substring(0, endInd);
                    }
                    ;
                }
                ;
                if (param.length == 0) {
                    slashcmd.f();
                } else {
                    slashcmd.f(param);
                }
                ;
                if (restStr) {
                    this.run(restStr);
                }
                ;
            } catch (err:Error) {
                reportError(err);
            }
            ;
        } else {
            report("Undefined command <b>/commands</b> for list of all commands.", 10);
        }
        ;
    }

    private function reportError(_arg1:Error):void {
        var _local10:String;
        var _local2:String = console.refs.makeString(_arg1);
        var _local3:Array = _local2.split(/\n\s*/);
        var _local4:int = 10;
        var _local5:int;
        var _local6:int = _local3.length;
        var _local7:Array = [];
        var _local8:RegExp = new RegExp((((("\\s*at\\s+(" + Executer._1j) + "|") + getQualifiedClassName(this)) + ")"));
        var _local9:int;
        while (_local9 < _local6) {
            _local10 = _local3[_local9];
            if (_local10.search(_local8) == 0) {
                if ((((_local5 > 0)) && ((_local9 > 0)))) {
                    break;
                }
                ;
                _local5++;
            }
            ;
            _local7.push((((((("<p" + _local4) + "> ") + _local10) + "</p") + _local4) + ">"));
            if (_local4 > 6) {
                _local4--;
            }
            ;
            _local9++;
        }
        ;
        report(_local7.join("\n"), 9);
    }

    private function _n9(_arg1:String = null):void {
        this._0Hv(_arg1, this._1qX, false);
    }

    private function _0HQ(_arg1:String = null):void {
        this._0Hv(_arg1, this._1qX, true);
    }

    private function _0b(..._args):void {
        var _local4:String;
        var _local5:_hU;
        report("Saved vars: ", -1);
        var _local2:uint;
        var _local3:uint;
        for (_local4 in this._0N1) {
            _local5 = this._0N1._0tK(_local4);
            _local2++;
            if (_local5._1hm == null) {
                _local3++;
            }
            ;
            report(((((((_local5.strong) ? "strong" : "weak") + " <b>$") + _local4) + "</b> = ") + console.refs.makeString(_local5._1hm)), -2);
        }
        ;
        report((((("Found " + _local2) + " item(s), ") + _local3) + " empty."), -1);
    }

    private function _1x8(_arg1:String):void {
        report((("String with " + _arg1.length) + " chars entered. Use /save <i>(name)</i> to save."), -2);
        this.setReturned(_arg1, true);
    }

    private function _10T(..._args):void {
        var _local4:SlashCommand;
        var _local2:Array = [];
        var _local3:Array = [];
        for each (_local4 in this._0R) {
            if (((config.commandLineAllowed) || (_local4.allow))) {
                if (_local4.user) {
                    _local3.push(_local4);
                } else {
                    _local2.push(_local4);
                }
                ;
            }
            ;
        }
        ;
        _local2 = _local2.sortOn("n");
        report(("Built-in commands:" + ((config.commandLineAllowed) ? "" : " (limited permission)")), 4);
        for each (_local4 in _local2) {
            report((((("<b>/" + _local4.n) + "</b> <p-1>") + _local4.d) + "</p-1>"), -2);
        }
        ;
        if (_local3.length) {
            _local3 = _local3.sortOn("n");
            report("User commands:", 4);
            for each (_local4 in _local3) {
                report((((("<b>/" + _local4.n) + "</b> <p-1>") + _local4.d) + "</p-1>"), -2);
            }
            ;
        }
        ;
    }

    private function _1wb(..._args):void {
        console.refs.focus(this._1qX);
    }

    private function _mk(_arg1:String = "0"):void {
        var _local2:int = int(_arg1);
        console.explodech(console.panels.mainPanel.reportChannel, this._1qX, (((_local2 <= 0)) ? 3 : _local2));
    }

    private function _oC(_arg1:String = "0"):void {
        console.mapch(console.panels.mainPanel.reportChannel, (this._1qX as DisplayObjectContainer), int(_arg1));
    }

    private function _uK(_arg1:String = ""):void {
        var _local2:FakeFunction = new FakeFunction(this.run, _arg1);
        report("Function created. Use /savestrong <i>(name)</i> to save.", -2);
        this.setReturned(_local2.exec, true);
    }

    private function _1dQ(..._args):void {
        config.commandLineAutoScope = !(config.commandLineAutoScope);
        report((("Auto-scoping <b>" + ((config.commandLineAutoScope) ? "enabled" : "disabled")) + "</b>."), 10);
    }

    private function _mf(..._args):void {
        this.setReturned(this.base, true);
    }

    private function _xK(..._args):void {
        this.setReturned(this._u3._1hm, true);
    }

    private function _0MW(..._args):void {
        report("____Command Line Help___", 10);
        report("/filter (text) = filter/search logs for matching text", 5);
        report("/commands to see all slash commands", 5);
        report("Press up/down arrow keys to recall previous line", 2);
        report("__Examples:", 10);
        report("<b>stage.stageWidth</b>", 5);
        report("<b>stage.scaleMode = flash.display.StageScaleMode.NO_SCALE</b>", 5);
        report("<b>stage.frameRate = 12</b>", 5);
        report("__________", 10);
    }

    public function _19x(_arg1:Event = null):void {
        var _local2:ByteArray = new ByteArray();
        _local2.writeUTF(this._0YF);
        console.remoter.send("cls", _local2);
    }

    private function _uM(_arg1:Event):void {
        var _local2:Executer = (_arg1.currentTarget as Executer);
        if (this._1qX == _local2.scope) {
            this.setReturned(_local2.returned);
        } else {
            if (_local2.scope == _local2.returned) {
                this.setReturned(_local2.scope, true);
            } else {
                this.setReturned(_local2.returned);
                this.setReturned(_local2.scope, true);
            }
            ;
        }
        ;
    }


}
}//package _bb

class FakeFunction {

    private var line:String;
    private var run:Function;

    public function FakeFunction(_arg1:Function, _arg2:String):void {
        this.run = _arg1;
        this.line = _arg2;
    }

    public function exec(..._args) {
        return (this.run(this.line, _args));
    }


}
class SlashCommand {

    public var n:String;
    public var f:Function;
    public var d:String;
    public var user:Boolean;
    public var allow:Boolean;
    public var endMarker:String;

    public function SlashCommand(_arg1:String, _arg2:Function, _arg3:String, _arg4:Boolean, _arg5:Boolean, _arg6:String) {
        this.n = _arg1;
        this.f = _arg2;
        this.d = ((_arg3) ? _arg3 : "");
        this.user = _arg4;
        this.allow = _arg5;
        this.endMarker = _arg6;
    }

}

