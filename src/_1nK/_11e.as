// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_1nK._11e

package _1nK {
import _03Q._00k;
import _03Q._14X;

import flash.display.DisplayObject;
import flash.display.Loader;
import flash.net.URLRequest;
import flash.system.LoaderContext;

public class _11e extends _0MP {

    public function _11e() {
        this.loader = (addChild(new Loader()) as Loader);
        super();
    }
    private var loader:Loader;
    private var _0ah:_00k;

    override public function get content():DisplayObject {
        return (this.loader.content);
    }

    override public function get contentLoaderInfo():_00k {
        if (this._0ah == null) {
            this._0ah = new _14X();
            this._0ah.loaderInfo = this.loader.contentLoaderInfo;
        }
        ;
        return (this._0ah);
    }

    override public function load(_arg1:URLRequest, _arg2:LoaderContext = null):void {
        this.loader.load(_arg1, _arg2);
    }

    override public function unload():void {
        this.loader.unload();
    }


}
}//package _1nK

