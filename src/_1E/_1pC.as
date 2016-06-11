// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1E-._1pC

package _1E {
import com.company.assembleegameclient.parameters.Parameters;

public class _1pC {


    public function _9Y(_arg1:String):Boolean {
        var _local2:Boolean;
        if (_arg1 == null) {
            return (true);
        }
        ;
        if ((((((((_arg1 == Parameters._1o9)) || ((_arg1 == Parameters._0Cn)))) || ((_arg1 == Parameters._0c)))) || ((_arg1 == Parameters._11L)))) {
            _local2 = true;
        }
        ;
        if (_arg1.charAt(0) == "#") {
            _local2 = true;
        }
        ;
        if (_arg1.charAt(0) == "@") {
            _local2 = true;
        }
        ;
        return (_local2);
    }


}
}//package _1E-

