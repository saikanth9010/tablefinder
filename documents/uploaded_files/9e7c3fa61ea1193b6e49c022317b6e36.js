if(!Array.isArray){Array.isArray=function(arg){return(Object.prototype.toString.call(arg)==="[object Array]");};};(function($,window,undefined){"use strict";var pyncer=new function(){};$.extend(pyncer,{url:{},arr:{},units:{},isEmpty:function(value){if(value===undefined){return true;}
if($.isArray(value)){return(value.length===0);}
if($.isEmptyObject(value)){return true;}
if(!value){return true;}
return false;},error:function(msg){throw new Error(msg);},startsWith:function(s,sub){if(s.substr(0,sub.length)==sub){return true;}
return false;},endsWith:function(s,sub){if(s.substr(s.length-sub.length,sub.length)==sub){return true;}
return false;},disableSelection:function(e){e=$(e)[0];if(e.nodeType==1){e.unselectable="on";}
var child=e.firstChild;while(child){pyncer.disableSelection(child);child=child.nextSibling;}}});$.extend(pyncer.url,{encodeComponent:function(value){return value.toString().replace(/\%20/g,'+');},decodeComponent:function(value){return value.toString().replace(/\+/g,'%20');},parseQuery:function(query){var q={},s,p,pos;pos=query.indexOf('?');if(pos===-1){return{};}
query=query.substr(pos+1);s=query.split("&");$.each(s,function(k,v){if(v){p=v.split("=",2);if(p.length==2){q[decodeURIComponent(p[0])]=pyncer.url.decodeComponent(p[1]);}
else{q[decodeURIComponent(p[0])]='';}}});return q;},query:function(url){var pos=url.indexOf('?');if(pos>=0){return url.substr(pos);}
return'';},makeQuery:function(query){var q='',k,k2;for(k in query){if(query[k]!==undefined&&query[k]!==false){if($.isArray(query[k])){for(k2 in query[k]){if(!q){q='?'+encodeURIComponent(k)+'[]='+pyncer.url.encodeComponent(query[k][k2]);}
else{q+='&'+encodeURIComponent(k)+'[]='+pyncer.url.encodeComponent(query[k][k2]);}}}
else if($.isPlainObject(query[k])){for(k2 in query[k]){if(!q){q='?'+encodeURIComponent(k)+'['+encodeURIComponent(k2)+']='+pyncer.url.encodeComponent(query[k][k2]);}
else{q+='&'+encodeURIComponent(k)+'['+encodeURIComponent(k2)+']='+pyncer.url.encodeComponent(query[k][k2]);}}}
else{if(!q){q='?'+encodeURIComponent(k)+'='+pyncer.url.encodeComponent(query[k]);}
else{q+='&'+encodeURIComponent(k)+'='+pyncer.url.encodeComponent(query[k]);}}}}
return q;},addQuery:function(url,key,value){var pos,k,query;query=pyncer.url.parseQuery(url);url=pyncer.url.removeQuery(url);if($.isPlainObject(key)){for(k in key){if(key[k]===undefined||key[k]===false){delete query[k];}
else{query[k]=key[k];}}}
else if(value===undefined&&value===false){delete query[key];}
else{query[key]=value;}
query=pyncer.url.makeQuery(query);url+=query;return url;},removeQuery:function(url,key){var q,pos;if(key!==undefined){q=pyncer.url.parseQuery(url);url=pyncer.url.removeQuery(url);if(q[key]!==undefined){delete q[key];}
q=pyncer.url.makeQuery(q);return url+q;}
pos=url.indexOf('?');if(pos>=0){return url.substr(0,pos);}
return url;},hasQuery:function(url,key,value){var q,pos;if(key!==undefined){q=pyncer.url.parseQuery(url);if(value!==undefined){return(q[key]===value.toString());}
if(q[key]!==undefined&&q[key]!==''){return true;}
return false;}
pos=url.indexOf('?');return(pos>=0);}});$.extend(pyncer.arr,{removeEmpty:function(a){var na=[];for(var k in a){if(a[k]!==''){na.push(a[k]);}}
return na;}});$.extend(pyncer.units,{pxToRem:function(px,percentSelector){var percent,rem;if(percentSelector===undefined){percentSelector='html';}
percent=parseFloat($(percentSelector).css('font-size'));rem=px/percent;return rem;}});pyncer.support=(function(){var support,k,html5inputs=['datetime','date','time','color','tel','url','email','search'],input;support={forms:{},fileapi:($("<input type='file'/>").get(0).files!==undefined),placeholder:(!!('placeholder'in document.createElement('input')))};$.each(html5inputs,function(i,v){input=document.createElement('input');input.setAttribute('type',v);support.forms[v]=(input.type===v);});return support;})();window.pyncer=pyncer;$.expr[":"]['scrollable']=function(e){e=$(e);return(e.css('overflow')=='scroll'||e.css('overflow')=='auto'||e.css('overflow-x')=='scroll'||e.css('overflow-x')=='auto'||e.css('overflow-y')=='scroll'||e.css('overflow-y')=='auto');};$.expr[":"]['scrollable-x']=function(e){e=$(e);return(e.css('overflow')=='scroll'||e.css('overflow')=='auto'||e.css('overflow-x')=='scroll'||e.css('overflow-x')=='auto');};$.expr[":"]['scrollable-y']=function(e){e=$(e);return(e.css('overflow')=='scroll'||e.css('overflow')=='auto'||e.css('overflow-y')=='scroll'||e.css('overflow-y')=='auto');};})(jQuery,window);;(function($,window,undefined){"use strict";var resize=$.resize=$.extend($.resize,{});resize.delay=250;resize.throttleWindow=true;var timeout;var elements=$([]);$.event.special.resize={setup:function(){if(this===window&&!resize.throttleWindow){return false;}
var element=$(this);element.data('pyncer-resize-event-w',element.width());element.data('pyncer-resize-event-h',element.height());elements=elements.add(element);if(elements.length==1){doLoop();}},teardown:function(){if(this===window&&!resize.throttleWindow){return false;}
var element=$(this);elements=elements.not(element);element.removeData('pyncer-resize-event-w');element.removeData('pyncer-resize-event-h');if(!elements.length){window.clearTimeout(timeout);}},add:function(handleObj){if(this===window&&!resize.throttleWindow){return false;}
var oldHandler=handleObj.handler;handleObj.handler=function(e,w,h){var element=$(this);element.data('pyncer-resize-event-w',(w!==undefined?w:element.width()));element.data('pyncer-resize-event-h',(h!==undefined?h:element.height()));oldHandler.apply(this,arguments);};}};function doLoop(){timeout=window.setTimeout(function(){elements.each(function(){var element,w,h,nw,nh;element=$(this);w=element.data('pyncer-resize-event-w');h=element.data('pyncer-resize-event-h');nw=element.width();nh=element.height();if(w!=nw||h!=nh){element.trigger('resize',[nw,nh]);}});doLoop();},resize.delay);}})(jQuery,window);