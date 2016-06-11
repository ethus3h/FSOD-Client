// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_gr._172

package _gr {
import _03u._BW;

public class _172 {

    [Inject]
    public var startup:_1U7;
    [Inject]
    public var _1ZX:_BW;


    public function execute():void {
        this._1ZX.add(this.startup);
        this.startup.start();
    }


}
}//package _gr

