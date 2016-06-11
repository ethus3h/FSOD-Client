// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0pG._1wd

package _0pG {
import com.company.assembleegameclient.objects._0sh;
import com.company.assembleegameclient.objects._1kQ;

public class _1wd {

    public function _1wd(_arg1:XML) {
        this.time_ = int((Number(_arg1.@time) * 1000));
        this._1Ip = new _0sh(_arg1);
    }
    public var time_:int;
    public var _1Ip:_1kQ;

}
}//package _0pG

