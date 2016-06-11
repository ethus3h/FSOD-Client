// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_vp._1-i

package _vp {
import _08Y._QU;

import _0tk.Command;

import _1TC._08E;

import _1cr._0VP;

import _Qu._en;

import _fL._7V;

public class _1i extends Command {

    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var server:_en;
    [Inject]
    public var _15w:int;


    override public function execute():void {
        var _local1:_7V = (this._1Zi._1SN(_08E._1Rz) as _7V);
        _local1._03p = this._15w;
        _local1._0zQ = _QU._fQ;
        this.server.sendMessage(_local1);
    }


}
}//package _vp

