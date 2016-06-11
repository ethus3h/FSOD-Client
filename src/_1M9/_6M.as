// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1M9._6M

package _1M9 {
import _0oL.*;

import com.company.assembleegameclient.parameters.Parameters;

public class _6M implements _0hs {

    public function _6M() {
        this.localhost = new Server().setName("localhost").setPort(Parameters._oE);
    }
    private var localhost:Server;

    public function setIP(_arg1:String):_6M {
        this.localhost.setAddress(_arg1);
        return (this);
    }

    public function _1Z3():Vector.<Server> {
        return (new <Server>[this.localhost]);
    }

    public function _Fg():Server {
        return (this.localhost);
    }

    public function _Pg():Boolean {
        return (true);
    }

    public function _1xn(_arg1:Vector.<Server>):void {
    }


}
}//package _1M9

