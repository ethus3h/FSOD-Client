// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1pR._1pJ

package _1pR {
import _1TC._08E;

import _1cr._0VP;

import _20I._1GP;

import _Qu._en;

import _fL._RT;

public class _1pJ {

    [Inject]
    public var skin:_1GP;
    [Inject]
    public var _1Zi:_0VP;
    [Inject]
    public var server:_en;


    public function execute():void {
        var _local1:_RT = (this._1Zi._1SN(_08E.RESKIN) as _RT);
        _local1.skinID = this.skin.id;
        this.server.sendMessage(_local1);
    }


}
}//package _1pR

