// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0cy._1ra

package _0cy {
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;

public class _1ra extends Sprite {

    private static const _Ay:String = ((('<p align="center"><font color="#FFFFFF">Play at: ' + '<br/></font><font color="#7777EE">') + '<a href="http://127.0.0.1/">') + "127.0.0.1</font></a></p>");

    public function _1ra() {
        var _local1:TextField = new TextField();
        _local1.selectable = false;
        var _local2:TextFormat = new TextFormat();
        _local2.size = 20;
        _local1.defaultTextFormat = _local2;
        _local1.htmlText = _Ay;
        _local1.width = 800;
        _local1.y = ((600 / 2) - (_local1.height / 2));
        addChild(_local1);
    }

}
}//package _0cy

