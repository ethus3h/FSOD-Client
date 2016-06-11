// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_md._1tJ

package _md {
public class _1tJ {

    public function _1tJ() {
        this.final = new Vector.<String>();
        super();
    }
    private var final:Vector.<String>;
    private var index:int = 0;

    public function push(_arg1:String):void {
        var _local2:int = this.final.indexOf(_arg1);
        if (_local2 != -1) {
            this.final.splice(_local2, 1);
        }
        ;
        this.final.unshift(_arg1);
    }

    public function _04l():String {
        if (this.final.length > 0) {
            this.index = ((this.index + 1) % this.final.length);
            return (this.final[this.index]);
        }
        ;
        return ("");
    }

    public function _1N2():void {
        this.index = -1;
    }

    public function _G1():void {
        this.final = new Vector.<String>();
        this.index = 0;
    }


}
}//package _md

