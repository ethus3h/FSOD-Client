// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.company.assembleegameclient.util.EmbeddedAssetsLoader

package com.company.assembleegameclient.util {
import _1TG._0Yn;
import _1TG._1Y;
import _1TG._ZK;

import _GI._rA;

import com.company.assembleegameclient.engine3d._2c;
import com.company.assembleegameclient.map._0Y2;
import com.company.assembleegameclient.map._0d7;
import com.company.assembleegameclient.objects.ObjectLibrary;
import com.company.assembleegameclient.parameters.Parameters;
import com.company.util.AssetLibrary;

import flash.utils.ByteArray;
import flash.utils.getQualifiedClassName;

import kabam.rotmg.assets._0vi;
import kabam.rotmg.assets._1tT;

public class EmbeddedAssetsLoader {

    public static var _U5:Boolean = false;

    public function EmbeddedAssetsLoader() {
        this._try = new _0P3();
        super();
    }
    public var _try:_ZK;

    public function load():void {
        this._0bv();
        this._01k();
        this._1e6();
        this._0m4();
        this._1zI();
        this._0P1();
        this._DE();
        this._0lO();
        Parameters.load();
        this._try.load();
        _1Y.load();
    }

    private function _0bv():void {
        AssetLibrary._lc("lofiChar8x8", new _0vi.lofiCharEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiChar16x8", new _0vi.lofiCharEmbed_().bitmapData, 16, 8);
        AssetLibrary._lc("lofiChar16x16", new _0vi.lofiCharEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiChar28x8", new _0vi.lofiChar2Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiChar216x8", new _0vi.lofiChar2Embed_().bitmapData, 16, 8);
        AssetLibrary._lc("lofiChar216x16", new _0vi.lofiChar2Embed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiCharBig", new _0vi.lofiCharBigEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiEnvironment", new _0vi.lofiEnvironmentEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiEnvironment2", new _0vi.lofiEnvironment2Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiEnvironment3", new _0vi.lofiEnvironment3Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiInterface", new _0vi.lofiInterfaceEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("redLootBag", new _0vi.redLootBagEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiInterfaceBig", new _0vi.lofiInterfaceBigEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiInterface2", new _0vi.lofiInterface2Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj", new _0vi.lofiObjEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj2", new _0vi.lofiObj2Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj3", new _0vi.lofiObj3Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj4", new _0vi.lofiObj4Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj5", new _0vi.lofiObj5Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObj6", new _0vi.lofiObj6Embed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiObjBig", new _0vi.lofiObjBigEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiObj40x40", new _0vi.lofiObj40x40Embed_().bitmapData, 40, 40);
        AssetLibrary._lc("lofiProjs", new _0vi.lofiProjsEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("lofiParticlesShocker", new _0vi.lofiParticlesShockerEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiProjsBig", new _0vi.lofiProjsBigEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("lofiParts", new _0vi.lofiPartsEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("stars", new _0vi.starsEmbed_().bitmapData, 5, 5);
        AssetLibrary._lc("textile4x4", new _0vi.textile4x4Embed_().bitmapData, 4, 4);
        AssetLibrary._lc("textile5x5", new _0vi.textile5x5Embed_().bitmapData, 5, 5);
        AssetLibrary._lc("textile9x9", new _0vi.textile9x9Embed_().bitmapData, 9, 9);
        AssetLibrary._lc("textile10x10", new _0vi.textile10x10Embed_().bitmapData, 10, 10);
        AssetLibrary._lc("inner_mask", new _0vi.innerMaskEmbed_().bitmapData, 4, 4);
        AssetLibrary._lc("sides_mask", new _0vi.sidesMaskEmbed_().bitmapData, 4, 4);
        AssetLibrary._lc("outer_mask", new _0vi.outerMaskEmbed_().bitmapData, 4, 4);
        AssetLibrary._lc("innerP1_mask", new _0vi.innerP1MaskEmbed_().bitmapData, 4, 4);
        AssetLibrary._lc("innerP2_mask", new _0vi.innerP2MaskEmbed_().bitmapData, 4, 4);
        AssetLibrary._lc("invisible", new _0Iy(8, 8, true, 0), 8, 8);
        AssetLibrary._lc("d3LofiObjEmbed", new _0vi.d3LofiObjEmbed_().bitmapData, 8, 8);
        AssetLibrary._lc("d3LofiObjBigEmbed", new _0vi.d3LofiObjBigEmbed_().bitmapData, 16, 16);
        AssetLibrary._lc("d1lofiObjBig", new _0vi.d1LofiObjBigEmbed_().bitmapData, 16, 16);
    }

    private function _01k():void {
        _0pu.add("chars8x8rBeach", new _0vi.chars8x8rBeachEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8dBeach", new _0vi.chars8x8dBeachEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.DOWN);
        _0pu.add("chars8x8rLow1", new _0vi.chars8x8rLow1Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rLow2", new _0vi.chars8x8rLow2Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rMid", new _0vi.chars8x8rMidEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rMid2", new _0vi.chars8x8rMid2Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rHigh", new _0vi.chars8x8rHighEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rHero1", new _0vi.chars8x8rHero1Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rHero2", new _0vi.chars8x8rHero2Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8dHero1", new _0vi.chars8x8dHero1Embed_().bitmapData, null, 8, 8, 56, 8, _0zq.DOWN);
        _0pu.add("chars16x16dMountains1", new _0vi.chars16x16dMountains1Embed_().bitmapData, null, 16, 16, 112, 16, _0zq.DOWN);
        _0pu.add("chars16x16dMountains2", new _0vi.chars16x16dMountains2Embed_().bitmapData, null, 16, 16, 112, 16, _0zq.DOWN);
        _0pu.add("chars8x8dEncounters", new _0vi.chars8x8dEncountersEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.DOWN);
        _0pu.add("chars8x8rEncounters", new _0vi.chars8x8rEncountersEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars16x8dEncounters", new _0vi.chars16x8dEncountersEmbed_().bitmapData, null, 16, 8, 112, 8, _0zq.DOWN);
        _0pu.add("chars16x8rEncounters", new _0vi.chars16x8rEncountersEmbed_().bitmapData, null, 16, 8, 112, 8, _0zq.DOWN);
        _0pu.add("chars16x16dEncounters", new _0vi.chars16x16dEncountersEmbed_().bitmapData, null, 16, 16, 112, 16, _0zq.DOWN);
        _0pu.add("chars16x16dEncounters2", new _0vi.chars16x16dEncounters2Embed_().bitmapData, null, 16, 16, 112, 16, _0zq.DOWN);
        _0pu.add("chars16x16rEncounters", new _0vi.chars16x16rEncountersEmbed_().bitmapData, null, 16, 16, 112, 16, _0zq.RIGHT);
        _0pu.add("d3Chars8x8rEmbed", new _0vi.d3Chars8x8rEmbed_().bitmapData, null, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("d3Chars16x16rEmbed", new _0vi.d3Chars16x16rEmbed_().bitmapData, null, 16, 16, 112, 16, _0zq.RIGHT);
        _0pu.add("players", new _0vi.playersEmbed_().bitmapData, new _0vi.playersMaskEmbed_().bitmapData, 8, 8, 56, 24, _0zq.RIGHT);
        _0pu.add("playerskins", new _0vi.playersSkinsEmbed_().bitmapData, new _0vi.playersSkinsMaskEmbed_().bitmapData, 8, 8, 56, 24, _0zq.RIGHT);
        _0pu.add("chars8x8rPets1", new _0vi.chars8x8rPets1Embed_().bitmapData, new _0vi.chars8x8rPets1MaskEmbed_().bitmapData, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("chars8x8rPets2", new _0vi.chars8x8rPets2Embed_().bitmapData, new _0vi.chars8x8rPets1MaskEmbed_().bitmapData, 8, 8, 56, 8, _0zq.RIGHT);
        _0pu.add("petsDivine", new _0vi.petsDivineEmbed_().bitmapData, null, 16, 16, 112, 16, _0zq.RIGHT);
        _0pu.add("playerskins16", new _0vi.playersSkins16Embed_().bitmapData, new _0vi.playersSkins16MaskEmbed_().bitmapData, 16, 16, 112, 48, _0zq.RIGHT);
        _0pu.add("d1chars16x16r", new _0vi.d1Chars16x16rEmbed_().bitmapData, null, 16, 16, 112, 16, _0zq.RIGHT);
    }

    private function _1e6():void {
        _0Yn.load("button_click");
        _0Yn.load("death_screen");
        _0Yn.load("enter_realm");
        _0Yn.load("error");
        _0Yn.load("inventory_move_item");
        _0Yn.load("level_up");
        _0Yn.load("loot_appears");
        _0Yn.load("no_mana");
        _0Yn.load("use_key");
        _0Yn.load("use_potion");
    }

    private function _0m4():void {
        var _local1:String;
        var _local2:ByteArray;
        var _local3:String;
        for (_local1 in _0vi._1Gd) {
            _local2 = _0vi._1Gd[_local1];
            _local3 = _local2.readUTFBytes(_local2.length);
            _2c._0At(_local1, _local2);
            _2c._0UK(_local1, _local3);
        }
        ;
    }

    private function _1zI():void {
        var _local1:XML = XML(new _0vi.particlesEmbed());
        _rA._0vQ(_local1);
    }

    private function _0P1():void {
        var _local1:*;
        for each (_local1 in _1tT._1H6) {
            _0d7._0vQ(XML(_local1));
        }
        ;
    }

    private function _DE():void {
        var _local1:*;
        for each (_local1 in _1tT._Eg) {
            _U5 = this._1Vc(_local1);
            ObjectLibrary._0vQ(XML(_local1));
        }
        ;
        _U5 = false;
    }

    private function _0lO():void {
        var _local1:*;
        for each (_local1 in _1tT._6f) {
            _0Y2._0vQ(XML(_local1));
        }
        ;
    }

    private function _1Vc(_arg1):Boolean {
        return (!((getQualifiedClassName(_arg1).indexOf("TestingCXML", 33) == -1)));
    }


}
}//package com.company.assembleegameclient.util

