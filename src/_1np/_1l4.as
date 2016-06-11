// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1np._1l4

package _1np {
import _08f.Console;

import _bb._0fj;
import _bb._0wf;

import _s2._11h;

import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.FocusEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.geom.ColorTransform;
import flash.geom.Rectangle;
import flash.net.FileReference;
import flash.system.Security;
import flash.system.SecurityPanel;
import flash.system.System;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFieldType;
import flash.text.TextFormat;
import flash.ui.Keyboard;

public class _1l4 extends _ZM {

    public static const NAME:String = "mainPanel";
    private static const _0vA:String = "clhistory";
    private static const _1H4:String = "viewingChannels";
    private static const _OA:String = "ignoredChannels";
    private static const _1Rm:String = "priority";

    public function _1l4(_arg1:Console) {
        this._9c = new Object();
        super(_arg1);
        var _local2:int = style.menuFontSize;
        console.cl.addCLCmd("filter", this._1x6, "Filter console logs to matching string. When done, click on the * (global channel) at top.", true);
        console.cl.addCLCmd("filterexp", this._lx, "Filter console logs to matching regular expression", true);
        console.cl.addCLCmd("clearhistory", this._0Vk, "Clear history of commands you have entered.", true);
        name = NAME;
        _Zc = 50;
        _0Dk = 18;
        this._0rQ = _kp("traceField");
        this._0rQ.wordWrap = true;
        this._0rQ.multiline = true;
        this._0rQ.y = _local2;
        this._0rQ.addEventListener(Event.SCROLL, this._case);
        addChild(this._0rQ);
        _1FH = _kp("menuField");
        _1FH.wordWrap = true;
        _1FH.multiline = true;
        _1FH.autoSize = TextFieldAutoSize.RIGHT;
        _1FH.height = (_local2 + 6);
        _1FH.y = -2;
        _07l(_1FH, this.onMenuRollOver);
        addChild(_1FH);
        this._73 = new Shape();
        this._73.name = "commandBackground";
        this._73.graphics.beginFill(style.commandLineColor, 0.1);
        this._73.graphics.drawRoundRect(0, 0, 100, 18, _local2, _local2);
        this._73.scale9Grid = new Rectangle(9, 9, 80, 1);
        addChild(this._73);
        var _local3:TextFormat = new TextFormat(style.menuFont, style.menuFontSize, style.highColor);
        this._1ld = new TextField();
        this._1ld.name = "commandField";
        this._1ld.type = TextFieldType.INPUT;
        this._1ld.x = 40;
        this._1ld.height = (_local2 + 6);
        this._1ld.addEventListener(KeyboardEvent.KEY_DOWN, this._1cD);
        this._1ld.addEventListener(KeyboardEvent.KEY_UP, this._rw);
        this._1ld.addEventListener(FocusEvent.FOCUS_IN, this._1OG);
        this._1ld.addEventListener(FocusEvent.FOCUS_OUT, this._nh);
        this._1ld.defaultTextFormat = _local3;
        addChild(this._1ld);
        this._0qg = _kp("hintField", true);
        this._0qg.mouseEnabled = false;
        this._0qg.x = this._1ld.x;
        this._0qg.autoSize = TextFieldAutoSize.LEFT;
        addChild(this._0qg);
        this._XK();
        _local3.color = style.commandLineColor;
        this._cW = new TextField();
        this._cW.name = "commandPrefx";
        this._cW.type = TextFieldType.DYNAMIC;
        this._cW.x = 2;
        this._cW.height = (_local2 + 6);
        this._cW.selectable = false;
        this._cW.defaultTextFormat = _local3;
        this._cW.addEventListener(MouseEvent.MOUSE_DOWN, this._Q1);
        this._cW.addEventListener(MouseEvent.MOUSE_MOVE, this._1rB);
        this._cW.addEventListener(MouseEvent.ROLL_OUT, this._1rB);
        addChild(this._cW);
        this._1mC = new Shape();
        this._1mC.name = "blinkLine";
        this._1mC.alpha = 0.2;
        addChild(this._1mC);
        this._AN = new Sprite();
        this._AN.name = "scroller";
        this._AN.tabEnabled = false;
        this._AN.y = (_local2 + 4);
        this._AN.buttonMode = true;
        this._AN.addEventListener(MouseEvent.MOUSE_DOWN, this._0Xq, false, 0, true);
        this._pS = new Sprite();
        this._pS.name = "scrollbar";
        this._pS.tabEnabled = false;
        this._pS.y = style.controlSize;
        this._pS.graphics.beginFill(style.controlColor, 1);
        this._pS.graphics.drawRect(-(style.controlSize), 0, style.controlSize, 30);
        this._pS.graphics.beginFill(0, 0);
        this._pS.graphics.drawRect((-(style.controlSize) * 2), 0, (style.controlSize * 2), 30);
        this._pS.graphics.endFill();
        this._pS.addEventListener(MouseEvent.MOUSE_DOWN, this._IJ, false, 0, true);
        this._AN.addChild(this._pS);
        addChild(this._AN);
        this._1ld.visible = false;
        this._cW.visible = false;
        this._73.visible = false;
        this._1Qs("");
        init(640, 100, true);
        _0C(_1FH);
        if ((console.so[_0vA] is Array)) {
            this._oO = console.so[_0vA];
        } else {
            console.so[_0vA] = (this._oO = new Array());
        }
        ;
        if (((config.rememberFilterSettings) && ((console.so[_1H4] is Array)))) {
            this._192 = console.so[_1H4];
        } else {
            console.so[_1H4] = (this._192 = new Array());
        }
        ;
        if (((config.rememberFilterSettings) && ((console.so[_OA] is Array)))) {
            this._0Os = console.so[_OA];
        }
        ;
        if ((((this._192.length > 0)) || ((this._0Os == null)))) {
            console.so[_OA] = (this._0Os = new Array());
        }
        ;
        if (((config.rememberFilterSettings) && ((console.so[_1Rm] is uint)))) {
            this._02k = console.so[_1Rm];
        }
        ;
        addEventListener(MouseEvent.MOUSE_WHEEL, this._0YS, false, 0, true);
        addEventListener(TextEvent.LINK, this._0WF, false, 0, true);
        addEventListener(Event.ADDED_TO_STAGE, this._oZ, false, 0, true);
        addEventListener(Event.REMOVED_FROM_STAGE, this._pk, false, 0, true);
    }
    private var _0rQ:TextField;
    private var _cW:TextField;
    private var _1ld:TextField;
    private var _0qg:TextField;
    private var _73:Shape;
    private var _1mC:Shape;
    private var _0LA:Boolean;
    private var _0qN:Boolean;
    private var _Ns:Boolean;
    private var _L0:Boolean;
    private var _AN:Sprite;
    private var _pS:Sprite;
    private var _01G:uint;
    private var _1qB:int;
    private var _La:Boolean;
    private var _3N:Number;
    private var _Dp:int;
    private var _9o:int;
    private var _192:Array;
    private var _0Os:Array;
    private var _9c:Object;
    private var _1yq:int = -1;
    private var _02k:uint;
    private var _S5:String;
    private var _0V2:RegExp;
    private var _1DM:String = "";
    private var _0s6:Boolean;
    private var _05l:Boolean;
    private var _vH:Boolean;
    private var _0MK:Boolean = true;
    private var _1t1:Boolean;
    private var _01P:String;
    private var _oO:Array;

    override public function set width(_arg1:Number):void {
        this._vH = true;
        super.width = _arg1;
        this._0rQ.width = (_arg1 - 4);
        _1FH.width = (_arg1 - 6);
        this._1ld.width = ((width - 15) - this._1ld.x);
        this._73.width = _arg1;
        this._1mC.graphics.clear();
        this._1mC.graphics.lineStyle(1, style.controlColor);
        this._1mC.graphics.moveTo(10, -1);
        this._1mC.graphics.lineTo((_arg1 - 10), -1);
        this._AN.x = _arg1;
        this._0MK = true;
        this._0MC();
        this._0s6 = true;
        this._05l = true;
        this._vH = false;
    }

    override public function set height(_arg1:Number):void {
        this._vH = true;
        var _local2:int = style.menuFontSize;
        var _local3:Number = ((_local2 + 6) + style.traceFontSize);
        if (height != _arg1) {
            this._0LA = (_arg1 < ((this._1ld.visible) ? ((_local3 + _local2) + 4) : _local3));
        }
        ;
        super.height = _arg1;
        var _local4:Boolean = ((this._0LA) || (!(style.topMenu)));
        this._0TS();
        this._0rQ.y = ((_local4) ? 0 : _local2);
        this._0rQ.height = ((_arg1 - ((this._1ld.visible) ? (_local2 + 4) : 0)) - ((_local4) ? 0 : _local2));
        var _local5:Number = (_arg1 - (_local2 + 6));
        this._1ld.y = _local5;
        this._cW.y = _local5;
        this._0qg.y = (this._1ld.y - this._0qg.height);
        this._73.y = _local5;
        this._1mC.y = ((this._1ld.visible) ? _local5 : _arg1);
        this._AN.y = ((_local4) ? 6 : (_local2 + 4));
        var _local6:uint = style.controlSize;
        this._3N = ((this._1mC.y - ((this._1ld.visible) ? 0 : (_local6 * 2))) - this._AN.y);
        this._pS.visible = (this._3N > 40);
        this._AN.graphics.clear();
        if (this._3N >= 10) {
            this._AN.graphics.beginFill(style.controlColor, 0.7);
            this._AN.graphics.drawRect(-(_local6), 0, _local6, _local6);
            this._AN.graphics.drawRect(-(_local6), (this._3N - _local6), _local6, _local6);
            this._AN.graphics.beginFill(style.controlColor, 0.25);
            this._AN.graphics.drawRect(-(_local6), _local6, _local6, (this._3N - (_local6 * 2)));
            this._AN.graphics.beginFill(0, 0);
            this._AN.graphics.drawRect((-(_local6) * 2), (_local6 * 2), (_local6 * 2), (this._3N - (_local6 * 2)));
            this._AN.graphics.endFill();
        }
        ;
        this._0MK = true;
        this._05l = true;
        this._vH = false;
    }

    public function get reportChannel():String {
        return ((((this._192.length == 1)) ? this._192[0] : Console._1Lq));
    }

    public function get viewingChannels():Array {
        return (this._192);
    }

    public function get ignoredChannels():Array {
        return (this._0Os);
    }

    public function get priority():uint {
        return (this._02k);
    }

    public function set priority(_arg1:uint):void {
        this._02k = _arg1;
        console.so[_1Rm] = this._02k;
        this._0rg();
        this.updateMenu();
    }

    public function get commandLine():Boolean {
        return (this._1ld.visible);
    }

    public function set commandLine(_arg1:Boolean):void {
        if (_arg1) {
            this._1ld.visible = true;
            this._cW.visible = true;
            this._73.visible = true;
        } else {
            this._1ld.visible = false;
            this._cW.visible = false;
            this._73.visible = false;
        }
        ;
        this._0s6 = true;
        this.height = height;
    }

    private function get _1OV():Number {
        return (((this._pS.y - style.controlSize) / ((this._3N - 30) - (style.controlSize * 2))));
    }

    private function set _1OV(_arg1:Number):void {
        this._pS.y = (style.controlSize + (((this._3N - 30) - (style.controlSize * 2)) * _arg1));
    }

    public function _0su(_arg1:String, _arg2:Function, _arg3:Array, _arg4:String):void {
        if (_arg1) {
            _arg1 = _arg1.replace(/[^\w]*/g, "");
            if (_arg2 == null) {
                delete this._9c[_arg1];
            } else {
                this._9c[_arg1] = new Array(_arg2, _arg3, _arg4);
            }
            ;
            this._0s6 = true;
        } else {
            console.report("ERROR: Invalid add menu params.", 9);
        }
        ;
    }

    public function requestLogin(_arg1:Boolean = true):void {
        var _local2:ColorTransform = new ColorTransform();
        if (_arg1) {
            console.commandLine = true;
            console.report("//", -2);
            console.report("// <b>Enter remoting password</b> in CommandLine below...", -2);
            this._1Qs("Password");
            _local2.color = style.controlColor;
            this._73.transform.colorTransform = _local2;
            this._0rQ.transform.colorTransform = new ColorTransform(0.7, 0.7, 0.7);
        } else {
            this._1Qs("");
            this._73.transform.colorTransform = _local2;
            this._0rQ.transform.colorTransform = _local2;
        }
        ;
        this._1ld.displayAsPassword = _arg1;
        this._1t1 = _arg1;
    }

    public function update(_arg1:Boolean):void {
        if (this._1mC.alpha > 0) {
            this._1mC.alpha = (this._1mC.alpha - 0.25);
        }
        ;
        if (style.showCommandLineScope) {
            if (this._1DM != console.cl.scopeString) {
                this._1DM = console.cl.scopeString;
                this._1Qs(this._1DM);
            }
            ;
        } else {
            if (this._1DM != null) {
                this._1DM = "";
                this._1Qs("");
            }
            ;
        }
        ;
        if (_arg1) {
            this._1mC.alpha = 1;
            this._0s6 = true;
            this._05l = true;
        }
        ;
        if (this._05l) {
            this._05l = false;
            this._0Cz(true);
        }
        ;
        if (this._0s6) {
            this._0s6 = false;
            this._7();
        }
        ;
    }

    public function _0rg():void {
        this._0MK = true;
        this._05l = true;
    }

    public function _85(_arg1:Boolean):void {
        if (((_arg1) && (this._0MK))) {
            this._0MK = false;
            this._0Cz();
            this._0rQ.scrollV = this._0rQ.maxScrollV;
        } else {
            if (!_arg1) {
                this._0MK = true;
                this._1x();
            }
            ;
        }
        ;
        this.updateMenu();
    }

    public function setViewingChannels(..._args):void {
        var _local3:Object;
        var _local4:String;
        var _local2:Array = new Array();
        for each (_local3 in _args) {
            _local2.push(Console._M(_local3));
        }
        ;
        if ((((this._192[0] == _0wf._Sg)) && (((!(_local2)) || (!((_local2[0] == this._192[0]))))))) {
            console.refs.exitFocus();
        }
        ;
        this._0Os.splice(0);
        this._192.splice(0);
        if ((((_local2.indexOf(Console._3D) < 0)) && ((_local2.indexOf(null) < 0)))) {
            for each (_local4 in _local2) {
                if (_local4) {
                    this._192.push(_local4);
                }
                ;
            }
            ;
        }
        ;
        this._0rg();
        console.panels.updateMenu();
    }

    public function _1SK(..._args):void {
        var _local3:Object;
        var _local4:String;
        var _local2:Array = new Array();
        for each (_local3 in _args) {
            _local2.push(Console._M(_local3));
        }
        ;
        if (this._192[0] == _0wf._Sg) {
            console.refs.exitFocus();
        }
        ;
        this._0Os.splice(0);
        this._192.splice(0);
        if ((((_local2.indexOf(Console._3D) < 0)) && ((_local2.indexOf(null) < 0)))) {
            for each (_local4 in _local2) {
                if (_local4) {
                    this._0Os.push(_local4);
                }
                ;
            }
            ;
        }
        ;
        this._0rg();
        console.panels.updateMenu();
    }

    public function updateMenu(_arg1:Boolean = false):void {
        if (_arg1) {
            this._7();
        } else {
            this._0s6 = true;
        }
        ;
    }

    public function getChannelsLink(_arg1:Boolean = false):String {
        var _local7:String;
        var _local8:String;
        var _local2 = "<chs>";
        var _local3:Array = console.logs.getChannels();
        var _local4:int = _local3.length;
        if (((_arg1) && ((_local4 > style.maxChannelsInMenu)))) {
            _local4 = style.maxChannelsInMenu;
        }
        ;
        var _local5:Boolean = (((this._192.length > 0)) || ((this._0Os.length > 0)));
        var _local6:int;
        while (_local6 < _local4) {
            _local7 = _local3[_local6];
            _local8 = ((((((!(_local5)) && ((_local6 == 0)))) || (((((_local5) && (!((_local6 == 0))))) && (this._rE(_local7)))))) ? (("<ch><b>" + _local7) + "</b></ch>") : _local7);
            _local2 = (_local2 + (((('<a href="event:channel_' + _local7) + '">[') + _local8) + "]</a> "));
            _local6++;
        }
        ;
        if (_arg1) {
            _local2 = (_local2 + (('<ch><a href="event:channels"><b>' + (((_local3.length > _local4)) ? "..." : "")) + "</b>^^ </a></ch>"));
        }
        ;
        _local2 = (_local2 + "</chs> ");
        return (_local2);
    }

    public function onMenuRollOver(_arg1:TextEvent, _arg2:_ZM = null):void {
        var _local4:Array;
        var _local5:Object;
        if (_arg2 == null) {
            _arg2 = this;
        }
        ;
        var _local3:String = ((_arg1.text) ? _arg1.text.replace("event:", "") : "");
        if (_local3 == ("channel_" + Console._3D)) {
            _local3 = "View all channels";
        } else {
            if (_local3 == ("channel_" + Console._13v)) {
                _local3 = "Default channel::Logs with no channel";
            } else {
                if (_local3 == ("channel_" + Console._1Lq)) {
                    _local3 = "Console's channel::Logs generated from Console";
                } else {
                    if (_local3 == ("channel_" + Console._0pZ)) {
                        _local3 = ((this._0V2) ? String(this._0V2) : this._S5);
                        _local3 = ((("Filtering channel" + "::*") + _local3) + "*");
                    } else {
                        if (_local3 == ("channel_" + _0wf._Sg)) {
                            _local3 = "Inspecting channel";
                        } else {
                            if (_local3.indexOf("channel_") == 0) {
                                _local3 = "Change channel::shift: select multiple\nctrl: ignore channel";
                            } else {
                                if (_local3 == "pause") {
                                    if (console.paused) {
                                        _local3 = "Resume updates";
                                    } else {
                                        _local3 = "Pause updates";
                                    }
                                    ;
                                } else {
                                    if ((((_local3 == "close")) && ((_arg2 == this)))) {
                                        _local3 = "Close::Type password to show again";
                                    } else {
                                        if (_local3.indexOf("external_") == 0) {
                                            _local4 = this._9c[_local3.substring(9)];
                                            if (_local4) {
                                                _local3 = _local4[2];
                                            }
                                            ;
                                        } else {
                                            _local5 = {
                                                fps: "Frames Per Second",
                                                mm: "Memory Monitor",
                                                roller: "Display Roller::Map the display list under your mouse",
                                                ruler: "Screen Ruler::Measure the distance and angle between two points on screen.",
                                                command: "Command Line",
                                                copy: "Save to clipboard::shift: no channel name\nctrl: use viewing filters\nalt: save to file",
                                                clear: "Clear log",
                                                priority: "Priority filter::shift: previous priority\n(skips unused priorites)",
                                                channels: "Expand channels",
                                                close: "Close"
                                            };
                                            _local3 = _local5[_local3];
                                        }
                                        ;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        console.panels.tooltip(_local3, _arg2);
    }

    public function onChannelPressed(_arg1:String):void {
        var _local2:Array;
        if (((this._Ns) && (!((_arg1 == Console._3D))))) {
            _local2 = this._0wd(this._0Os, _arg1);
            this._1SK.apply(this, _local2);
        } else {
            if (((((this._0qN) && (!((_arg1 == Console._3D))))) && (!((this._192[0] == _0wf._Sg))))) {
                _local2 = this._0wd(this._192, _arg1);
                this.setViewingChannels.apply(this, _local2);
            } else {
                console.setViewingChannels(_arg1);
            }
            ;
        }
        ;
    }

    public function _1Qs(_arg1:String):void {
        if (this._1t1) {
            this._1t1 = false;
            this.requestLogin(false);
        }
        ;
        this._cW.autoSize = TextFieldAutoSize.LEFT;
        this._cW.text = _arg1;
        this._0MC();
    }

    private function _0Cz(_arg1:Boolean = false):void {
        if (this._0MK) {
            this._1x();
        } else {
            if (!_arg1) {
                this._1bs();
            }
            ;
        }
        ;
        if (this._Dp != this._9o) {
            if (this._0MK) {
                this._0rQ.setSelection((this._0rQ.text.length - this._Dp), (this._0rQ.text.length - this._9o));
            } else {
                this._0rQ.setSelection((this._0rQ.text.length - this._9o), (this._0rQ.text.length - this._Dp));
            }
            ;
            this._9o = -1;
            this._Dp = -1;
        }
        ;
    }

    private function _1bs():void {
        var _local1 = "";
        var _local2:_11h = console.logs.first;
        var _local3 = !((this._192.length == 1));
        var _local4:Boolean = (((this._02k == 0)) && ((this._192.length == 0)));
        while (_local2) {
            if (((_local4) || (this._18J(_local2)))) {
                _local1 = (_local1 + this._jE(_local2, _local3));
            }
            ;
            _local2 = _local2.next;
        }
        ;
        this._vH = true;
        this._0rQ.htmlText = (("<logs>" + _local1) + "</logs>");
        this._vH = false;
        this._oa();
    }

    private function _1x():void {
        var _local6:int;
        var _local1 = "";
        var _local2:int = Math.round((this._0rQ.height / style.traceFontSize));
        var _local3:int = Math.round(((this._0rQ.width * 5) / style.traceFontSize));
        var _local4:_11h = console.logs.last;
        var _local5 = !((this._192.length == 1));
        while (_local4) {
            if (this._18J(_local4)) {
                _local6 = Math.ceil((_local4.text.length / _local3));
                if (((_local4.html) || ((_local2 >= _local6)))) {
                    _local1 = (this._jE(_local4, _local5) + _local1);
                } else {
                    _local4 = _local4.clone();
                    _local4.text = _local4.text.substring(Math.max(0, (_local4.text.length - (_local3 * _local2))));
                    _local1 = (this._jE(_local4, _local5) + _local1);
                    break;
                }
                ;
                _local2 = (_local2 - _local6);
                if (_local2 <= 0) break;
            }
            ;
            _local4 = _local4._dN;
        }
        ;
        this._vH = true;
        this._0rQ.htmlText = (("<logs>" + _local1) + "</logs>");
        this._0rQ.scrollV = this._0rQ.maxScrollV;
        this._vH = false;
        this._oa();
    }

    private function _18J(_arg1:_11h):Boolean {
        return ((((((this._02k == 0)) || ((_arg1.priority >= this._02k)))) && (((((this._rE(_arg1.ch)) || (((((this._S5) && ((this._192.indexOf(Console._0pZ) >= 0)))) && ((_arg1.text.toLowerCase().indexOf(this._S5) >= 0)))))) || (((((this._0V2) && ((this._192.indexOf(Console._0pZ) >= 0)))) && ((_arg1.text.search(this._0V2) >= 0))))))));
    }

    private function _rE(_arg1:String):Boolean {
        return ((((((this._192.length == 0)) || ((this._192.indexOf(_arg1) >= 0)))) && ((((this._0Os.length == 0)) || ((this._0Os.indexOf(_arg1) < 0))))));
    }

    private function _1x6(_arg1:String = ""):void {
        if (_arg1) {
            this._0V2 = null;
            this._S5 = _0wf._0Fn(_arg1.toLowerCase());
            this._Uo();
        } else {
            this._1gR();
        }
        ;
    }

    private function _lx(_arg1:String = ""):void {
        if (_arg1) {
            this._S5 = null;
            this._0V2 = new RegExp(_0wf._0Fn(_arg1), "gi");
            this._Uo();
        } else {
            this._1gR();
        }
        ;
    }

    private function _Uo():void {
        console.clear(Console._0pZ);
        console.logs.addChannel(Console._0pZ);
        this.setViewingChannels(Console._0pZ);
    }

    private function _1gR():void {
        this._0V2 = null;
        this._S5 = null;
        if ((((this._192.length == 1)) && ((this._192[0] == Console._0pZ)))) {
            this.setViewingChannels(Console._3D);
        }
        ;
    }

    private function _jE(_arg1:_11h, _arg2:Boolean):String {
        var _local3 = "<p>";
        if (_arg2) {
            _local3 = (_local3 + _arg1._01K);
        }
        ;
        if (config.showLineNumber) {
            _local3 = (_local3 + _arg1._1y1);
        }
        ;
        if (config.showTimestamp) {
            _local3 = (_local3 + _arg1._8e);
        }
        ;
        var _local4:String = ("p" + _arg1.priority);
        return ((((((((_local3 + "<") + _local4) + ">") + this._1Dj(_arg1.text)) + "</") + _local4) + "></p>"));
    }

    private function _1Dj(_arg1:String):String {
        var _local2:Object;
        var _local3:int;
        var _local4:String;
        var _local5:String;
        var _local6:int;
        if (this._0V2) {
            this._0V2.lastIndex = 0;
            _local2 = this._0V2.exec(_arg1);
            while (_local2 != null) {
                _local3 = _local2.index;
                _local4 = _local2[0];
                if (_local4.search("<|>") >= 0) {
                    this._0V2.lastIndex = (this._0V2.lastIndex - (_local4.length - _local4.search("<|>")));
                } else {
                    if (_arg1.lastIndexOf("<", _local3) <= _arg1.lastIndexOf(">", _local3)) {
                        _arg1 = ((((_arg1.substring(0, _local3) + "<u>") + _arg1.substring(_local3, (_local3 + _local4.length))) + "</u>") + _arg1.substring((_local3 + _local4.length)));
                        this._0V2.lastIndex = (this._0V2.lastIndex + 7);
                    }
                    ;
                }
                ;
                _local2 = this._0V2.exec(_arg1);
            }
            ;
        } else {
            if (this._S5) {
                _local5 = _arg1.toLowerCase();
                _local6 = _local5.lastIndexOf(this._S5);
                while (_local6 >= 0) {
                    _arg1 = ((((_arg1.substring(0, _local6) + "<u>") + _arg1.substring(_local6, (_local6 + this._S5.length))) + "</u>") + _arg1.substring((_local6 + this._S5.length)));
                    _local6 = _local5.lastIndexOf(this._S5, (_local6 - 2));
                }
                ;
            }
            ;
        }
        ;
        return (_arg1);
    }

    private function _oa():void {
        if (this._0rQ.maxScrollV <= 1) {
            this._AN.visible = false;
        } else {
            this._AN.visible = true;
            if (this._0MK) {
                this._1OV = 1;
            } else {
                this._1OV = ((this._0rQ.scrollV - 1) / (this._0rQ.maxScrollV - 1));
            }
            ;
        }
        ;
    }

    private function _0TS():void {
        var _local1:Boolean = ((this._0LA) || (!(style.topMenu)));
        this._0rQ.y = ((_local1) ? 0 : ((_1FH.y + _1FH.height) - 6));
        this._0rQ.height = Math.max(0, ((height - ((this._1ld.visible) ? (style.menuFontSize + 4) : 0)) - this._0rQ.y));
    }

    private function _7():void {
        var _local2:Boolean;
        var _local3:String;
        var _local1 = "<r><high>";
        if (((this._0LA) || (!(style.topMenu)))) {
            _local1 = (_local1 + '<menu><b> <a href="event:show">‹</a>');
        } else {
            if (!console.panels.channelsPanel) {
                _local1 = (_local1 + this.getChannelsLink(true));
            }
            ;
            _local1 = (_local1 + "<menu> <b>");
            for (_local3 in this._9c) {
                _local1 = (_local1 + (((('<a href="event:external_' + _local3) + '">') + _local3) + "</a> "));
                _local2 = true;
            }
            ;
            if (_local2) {
                _local1 = (_local1 + "¦ ");
            }
            ;
            _local1 = (_local1 + this._1e7('<a href="event:fps">F</a>', (console.fpsMonitor > 0)));
            _local1 = (_local1 + this._1e7(' <a href="event:mm">M</a>', (console.memoryMonitor > 0)));
            _local1 = (_local1 + this._1e7(' <a href="event:command">CL</a>', this.commandLine));
            if (console.remoter.remoting != _0fj._0Cs) {
                if (config.displayRollerEnabled) {
                    _local1 = (_local1 + this._1e7(' <a href="event:roller">Ro</a>', console.displayRoller));
                }
                ;
                if (config.rulerToolEnabled) {
                    _local1 = (_local1 + this._1e7(' <a href="event:ruler">RL</a>', console.panels.rulerActive));
                }
                ;
            }
            ;
            _local1 = (_local1 + " ¦</b>");
            _local1 = (_local1 + ' <a href="event:copy">Sv</a>');
            _local1 = (_local1 + ((' <a href="event:priority">P' + this._02k) + "</a>"));
            _local1 = (_local1 + this._1e7(' <a href="event:pause">P</a>', console.paused));
            _local1 = (_local1 + ' <a href="event:clear">C</a> <a href="event:close">X</a> <a href="event:hide">›</a>');
        }
        ;
        _local1 = (_local1 + " </b></menu></high></r>");
        _1FH.htmlText = _local1;
        _1FH.scrollH = _1FH.maxScrollH;
        this._0TS();
    }

    private function _1e7(_arg1:String, _arg2:Boolean):String {
        if (_arg2) {
            return ((("<menuHi>" + _arg1) + "</menuHi>"));
        }
        ;
        return (_arg1);
    }

    private function _0wd(_arg1:Array, _arg2:String):Array {
        _arg1 = _arg1.concat();
        var _local3:int = _arg1.indexOf(_arg2);
        if (_local3 >= 0) {
            _arg1.splice(_local3, 1);
            if (_arg1.length == 0) {
                _arg1.push(Console._3D);
            }
            ;
        } else {
            _arg1.push(_arg2);
        }
        ;
        return (_arg1);
    }

    private function _w2(_arg1:Boolean):void {
        var _local3:uint;
        var _local2:uint = 10;
        var _local4:_11h = console.logs.last;
        var _local5:int = this._02k;
        this._02k = 0;
        var _local6:uint = 0x7D00;
        while (((_local4) && ((_local6 > 0)))) {
            _local6--;
            if (this._18J(_local4)) {
                if ((((_local4.priority > _local5)) && ((_local2 > _local4.priority)))) {
                    _local2 = _local4.priority;
                }
                ;
                if ((((_local4.priority < _local5)) && ((_local3 < _local4.priority)))) {
                    _local3 = _local4.priority;
                }
                ;
            }
            ;
            _local4 = _local4._dN;
        }
        ;
        if (_arg1) {
            if (_local3 == _local5) {
                _local5 = 10;
            } else {
                _local5 = _local3;
            }
            ;
        } else {
            if (_local2 == _local5) {
                _local5 = 0;
            } else {
                _local5 = _local2;
            }
            ;
        }
        ;
        this.priority = _local5;
    }

    private function _0Vk(..._args):void {
        this._1yq = -1;
        console.updateSO();
        this._oO = new Array();
    }

    private function _1Ys():void {
        this._1ld.setSelection(this._1ld.text.length, this._1ld.text.length);
    }

    private function _XK(_arg1:Array = null):void {
        var _local2:Array;
        var _local3:Array;
        var _local4:Rectangle;
        var _local5:String;
        var _local6:Boolean;
        var _local7:int;
        if (((_arg1) && (_arg1.length))) {
            this._01P = _arg1[0][0];
            if (_arg1.length > 1) {
                _local5 = _arg1[1][0];
                _local6 = false;
                _local7 = 0;
                while (_local7 < _local5.length) {
                    if (_local5.charAt(_local7) == this._01P.charAt(_local7)) {
                        _local6 = true;
                    } else {
                        if (((_local6) && ((this._1ld.text.length < _local7)))) {
                            this._01P = this._01P.substring(0, _local7);
                        }
                        ;
                        break;
                    }
                    ;
                    _local7++;
                }
                ;
            }
            ;
            _local2 = new Array();
            for each (_local3 in _arg1) {
                _local2.push((((("<p3>" + _local3[0]) + "</p3> <p0>") + ((_local3[1]) ? _local3[1] : "")) + "</p0>"));
            }
            ;
            this._0qg.htmlText = (("<p>" + _local2.reverse().join("\n")) + "</p>");
            this._0qg.visible = true;
            _local4 = this._1ld.getCharBoundaries((this._1ld.text.length - 1));
            if (!_local4) {
                _local4 = new Rectangle();
            }
            ;
            this._0qg.x = (((this._1ld.x + _local4.x) + _local4.width) + 30);
            this._0qg.y = (height - this._0qg.height);
        } else {
            this._0qg.visible = false;
            this._01P = null;
        }
        ;
    }

    private function _0MC():void {
        var _local1:Number = (width - 48);
        if ((((this._cW.width > 120)) || ((this._cW.width > _local1)))) {
            this._cW.autoSize = TextFieldAutoSize.NONE;
            this._cW.width = (((_local1 > 120)) ? 120 : _local1);
            this._cW.scrollH = this._cW.maxScrollH;
        }
        ;
        this._1ld.x = (this._cW.width + 2);
        this._1ld.width = ((width - 15) - this._1ld.x);
        this._0qg.x = this._1ld.x;
    }

    private function _oZ(_arg1:Event = null):void {
        stage.addEventListener(MouseEvent.MOUSE_DOWN, this._1NZ, true, 0, true);
        stage.addEventListener(KeyboardEvent.KEY_UP, this._1Ml, false, 0, true);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this._0Kb, false, 0, true);
    }

    private function _pk(_arg1:Event = null):void {
        stage.removeEventListener(MouseEvent.MOUSE_DOWN, this._1NZ, true);
        stage.removeEventListener(KeyboardEvent.KEY_UP, this._1Ml);
        stage.removeEventListener(KeyboardEvent.KEY_DOWN, this._0Kb);
    }

    private function _1NZ(_arg1:MouseEvent):void {
        this._0qN = _arg1.shiftKey;
        this._Ns = _arg1.ctrlKey;
        this._L0 = _arg1.altKey;
    }

    private function _0YS(_arg1:MouseEvent):void {
        var _local2:int;
        if (this._0qN) {
            _local2 = (console.config.style.traceFontSize + (((_arg1.delta > 0)) ? 1 : -1));
            if ((((_local2 > 10)) && ((_local2 < 20)))) {
                console.config.style.traceFontSize = _local2;
                console.config.style.updateStyleSheet();
                this._0rg();
                _arg1.stopPropagation();
            }
            ;
        }
        ;
    }

    private function _1rB(_arg1:MouseEvent):void {
        console.panels.tooltip((((_arg1.type == MouseEvent.MOUSE_MOVE)) ? "Current scope::(CommandLine)" : ""), this);
    }

    private function _Q1(_arg1:MouseEvent):void {
        try {
            stage.focus = this._1ld;
            this._1Ys();
        } catch (err:Error) {
        }
        ;
    }

    private function _0Kb(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == Keyboard.SHIFT) {
            this._0qN = true;
        }
        ;
        if (_arg1.keyCode == Keyboard.CONTROL) {
            this._Ns = true;
        }
        ;
        if (_arg1.keyCode == 18) {
            this._L0 = true;
        }
        ;
    }

    private function _1Ml(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == Keyboard.SHIFT) {
            this._0qN = false;
        } else {
            if (_arg1.keyCode == Keyboard.CONTROL) {
                this._Ns = false;
            } else {
                if (_arg1.keyCode == 18) {
                    this._L0 = false;
                }
                ;
            }
            ;
        }
        ;
        if ((((((((((_arg1.keyCode == Keyboard.TAB)) || ((_arg1.keyCode == Keyboard.ENTER)))) && (parent.visible))) && (visible))) && (this._1ld.visible))) {
            try {
                stage.focus = this._1ld;
                this._1Ys();
            } catch (err:Error) {
            }
            ;
        }
        ;
    }

    private function _case(_arg1:Event = null):void {
        var _local3:int;
        if (((this._vH) || (this._0qN))) {
            return;
        }
        ;
        var _local2 = (this._0rQ.scrollV >= this._0rQ.maxScrollV);
        if (((!(console.paused)) && (!((this._0MK == _local2))))) {
            _local3 = (this._0rQ.maxScrollV - this._0rQ.scrollV);
            this._Dp = (this._0rQ.text.length - this._0rQ.selectionBeginIndex);
            this._9o = (this._0rQ.text.length - this._0rQ.selectionEndIndex);
            this._0MK = _local2;
            this._0Cz();
            this._0rQ.scrollV = (this._0rQ.maxScrollV - _local3);
        }
        ;
        this._oa();
    }

    private function _0Xq(_arg1:MouseEvent):void {
        if (((((this._pS.visible) && ((this._pS.mouseY > 0)))) || (((!(this._pS.visible)) && ((this._AN.mouseY > (this._3N / 2))))))) {
            this._1qB = 3;
        } else {
            this._1qB = -3;
        }
        ;
        this._0rQ.scrollV = (this._0rQ.scrollV + this._1qB);
        this._01G = 0;
        addEventListener(Event.ENTER_FRAME, this._0x0, false, 0, true);
        stage.addEventListener(MouseEvent.MOUSE_UP, this._0Rw, false, 0, true);
    }

    private function _0x0(_arg1:Event):void {
        this._01G++;
        if (this._01G > 10) {
            this._01G = 9;
            if ((((((this._1qB < 0)) && ((this._pS.y > this._AN.mouseY)))) || ((((this._1qB > 0)) && (((this._pS.y + this._pS.height) < this._AN.mouseY)))))) {
                this._0rQ.scrollV = (this._0rQ.scrollV + this._1qB);
            }
            ;
        }
        ;
    }

    private function _0Rw(_arg1:Event):void {
        removeEventListener(Event.ENTER_FRAME, this._0x0);
        stage.removeEventListener(MouseEvent.MOUSE_UP, this._0Rw);
    }

    private function _IJ(_arg1:MouseEvent):void {
        var _local2:Number;
        this._La = true;
        if (((!(console.paused)) && (this._0MK))) {
            this._0MK = false;
            _local2 = this._1OV;
            this._0Cz();
            this._1OV = _local2;
        }
        ;
        this._pS.startDrag(false, new Rectangle(0, style.controlSize, 0, ((this._3N - 30) - (style.controlSize * 2))));
        stage.addEventListener(MouseEvent.MOUSE_MOVE, this._sD, false, 0, true);
        stage.addEventListener(MouseEvent.MOUSE_UP, this._1mF, false, 0, true);
        _arg1.stopPropagation();
    }

    private function _sD(_arg1:MouseEvent):void {
        this._vH = true;
        this._0rQ.scrollV = Math.round(((this._1OV * (this._0rQ.maxScrollV - 1)) + 1));
        this._vH = false;
    }

    private function _1mF(_arg1:MouseEvent):void {
        this._pS.stopDrag();
        stage.removeEventListener(MouseEvent.MOUSE_MOVE, this._sD);
        stage.removeEventListener(MouseEvent.MOUSE_UP, this._1mF);
        this._La = false;
        this._case();
    }

    private function _0WF(_arg1:TextEvent):void {
        var str:String;
        var file:FileReference;
        var ind:int;
        var menu:Array;
        var e:TextEvent = _arg1;
        _1FH.setSelection(0, 0);
        stopDrag();
        var t:String = e.text;
        if (t == "pause") {
            if (console.paused) {
                console.paused = false;
            } else {
                console.paused = true;
            }
            ;
            console.panels.tooltip(null);
        } else {
            if (t == "hide") {
                console.panels.tooltip();
                this._0LA = true;
                console.config.style.topMenu = false;
                this.height = height;
                this.updateMenu();
            } else {
                if (t == "show") {
                    console.panels.tooltip();
                    this._0LA = false;
                    console.config.style.topMenu = true;
                    this.height = height;
                    this.updateMenu();
                } else {
                    if (t == "close") {
                        console.panels.tooltip();
                        visible = false;
                        dispatchEvent(new Event(Event.CLOSE));
                    } else {
                        if (t == "channels") {
                            console.panels.channelsPanel = !(console.panels.channelsPanel);
                        } else {
                            if (t == "fps") {
                                console.fpsMonitor = !(console.fpsMonitor);
                            } else {
                                if (t == "priority") {
                                    this._w2(this._0qN);
                                } else {
                                    if (t == "mm") {
                                        console.memoryMonitor = !(console.memoryMonitor);
                                    } else {
                                        if (t == "roller") {
                                            console.displayRoller = !(console.displayRoller);
                                        } else {
                                            if (t == "ruler") {
                                                console.panels.tooltip();
                                                console.panels.startRuler();
                                            } else {
                                                if (t == "command") {
                                                    this.commandLine = !(this.commandLine);
                                                } else {
                                                    if (t == "copy") {
                                                        str = console.logs.getLogsAsString("\r\n", !(this._0qN), ((this._Ns) ? this._18J : null));
                                                        if (this._L0) {
                                                            file = new FileReference();
                                                            try {
                                                                var _local3 = file;
                                                                (_local3["save"](str, "log.txt"));
                                                            } catch (err:Error) {
                                                                console.report("Save to file is not supported in your flash player.", 8);
                                                            }
                                                            ;
                                                        } else {
                                                            System.setClipboard(str);
                                                            console.report("Copied log to clipboard.", -1);
                                                        }
                                                        ;
                                                    } else {
                                                        if (t == "clear") {
                                                            console.clear();
                                                        } else {
                                                            if (t == "settings") {
                                                                console.report("A new window should open in browser. If not, try searching for 'Flash Player Global Security Settings panel' online :)", -1);
                                                                Security.showSettings(SecurityPanel.SETTINGS_MANAGER);
                                                            } else {
                                                                if (t == "remote") {
                                                                    console.remoter.remoting = _0fj._0Cs;
                                                                } else {
                                                                    if (t.indexOf("ref") == 0) {
                                                                        console.refs.handleRefEvent(t);
                                                                    } else {
                                                                        if (t.indexOf("channel_") == 0) {
                                                                            this.onChannelPressed(t.substring(8));
                                                                        } else {
                                                                            if (t.indexOf("cl_") == 0) {
                                                                                ind = t.indexOf("_", 3);
                                                                                console.cl.handleScopeEvent(uint(t.substring(3, (((ind < 0)) ? t.length : ind))));
                                                                                if (ind >= 0) {
                                                                                    this._1ld.text = t.substring((ind + 1));
                                                                                }
                                                                                ;
                                                                            } else {
                                                                                if (t.indexOf("external_") == 0) {
                                                                                    menu = this._9c[t.substring(9)];
                                                                                    if (menu) {
                                                                                        menu[0].apply(null, menu[1]);
                                                                                    }
                                                                                    ;
                                                                                }
                                                                                ;
                                                                            }
                                                                            ;
                                                                        }
                                                                        ;
                                                                    }
                                                                    ;
                                                                }
                                                                ;
                                                            }
                                                            ;
                                                        }
                                                        ;
                                                    }
                                                    ;
                                                }
                                                ;
                                            }
                                            ;
                                        }
                                        ;
                                    }
                                    ;
                                }
                                ;
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
        _1FH.setSelection(0, 0);
        e.stopPropagation();
    }

    private function _1cD(_arg1:KeyboardEvent):void {
        if (_arg1.keyCode == Keyboard.TAB) {
            if (this._01P) {
                this._1ld.text = this._01P;
                this._1Ys();
                this._XK();
            }
            ;
        }
        ;
    }

    private function _rw(_arg1:KeyboardEvent):void {
        var _local2:String;
        var _local3:int;
        if (_arg1.keyCode == Keyboard.ENTER) {
            this._0rg();
            this._XK();
            if (this._1t1) {
                console.remoter.login(this._1ld.text);
                this._1ld.text = "";
                this.requestLogin(false);
            } else {
                _local2 = this._1ld.text;
                if (_local2.length > 2) {
                    _local3 = this._oO.indexOf(_local2);
                    while (_local3 >= 0) {
                        this._oO.splice(_local3, 1);
                        _local3 = this._oO.indexOf(_local2);
                    }
                    ;
                    this._oO.unshift(_local2);
                    this._1yq = -1;
                    if (this._oO.length > 20) {
                        this._oO.splice(20);
                    }
                    ;
                    console.updateSO(_0vA);
                }
                ;
                this._1ld.text = "";
                if (config.commandLineInputPassThrough != null) {
                    _local2 = config.commandLineInputPassThrough(_local2);
                }
                ;
                if (_local2) {
                    console.cl.run(_local2);
                }
                ;
            }
            ;
        } else {
            if (_arg1.keyCode == Keyboard.ESCAPE) {
                if (stage) {
                    stage.focus = null;
                }
                ;
            } else {
                if (_arg1.keyCode == Keyboard.UP) {
                    this._XK();
                    if (((this._1ld.text) && ((this._1yq < 0)))) {
                        this._oO.unshift(this._1ld.text);
                        this._1yq++;
                    }
                    ;
                    if (this._1yq < (this._oO.length - 1)) {
                        this._1yq++;
                        this._1ld.text = this._oO[this._1yq];
                        this._1Ys();
                    } else {
                        this._1yq = this._oO.length;
                        this._1ld.text = "";
                    }
                    ;
                } else {
                    if (_arg1.keyCode == Keyboard.DOWN) {
                        this._XK();
                        if (this._1yq > 0) {
                            this._1yq--;
                            this._1ld.text = this._oO[this._1yq];
                            this._1Ys();
                        } else {
                            this._1yq = -1;
                            this._1ld.text = "";
                        }
                        ;
                    } else {
                        if (_arg1.keyCode == Keyboard.TAB) {
                            this._1Ys();
                        } else {
                            if (!this._1t1) {
                                this._1OG();
                            }
                            ;
                        }
                        ;
                    }
                    ;
                }
                ;
            }
            ;
        }
        ;
    }

    private function _1OG(_arg1:Event = null):void {
        var _local2:String = this._1ld.text;
        if (((((_local2) && (config.commandLineAutoCompleteEnabled))) && (!((console.remoter.remoting == _0fj._0Cs))))) {
            try {
                this._XK(console.cl.getHintsFor(_local2, 5));
                return;
            } catch (err:Error) {
            }
            ;
        }
        ;
        this._XK();
    }

    private function _nh(_arg1:Event):void {
        this._XK();
    }


}
}//package _1np

