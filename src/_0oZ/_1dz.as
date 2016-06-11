// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_0oZ._1dz

package _0oZ {
final class _1dz {

    public function _1dz() {
        this._1gA = new Vector.<String>();
        this.index = 0;
    }
    private var _1gA:Vector.<String>;
    private var index:int;

    public function get length():int {
        return (this._1gA.length);
    }

    public function add(_arg1:String):void {
        this.index = this._1gA.push(_arg1);
    }

    public function _0TG():String {
        return ((((this.index > 0)) ? this._1gA[--this.index] : ""));
    }

    public function _04l():String {
        return ((((this.index < (this._1gA.length - 1))) ? this._1gA[++this.index] : ""));
    }


}
}//package _0oZ

