// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util._0ZU

package com.company.assembleegameclient.util {
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.rotmg.graphics.StarGraphic;
import com.company.util.AssetLibrary;

import flash.display.BitmapData;
import flash.display.Sprite;
import flash.filters.DropShadowFilter;
import flash.geom.ColorTransform;

public class _0ZU {

    public static const _1RK:Vector.<int> = new <int>[20, 150, 400, 800, 2000];
    private static const _1yR:ColorTransform = new ColorTransform((138 / 0xFF), (152 / 0xFF), (222 / 0xFF));
    private static const _jd:ColorTransform = new ColorTransform((49 / 0xFF), (77 / 0xFF), (219 / 0xFF));
    private static const _1RD:ColorTransform = new ColorTransform((193 / 0xFF), (39 / 0xFF), (45 / 0xFF));
    private static const _0Cm:ColorTransform = new ColorTransform((247 / 0xFF), (147 / 0xFF), (30 / 0xFF));
    private static const _0Pl:ColorTransform = new ColorTransform((0xFF / 0xFF), (0xFF / 0xFF), (0 / 0xFF));
    public static const _02E:Vector.<ColorTransform> = new <ColorTransform>[_1yR, _jd, _1RD, _0Cm, _0Pl];


    public static function _0fG():int {
        return ((ObjectLibrary._0ZM.length * _1RK.length));
    }

    public static function numStars(_arg1:int):int {
        var _local2:int;
        while ((((_local2 < _1RK.length)) && ((_arg1 >= _1RK[_local2])))) {
            _local2++;
        }
        ;
        return (_local2);
    }

    public static function nextStarFame(_arg1:int, _arg2:int):int {
        var _local3:int = Math.max(_arg1, _arg2);
        var _local4:int;
        while (_local4 < _1RK.length) {
            if (_1RK[_local4] > _local3) {
                return (_1RK[_local4]);
            }
            ;
            _local4++;
        }
        ;
        return (-1);
    }

    public static function _0Pz(_arg1:int):Sprite {
        var _local2:Sprite = _033(_arg1);
        _local2.filters = [new DropShadowFilter(0, 0, 0, 1, 4, 4, 2)];
        _local2.scaleX = 1.4;
        _local2.scaleY = 1.4;
        return (_local2);
    }

    public static function _033(_arg1:int):Sprite {
        var _local2:Sprite = new StarGraphic();
        if (_arg1 < ObjectLibrary._0ZM.length) {
            _local2.transform.colorTransform = _1yR;
        } else {
            if (_arg1 < (ObjectLibrary._0ZM.length * 2)) {
                _local2.transform.colorTransform = _jd;
            } else {
                if (_arg1 < (ObjectLibrary._0ZM.length * 3)) {
                    _local2.transform.colorTransform = _1RD;
                } else {
                    if (_arg1 < (ObjectLibrary._0ZM.length * 4)) {
                        _local2.transform.colorTransform = _0Cm;
                    } else {
                        if (_arg1 < (ObjectLibrary._0ZM.length * 5)) {
                            _local2.transform.colorTransform = _0Pl;
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
        return (_local2);
    }

    public static function _1CO(_arg1:int):Sprite {
        var _local2:Sprite;
        var _local3:Sprite;
        _local2 = _033(_arg1);
        _local3 = new Sprite();
        _local3.graphics.beginFill(0, 0.4);
        var _local4:int = ((_local2.width / 2) + 2);
        var _local5:int = ((_local2.height / 2) + 2);
        _local3.graphics.drawCircle(_local4, _local5, _local4);
        _local2.x = 2;
        _local2.y = 1;
        _local3.addChild(_local2);
        _local3.filters = [new DropShadowFilter(0, 0, 0, 0.5, 6, 6, 1)];
        return (_local3);
    }

    public static function _0e1():BitmapData {
        var _local1:BitmapData = AssetLibrary._Rb("lofiObj3", 224);
        return (TextureRedrawer.redraw(_local1, 40, true, 0));
    }


}
}//package com.company.assembleegameclient.util

