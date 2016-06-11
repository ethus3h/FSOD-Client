// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_FT._0Bq

package _FT {
import _03u._1hp;
import _03u._2w;
import _03u._BW;

import _0cA._0bz;

import _12._1Ie;

import _r7.Command;

public class _0Bq extends Command {

    [Inject]
    public var _0Ye:_BW;
    [Inject]
    public var _sk:_0bz;
    [Inject]
    public var _1kx:_1Qu;


    override public function execute():void {
        var _local1:_2w = new _2w();
        _local1.add(this._sk.getInstance(_1Ie));
        _local1.add(new _1hp(this._1kx));
        this._0Ye.add(_local1);
        _local1.start();
    }


}
}//package _FT

