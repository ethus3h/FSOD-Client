// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_08f._0eS

package _08f {
import flash.text.StyleSheet;

public class _0eS {

    public function _0eS() {
        this._1gt = new StyleSheet();
    }
    public var menuFont:String = "Arial";
    public var menuFontSize:int = 12;
    public var _1Gu:String = "Verdana";
    public var traceFontSize:int = 11;
    public var backgroundColor:uint;
    public var _0r3:Number = 0.9;
    public var controlColor:uint = 0x990000;
    public var controlSize:uint = 5;
    public var commandLineColor:uint = 0x10AA00;
    public var highColor:uint = 0xFFFFFF;
    public var lowColor:uint = 0xC0C0C0;
    public var _0OG:uint = 0xC0C0C0;
    public var _0n:uint = 0xFF8800;
    public var _bO:uint = 0xDD5500;
    public var _rK:uint = 0xFFFFFF;
    public var _1GA:uint = 39372;
    public var priority0:uint = 3831610;
    public var priority1:uint = 4495684;
    public var priority2:uint = 7846775;
    public var priority3:uint = 10539168;
    public var priority4:uint = 14085846;
    public var priority5:uint = 0xE9E9E9;
    public var priority6:uint = 16768477;
    public var priority7:uint = 16755370;
    public var priority8:uint = 16742263;
    public var priority9:uint = 16720418;
    public var priority10:uint = 16720418;
    public var priorityC1:uint = 39372;
    public var priorityC2:uint = 0xFF8800;
    public var topMenu:Boolean = true;
    public var showCommandLineScope:Boolean = true;
    public var maxChannelsInMenu:int = 7;
    public var _U2:int = 3;
    public var _1wi:int = 10;
    private var _1gt:StyleSheet;

    public function get styleSheet():StyleSheet {
        return (this._1gt);
    }

    public function _Fp():void {
        this.backgroundColor = 0xFFFFFF;
        this.controlColor = 16724787;
        this.commandLineColor = 0x66CC00;
        this.highColor = 0;
        this.lowColor = 0x333333;
        this._0OG = 0x444444;
        this._0n = 0xCC1100;
        this._bO = 0x881100;
        this._rK = 0;
        this._1GA = 26282;
        this.priority0 = 4497476;
        this.priority1 = 3379251;
        this.priority2 = 2258722;
        this.priority3 = 1135889;
        this.priority4 = 0x3300;
        this.priority5 = 0;
        this.priority6 = 0x660000;
        this.priority7 = 0x990000;
        this.priority8 = 0xBB0000;
        this.priority9 = 0xDD0000;
        this.priority10 = 0xDD0000;
        this.priorityC1 = 39372;
        this.priorityC2 = 0xFF6600;
    }

    public function _1k():void {
        this.traceFontSize = 13;
        this.menuFontSize = 14;
    }

    public function updateStyleSheet():void {
        this._1gt.setStyle("high", {
            color: this._DZ(this.highColor),
            fontFamily: this.menuFont,
            fontSize: this.menuFontSize,
            display: "inline"
        });
        this._1gt.setStyle("low", {
            color: this._DZ(this.lowColor),
            fontFamily: this.menuFont,
            fontSize: (this.menuFontSize - 2),
            display: "inline"
        });
        this._1gt.setStyle("menu", {
            color: this._DZ(this._0n),
            display: "inline"
        });
        this._1gt.setStyle("menuHi", {
            color: this._DZ(this._bO),
            display: "inline"
        });
        this._1gt.setStyle("chs", {
            color: this._DZ(this._rK),
            fontSize: this.menuFontSize,
            leading: "2",
            display: "inline"
        });
        this._1gt.setStyle("ch", {
            color: this._DZ(this._1GA),
            display: "inline"
        });
        this._1gt.setStyle("tt", {
            color: this._DZ(this._0n),
            fontFamily: this.menuFont,
            fontSize: this.menuFontSize,
            textAlign: "center"
        });
        this._1gt.setStyle("r", {
            textAlign: "right",
            display: "inline"
        });
        this._1gt.setStyle("p", {
            fontFamily: this._1Gu,
            fontSize: this.traceFontSize
        });
        this._1gt.setStyle("p0", {
            color: this._DZ(this.priority0),
            display: "inline"
        });
        this._1gt.setStyle("p1", {
            color: this._DZ(this.priority1),
            display: "inline"
        });
        this._1gt.setStyle("p2", {
            color: this._DZ(this.priority2),
            display: "inline"
        });
        this._1gt.setStyle("p3", {
            color: this._DZ(this.priority3),
            display: "inline"
        });
        this._1gt.setStyle("p4", {
            color: this._DZ(this.priority4),
            display: "inline"
        });
        this._1gt.setStyle("p5", {
            color: this._DZ(this.priority5),
            display: "inline"
        });
        this._1gt.setStyle("p6", {
            color: this._DZ(this.priority6),
            display: "inline"
        });
        this._1gt.setStyle("p7", {
            color: this._DZ(this.priority7),
            display: "inline"
        });
        this._1gt.setStyle("p8", {
            color: this._DZ(this.priority8),
            display: "inline"
        });
        this._1gt.setStyle("p9", {
            color: this._DZ(this.priority9),
            display: "inline"
        });
        this._1gt.setStyle("p10", {
            color: this._DZ(this.priority10),
            fontWeight: "bold",
            display: "inline"
        });
        this._1gt.setStyle("p-1", {
            color: this._DZ(this.priorityC1),
            display: "inline"
        });
        this._1gt.setStyle("p-2", {
            color: this._DZ(this.priorityC2),
            display: "inline"
        });
        this._1gt.setStyle("logs", {
            color: this._DZ(this._0OG),
            display: "inline"
        });
    }

    private function _DZ(_arg1:Number):String {
        return (("#" + _arg1.toString(16)));
    }


}
}//package _08f

