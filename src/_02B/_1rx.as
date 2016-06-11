// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_02B._1rx

package _02B {
import _1E._Pf;

import _r7.Command;

public class _1rx extends Command {

    [Inject]
    public var model:_Pf;
    [Inject]
    public var message:String;


    override public function execute():void {
        this.model.message = this.message;
    }


}
}//package _02B

