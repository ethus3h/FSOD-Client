﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//com.google.analytics.v4.Configuration

package com.google.analytics.v4 {
import com.google.analytics.campaign.CampaignKey;
import com.google.analytics.core.Domain;
import com.google.analytics.core.DomainNameMode;
import com.google.analytics.core.Organic;
import com.google.analytics.core.ServerOperationMode;
import com.google.analytics.debug.DebugConfiguration;
import com.google.analytics.utils.Timespan;

public class Configuration {

    public function Configuration(_arg1:DebugConfiguration = null) {
        _organic = new Organic();
        conversionTimeout = Timespan.sixmonths;
        sessionTimeout = Timespan.thirtyminutes;
        campaignKey = new CampaignKey();
        serverMode = ServerOperationMode.remote;
        super();
        _debug = _arg1;
        _domain = new Domain(DomainNameMode.auto, "", _debug);
        serverMode = ServerOperationMode.remote;
        _initOrganicSources();
    }
    public var serverMode:ServerOperationMode;
    public var detectFlash:Boolean = true;
    public var hasSiteOverlay:Boolean = false;
    public var allowLocalTracking:Boolean = true;
    public var secureRemoteGIFpath:String = "https://ssl.google-analytics.com/__utm.gif";
    public var allowDomainHash:Boolean = true;
    public var detectClientInfo:Boolean = true;
    public var idleLoop:Number = 30;
    public var isTrackOutboundSubdomains:Boolean = false;
    public var cookiePath:String = "/";
    public var transactionFieldDelim:String = "|";
    public var campaignKey:CampaignKey;
    public var google:String = "google";
    public var googleCsePath:String = "cse";
    public var bucketCapacity:Number = 10;
    public var remoteGIFpath:String = "http://www.google-analytics.com/__utm.gif";
    public var googleSearchParam:String = "q";
    public var allowLinker:Boolean = false;
    public var maxOutboundLinkExamined:Number = 1000;
    public var allowAnchor:Boolean = false;
    public var tokenCliff:int = 10;
    public var sessionTimeout:Number;
    public var idleTimeout:Number = 60;
    public var campaignTracking:Boolean = true;
    public var domainName:String = "";
    public var detectTitle:Boolean = true;
    public var tokenRate:Number = 0.2;
    public var conversionTimeout:Number;
    public var localGIFpath:String = "/__utm.gif";
    private var _debug:DebugConfiguration;

    private var _version:String = "4.3as";

    public function get version():String {
        return (_version);
    }

    private var _organic:Organic;

    public function get organic():Organic {
        return (_organic);
    }

    private var _cookieName:String = "analytics";

    public function get cookieName():String {
        return (_cookieName);
    }

    private var _sampleRate:Number = 1;

    public function get sampleRate():Number {
        return (_sampleRate);
    }

    public function set sampleRate(_arg1:Number):void {
        if (_arg1 <= 0) {
            _arg1 = 0.1;
        }
        ;
        if (_arg1 > 1) {
            _arg1 = 1;
        }
        ;
        _arg1 = Number(_arg1.toFixed(2));
        _sampleRate = _arg1;
    }

    private var _domain:Domain;

    public function get domain():Domain {
        return (_domain);
    }

    private var _trackingLimitPerSession:int = 500;

    public function get trackingLimitPerSession():int {
        return (_trackingLimitPerSession);
    }

    public function addOrganicSource(_arg1:String, _arg2:String):void {
        var engine:String = _arg1;
        var keyword:String = _arg2;
        try {
            _organic.addSource(engine, keyword);
        } catch (e:Error) {
            if (((_debug) && (_debug.active))) {
                _debug.warning(e.message);
            }
            ;
        }
        ;
    }

    private function _initOrganicSources():void {
        addOrganicSource(google, googleSearchParam);
        addOrganicSource("yahoo", "p");
        addOrganicSource("msn", "q");
        addOrganicSource("aol", "query");
        addOrganicSource("aol", "encquery");
        addOrganicSource("lycos", "query");
        addOrganicSource("ask", "q");
        addOrganicSource("altavista", "q");
        addOrganicSource("netscape", "query");
        addOrganicSource("cnn", "query");
        addOrganicSource("looksmart", "qt");
        addOrganicSource("about", "terms");
        addOrganicSource("mamma", "query");
        addOrganicSource("alltheweb", "q");
        addOrganicSource("gigablast", "q");
        addOrganicSource("voila", "rdata");
        addOrganicSource("virgilio", "qs");
        addOrganicSource("live", "q");
        addOrganicSource("baidu", "wd");
        addOrganicSource("alice", "qs");
        addOrganicSource("yandex", "text");
        addOrganicSource("najdi", "q");
        addOrganicSource("aol", "q");
        addOrganicSource("club-internet", "q");
        addOrganicSource("mama", "query");
        addOrganicSource("seznam", "q");
        addOrganicSource("search", "q");
        addOrganicSource("wp", "szukaj");
        addOrganicSource("onet", "qt");
        addOrganicSource("netsprint", "q");
        addOrganicSource("google.interia", "q");
        addOrganicSource("szukacz", "q");
        addOrganicSource("yam", "k");
        addOrganicSource("pchome", "q");
        addOrganicSource("kvasir", "searchExpr");
        addOrganicSource("sesam", "q");
        addOrganicSource("ozu", "q");
        addOrganicSource("terra", "query");
        addOrganicSource("nostrum", "query");
        addOrganicSource("mynet", "q");
        addOrganicSource("ekolay", "q");
        addOrganicSource("search.ilse", "search_for");
    }


}
}//package com.google.analytics.v4

