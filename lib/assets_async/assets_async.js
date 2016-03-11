if(window.loaded_files == undefined){
  window.loaded_files = {};
}
window.loadCSSAsync = function(path, name){
  if(loaded_files[name] == undefined){
    var cb = function() {
      var l = document.createElement('link'); l.rel = 'stylesheet';
      l.href = path;
      var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
    };
    var raf = requestAnimationFrame || mozRequestAnimationFrame ||
        webkitRequestAnimationFrame || msRequestAnimationFrame;
    if (raf) raf(cb);
    else window.addEventListener('load', cb);
    loaded_files[name] = true;
  }
}
window.rjs=function(a){"use strict";var b=function(){return{eventStack:[],pendingListeners:[],resolvePendingListeners:function(){var a=this;this.pendingListeners.forEach(function(b,c){b&&a.isEveryEventResolved(b.events)&&(b.handler(),delete a.pendingListeners[c])})},isEveryEventResolved:function(a){var b=this;return a.every(function(a){return-1!==b.eventStack.indexOf(a)})},trigger:function(a){c.debug&&console.log(">> `"+a+"` triggered"),this.eventStack.push(a),this.resolvePendingListeners()},on:function(b,d){if(c.debug&&console.log(">> `"+a.JSON.stringify(b)+"` subscribed"),!Array.isArray(b))throw new TypeError("The first parameter must an array");if("function"!=typeof d)throw new TypeError("The second parameter must a function");return this.isEveryEventResolved(b)?d():void this.pendingListeners.push({events:b,handler:d})}}},c={debug:!1},d=function(){var d=new b;return"complete"===a.document.readyState||"loaded"===a.document.readyState?d.trigger("DOMContentLoaded"):a.document.addEventListener("DOMContentLoaded",function(){d.trigger("DOMContentLoaded")},!1),{define:function(b,c,e,f){var g=a.document.createElement("script");if("string"!=typeof c)throw new TypeError("You have specify dependency name");f&&(e=e.bind(f)),g.type="text/javascript",g.src=b,g.async=!0,a.document.body.appendChild(g),g.onreadystatechange=g.onload=function(){d.trigger(c),e&&e()}},require:function(a,b,c){c&&(b=b.bind(c)),d.on(a,b)},init:function(a){c=a}}};return new d}(this);
window.loadJSAsync = function(path, name){
  if(loaded_files[name] == undefined){
    rjs.define(path, name);
    loaded_files[name] = true;
  }
}
