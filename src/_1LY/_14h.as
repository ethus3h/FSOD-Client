// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1LY._14h

package _1LY {
import _0MO._gs;

import _0tk.Command;

import _1Fr._qf;

import com.company.assembleegameclient.game.GameSprite;

public class _14h extends Command {

    [Inject]
    public var _1P:GameSprite;
    [Inject]
    public var model:_qf;
    [Inject]
    public var _1fy:_gs;


    override public function execute():void {
        this.model._1P = this._1P;
        this._1fy.dispatch();
    }


}
}//package _1LY

