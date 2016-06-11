// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0t-._0db

package _0t {
import _Z0.ToolTip;

import com.company.ui._V2;

import flash.filters.DropShadowFilter;

public class _0db extends ToolTip {

    private static const _MT:int = 180;

    public function _0db(_arg1:XML) {
        var _local3:XML;
        super(0x363636, 1, 0x9B9B9B, 1, true);
        this._zj = new _V2(16, 0xFFFFFF, false, (_MT - 4), 0);
        this._zj.setBold(true);
        this._zj.wordWrap = true;
        this._zj.text = String(_arg1.@id);
        this._zj._fm();
        this._zj.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        this._zj.x = 0;
        this._zj.y = 0;
        addChild(this._zj);
        var _local2 = "";
        if (_arg1.hasOwnProperty("Group")) {
            _local2 = (_local2 + (("Group: " + _arg1.Group) + "\n"));
        }
        ;
        if (_arg1.hasOwnProperty("Static")) {
            _local2 = (_local2 + "Static\n");
        }
        ;
        if (_arg1.hasOwnProperty("Enemy")) {
            _local2 = (_local2 + "Enemy\n");
            if (_arg1.hasOwnProperty("MaxHitPoints")) {
                _local2 = (_local2 + (("MaxHitPoints: " + _arg1.MaxHitPoints) + "\n"));
            }
            ;
            if (_arg1.hasOwnProperty("Defense")) {
                _local2 = (_local2 + (("Defense: " + _arg1.Defense) + "\n"));
            }
            ;
        }
        ;
        if (_arg1.hasOwnProperty("God")) {
            _local2 = (_local2 + "God\n");
        }
        ;
        if (_arg1.hasOwnProperty("Quest")) {
            _local2 = (_local2 + "Quest\n");
        }
        ;
        if (_arg1.hasOwnProperty("Hero")) {
            _local2 = (_local2 + "Hero\n");
        }
        ;
        if (_arg1.hasOwnProperty("Encounter")) {
            _local2 = (_local2 + "Encounter\n");
        }
        ;
        if (_arg1.hasOwnProperty("Level")) {
            _local2 = (_local2 + (("Level: " + _arg1.Level) + "\n"));
        }
        ;
        if (_arg1.hasOwnProperty("Terrain")) {
            _local2 = (_local2 + (("Terrain: " + _arg1.Terrain) + "\n"));
        }
        ;
        for each (_local3 in _arg1.Projectile) {
            _local2 = (_local2 + (((((((((("Projectile " + _local3.@id) + ": ") + _local3.ObjectId) + "\n") + "\tDamage: ") + _local3.Damage) + "\n") + "\tSpeed: ") + _local3.Speed) + "\n"));
            if (_local3.hasOwnProperty("PassesCover")) {
                _local2 = (_local2 + "\tPassesCover\n");
            }
            ;
            if (_local3.hasOwnProperty("MultiHit")) {
                _local2 = (_local2 + "\tMultiHit\n");
            }
            ;
            if (_local3.hasOwnProperty("ConditionEffect")) {
                _local2 = (_local2 + (((("\t" + _local3.ConditionEffect) + " for ") + _local3.ConditionEffect.@duration) + " secs\n"));
            }
            ;
            if (_local3.hasOwnProperty("Parametric")) {
                _local2 = (_local2 + "\tParametric\n");
            }
            ;
        }
        ;
        this._1TU = new _V2(14, 0xB3B3B3, false, _MT, 0);
        this._1TU.wordWrap = true;
        this._1TU.text = String(_local2);
        this._1TU._fm();
        this._1TU.filters = [new DropShadowFilter(0, 0, 0, 0.5, 12, 12)];
        this._1TU.x = 0;
        this._1TU.y = (this._zj.height + 2);
        addChild(this._1TU);
    }
    private var _zj:_V2;
    private var _1TU:_V2;

}
}//package _0t-

