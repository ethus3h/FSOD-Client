// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//_u5._NH

package _u5 {
import flash.display.BitmapData;
import flash.display3D.textures.Texture;
import flash.display3D.textures.TextureBase;

public class _NH {

    public function _NH(_arg1:Texture) {
        this.texture = _arg1;
    }
    protected var width:int;
    protected var height:int;
    private var texture:Texture;

    public function uploadFromBitmapData(_arg1:BitmapData):void {
        this.width = _arg1.width;
        this.height = _arg1.height;
        this.texture.uploadFromBitmapData(_arg1);
    }

    public function getTexture():TextureBase {
        return (this.texture);
    }

    public function _1Ng():int {
        return (this.width);
    }

    public function getHeight():int {
        return (this.height);
    }

    public function dispose():void {
        this.texture.dispose();
    }


}
}//package _u5

