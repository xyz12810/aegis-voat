#!/bin/bash

hosts=(
'a-0001.a-msedge.net'
'a-0002.a-msedge.net'
'a-0003.a-msedge.net'
'a-0004.a-msedge.net'
'a-0005.a-msedge.net'
'a-0006.a-msedge.net'
'a-0007.a-msedge.net'
'a-0008.a-msedge.net'
'a-0009.a-msedge.net'
'a23-218-212-69.deploy.static.akamaitechnologies.com'
'a.ads1.msn.com'
'a.ads2.msads.net'
'a.ads2.msn.com'
'ac3.msn.com'
'activation.playready.microsoft.com'
'ad.doubleclick.net'
'ads1.msads.net'
'ads1.msn.com'
'adsmockarc.azurewebsites.net'
'ads.msn.com'
'adsyndication.msn.com'
'aidps.atdmt.com'
'ajax.aspnetcdn.com'
'aka-cdn-ns.adtech.de'
'a-msedge.net'
#'api.bing.com'
'appexmapsappupdate.blob.core.windows.net'
#'apps.skype.com'
'a.rad.msn.com'
'au.au-msedge.net'
'auth.gfx.ms'
'az361816.vo.msecnd.net'
'az512334.vo.msecnd.net'
'b.ads1.msn.com'
'b.ads2.msads.net'
'bingads.microsoft.com'
#'bing.com'
'b.rad.msn.com'
'bs.serving-sys.com'
'c1.microsoft.com'
'c.atdmt.com'
'cdn.atdmt.com'
'cdn.content.prod.cms.msn.com'
'cdp1.public-trust.com'
'cds26.ams9.msecn.net'
'choice.microsoft.com'
'choice.microsoft.com.nsatc.net'
'c.microsoft.com'
'c.msn.com'
'cmsresources.windowsphone.com'
'compatexchange.cloudapp.net'
'content.windows.microsoft.com'
'corpext.msitadfs.glbdns2.microsoft.com'
'corp.sts.microsoft.com'
'cs1.wpc.v0cdn.net'
'c.s-microsoft.com'
'db3aqu.atdmt.com'
'dc.services.visualstudio.com'
'dev.virtualearth.net'
'df.telemetry.microsoft.com'
'diagnostics.support.microsoft.com'
'displaycatalog.md.mp.microsoft.com'
'dl.delivery.mp.microsoft.com'
'dmd.metaservices.microsoft.com'
#'download.microsoft.com'
'download-ssl.msgamestudios.com'
'ec.atdmt.com'
'ecn.dev.virtualearth.net'
'en-us.appex-rf.msn.com'
'fe2.update.microsoft.com.akadns.net'
'fe3.delivery.mp.microsoft.com'
'feedback.microsoft-hohm.com'
'feedback.search.microsoft.com'
'feedback.windows.com'
'ff4a487e56259f4bd5831e9e30470e83.azr.msnetworkanalytics.testanalytics.net'
'flex.msn.com'
'geo-prod.do.dsp.mp.microsoft.com'
'g.live.com'
'g.msn.com'
#'go.microsoft.com'
#'go.skype.com'
'h1.msn.com'
'h2.msn.com'
'help.bingads.microsoft.com'
#'hotmail.com'
'i1.services.social.microsoft.com'
'i1.services.social.microsoft.com.nsatc.net'
'iecvlist.microsoft.com'
'ieonline.microsoft.com'
'img-s-msn-com.akamaized.net'
'inference.location.live.net'
'js.microsoft.com'
'lb1.www.ms.akadns.net'
'licensing.md.mp.microsoft.com'
'live.rads.msn.com'
'livetileedge.dsx.mp.microsoft.com'
'logging.windows.microsoft.com'
#'login.live.com'
#'login.live.com.nsatc.net'
'm.adnxs.com'
'mediadiscovery.microsoft.com'
#'m.hotmail.com'
#'microsoft.com'
'msedge.net'
'msftncsi.com'
#'msnbc.com'
'msnbot-65-55-108-23.search.msn.com'
#'msn.com'
'msnportal.112.2o7.net'
'msntest.serving-sys.com'
#'nexus.officeapps.live.com'
'oca.telemetry.microsoft.com'
'oca.telemetry.microsoft.com.nsatc.net'
#'ocsp.msocsp.com'
#'ocsp.omniroot.com'
#'ocsp.startssl.com'
#'officeclient.microsoft.com'
#'outlook.com'
#'pipe.skype.com'
#'platform.bing.com'
'pre.footprintpredict.com'
#'preview.msn.com'
#'pricelist.skype.com'
'r20swj13mr.microsoft.com'
'rad.live.com'
'rad.msn.com'
'redir.metaservices.microsoft.com'
'reports.wes.df.telemetry.microsoft.com'
'sb.scorecardresearch.com'
'schemas.microsoft.akadns.net'
'secure.adnxs.com'
'secure.flashtalking.com'
'services.wes.df.telemetry.microsoft.com'
'settings.data.microsoft.com'
'settings-sandbox.data.microsoft.com'
'settings-ssl.xboxlive.com'
'settings-win.data.microsoft.com'
's.gateway.messenger.live.com'
'sgmetrics.cloudapp.net'
'shell.windows.com'
'sls.update.microsoft.com'
'sls.update.microsoft.com.akadns.net'
'sls.update.microsoft.com.nsatc.net'
'sO.2mdn.net'
#'social.answers.microsoft.com'
'spynet2.microsoft.com'
'spynetalt.microsoft.com'
'sqm.df.telemetry.microsoft.com'
'sqm.microsoft.com'
'sqm.telemetry.microsoft.com'
'sqm.telemetry.microsoft.com.nsatc.net'
'ssw.live.com'
'static.2mdn.net'
'statsfe1.ws.microsoft.com'
'statsfe2.update.microsoft.com.akadns.net'
'statsfe2.ws.microsoft.com'
'storeedgefd.dsx.mp.microsoft.com'
#'store-images.microsoft.com'
'survey.watson.microsoft.com'
't0.ssl.ak.dynamic.tiles.virtualearth.net'
't0.ssl.ak.tiles.virtualearth.net'
'telecommand.telemetry.microsoft.com'
'telecommand.telemetry.microsoft.com.nsatc.net'
'telemetry.appex.bing.net'
'telemetry.microsoft.com'
'telemetry.urs.microsoft.com'
'tile-service.weather.microsoft.com'
'tlu.dl.delivery.mp.microsoft.com'
#'ui.skype.com'
'urs.microsoft.com'
#'vassg141.ocsp.omniroot.com'
'version.hybrid.api.here.com'
'view.atdmt.com'
'vortex-bn2.metron.live.com.nsatc.net'
'vortex-cy2.metron.live.com.nsatc.net'
'vortex.data.microsoft.com'
'vortex-sandbox.data.microsoft.com'
'vortex-win.data.microsoft.com'
'watson.live.com'
'watson.microsoft.com'
'watson.ppe.telemetry.microsoft.com'
'watson.telemetry.microsoft.com'
'watson.telemetry.microsoft.com.nsatc.net'
'wes.df.telemetry.microsoft.com'
#'www.microsoft.com'
'www.modern.ie'
'www.msftncsi.com'
#'www.msn.com'
);

