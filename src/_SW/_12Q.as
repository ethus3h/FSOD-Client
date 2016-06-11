// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_SW._12Q

package _SW {
import __Nf.JSON;

public class _12Q implements _1z5 {


    public function stringify(_arg1:Object):String {
        return __Nf.JSON.encode(_arg1);
    }

    public function parse(_arg1:String):Object {
        return __Nf.JSON.decode(_arg1);
    }


}
}//package _SW

