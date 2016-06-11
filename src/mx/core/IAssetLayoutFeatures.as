// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//mx.core.IAssetLayoutFeatures

package mx.core {
import flash.geom.Matrix;
import flash.geom.Matrix3D;

public interface IAssetLayoutFeatures {

    function get layoutX():Number;

    function set layoutX(_arg1:Number):void;

    function get layoutY():Number;

    function set layoutY(_arg1:Number):void;

    function get layoutZ():Number;

    function set layoutZ(_arg1:Number):void;

    function get layoutWidth():Number;

    function set layoutWidth(_arg1:Number):void;

    function get transformX():Number;

    function set transformX(_arg1:Number):void;

    function get transformY():Number;

    function set transformY(_arg1:Number):void;

    function get transformZ():Number;

    function set transformZ(_arg1:Number):void;

    function get layoutRotationX():Number;

    function set layoutRotationX(_arg1:Number):void;

    function get layoutRotationY():Number;

    function set layoutRotationY(_arg1:Number):void;

    function get layoutRotationZ():Number;

    function set layoutRotationZ(_arg1:Number):void;

    function get layoutScaleX():Number;

    function set layoutScaleX(_arg1:Number):void;

    function get layoutScaleY():Number;

    function set layoutScaleY(_arg1:Number):void;

    function get layoutScaleZ():Number;

    function set layoutScaleZ(_arg1:Number):void;

    function get layoutMatrix():Matrix;

    function set layoutMatrix(_arg1:Matrix):void;

    function get layoutMatrix3D():Matrix3D;

    function set layoutMatrix3D(_arg1:Matrix3D):void;

    function get is3D():Boolean;

    function get layoutIs3D():Boolean;

    function get mirror():Boolean;

    function set mirror(_arg1:Boolean):void;

    function get stretchX():Number;

    function set stretchX(_arg1:Number):void;

    function get stretchY():Number;

    function set stretchY(_arg1:Number):void;

    function get computedMatrix():Matrix;

    function get computedMatrix3D():Matrix3D;

}
}//package mx.core

