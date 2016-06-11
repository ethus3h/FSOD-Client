// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_07g._0rY

package _07g {
import _0oL._0hs;

import _0t._Ko;

import _10a._FU;

import _r7._17v;

public class _0rY extends _17v {

    [Inject]
    public var view:_Ko;
    [Inject]
    public var model:_FU;
    [Inject]
    public var servers:_0hs;


    override public function initialize():void {
        this.view.initialize(this.model, this.servers._Fg());
    }


}
}//package _07g