echo;
echo '@echo off' >'block.cmd';
for host in ${hosts[@]};
do
    echo "rem block ${host}";
    dig @8.8.8.8 +short ${host} 2>/dev/null |
    sed 's/\.$//g' |
    while read line1;
    do
        echo ${hosts[@]} |
        grep "^${line1}$" >/dev/null 2>&1 && break;
        [[ ${line1} =~ [a-z]$ ]] && dig @8.8.8.8 +short ${line1} 2>/dev/null | sed 's/\.$//g' || echo ${line1};
    done |
    sort |
    uniq |
    while read line2;
    do
        echo ${hosts[@]} |
        grep "^${line1}$" >/dev/null 2>&1 && break;
        [[ ${line2} =~ [a-z]$ ]] && dig @8.8.8.8 +short ${line2} 2>/dev/null | sed 's/\.$//g' || echo ${line2};
    done |
    sort |
    uniq |
    while read line3;
    do
        echo ${hosts[@]} |
        grep "^${line1}$" >/dev/null 2>&1 && break;
        [[ ${line3} =~ [a-z]$ ]] && dig @8.8.8.8 +short ${line3} 2>/dev/null | sed 's/\.$//g' || echo ${line3};
    done |
    sort |
    uniq |
    while read line4;
    do
        echo ${hosts[@]} |
        grep "^${line1}$" >/dev/null 2>&1 && break;
        [[ ${line4} =~ [a-z]$ ]] && dig @8.8.8.8 +short ${line4} 2>/dev/null | sed 's/\.$//g' || echo ${line4};
    done |
    sort |
    uniq |
    while read line5;
    do
        echo ${hosts[@]} |
        grep "^${line1}$" >/dev/null 2>&1 && break;
        [[ ${line5} =~ [a-z]$ ]] && dig @8.8.8.8 +short ${line5} 2>/dev/null | sed 's/\.$//g' || echo ${line5};
    done |
    sort |
    uniq |
    while read line6;
    do
        echo "route -p add ${line6}/32 0.0.0.0 >nul 2>nul";
    done;
    echo;
done | tee 'block.cmd';
echo 'exit' >>'block.cmd';
cat 'block.cmd' | sed 's/block/unblock/g;s/route -p add/route delete/g;s/\/32 0\.0\.0\.0//g' >'unblock.cmd';
