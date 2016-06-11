// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0P7._mu

package _0P7 {
import _0Mr._1M;

import _0y9._1Ds;

import _1ik._2X;

import _1qi._1cF;

import _Z0.ToolTip;

import com.company.assembleegameclient.ui._1g;

import flash.display.Bitmap;

public class _mu extends ToolTip {

    public function _mu(_arg1:_2X) {
        var _local3:_1Ds;
        var _local5:_1g;
        var _local2:Bitmap = new Bitmap();
        _local2.bitmapData = _arg1._1PC;
        _local2.scaleX = 0.75;
        _local2.scaleY = 0.75;
        _local2.y = 5;
        addChild(_local2);
        _local3 = new _1Ds();
        _local3.setSize(14).setBold(true).setColor(0xFFFFFF);
        _local3.setStringBuilder(new _1M(_arg1.name));
        _local3.x = 40;
        _local3.y = 5;
        addChild(_local3);
        if (_arg1.guildName) {
            _local5 = new _1g(_arg1.guildName, _arg1._1sn);
            _local5.x = 40;
            _local5.y = 20;
            addChild(_local5);
        }
        ;
        super(0x363636, 0.5, 0xFFFFFF, 1);
        var _local4:_1cF = new _1cF(null, _arg1._16, null);
        _local4.x = 5;
        _local4.y = ((_local5) ? ((_local5.y + _local5.height) - 5) : 55);
        _local4.setItems(_arg1._0Jj);
        addChild(_local4);
    }

}
}//package _0P7

