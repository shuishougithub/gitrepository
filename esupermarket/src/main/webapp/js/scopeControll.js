function suidWhere(){var e=$.grep(designData.sizeDetail,function(e){return e.suId==designData.suData.suId&&e.storeNum>0}).length;return e?!0:!1}function geSuBySpecs(){var e="http://www.biyao.com",s={productId:designData.productId};$.ajax({type:"POST",url:e+"/RequestAPI/geSuBySpecs?",data:s,async:!1,cache:!1,dataType:"jsonp",success:function(e){designData.sizeDetail=e.sizeDetail,designData.shelfStatus=e.shelfStatus}})}function chooseSize(e,s,t,a,i){function n(){for(var e,i=0;i<s.length;i++){r[s[i].name]=null,e=new c(s[i].name,s[i].des||s[i].goods_size,s[i].spec_id||s[i].id),d.push(e),u[s[i].des||s[i].goods_size]=[];for(var n=0;n<t.length;n++)for(var o=0;o<t[n].specs.length;o++)t[n].specs[o].goods_size===(s[i].des||s[i].goods_size)&&u[s[i].des||s[i].goods_size].push(t[n])}if(a)for(var h=0;h<t.length;h++)if(a==t[h].suId)for(var f=0;f<t[h].specs.length;f++)r[t[h].specs[f].name]=t[h].specs[f].goods_size;for(var p=0;p<d.length;p++)d[p].content==r[d[p].sizeName]&&d[p].selectHandle(),d[p].checkState();l(),$(".panel-storeNum").html(chooseObj.storeNum)}function l(){for(var s=!0,a=0;a<t.length;a++){s=!0;for(var i=0;i<t[a].specs.length;i++){for(var n in r)if(t[a].specs[i].name==n){t[a].specs[i].goods_size!=r[n]&&(s=!1);break}if(!s)break}if(s){e.suId=t[a].suId,e.price=t[a].price,e.duration=t[a].duration,e.storeNum=t[a].storeNum;break}a==t.length-1&&(e.suId=null,e.storeNum=o,e.duration=null,e.price=null)}}function c(e,s,t){this.sizeName=e,this.content=s,this.li=$("#"+t),this.selectClass="noModel-specs-active check_size",this.disableClass="noModel-specs-gray disabled",this.selectState=!1,this.usableState=!0,this.isUsable()}var o=0,r={},u={},d=[];for(var h in t)o+=t[h].storeNum;e.storeNum=o,c.prototype={constructor:c,clickHandle:function(){var e=this;e.selectState?(r[e.sizeName]=null,e.cancelHandel()):(r[e.sizeName]=e.content,e.selectHandle());for(var s=0;s<d.length;s++)d[s]!=e&&d[s].checkSelect(),d[s]!=e&&d[s].checkState();l(),"function"==typeof i&&i()},cancelHandel:function(){var e=this;e.selectState=!1,e.li.removeClass(e.selectClass)},selectHandle:function(){var e=this;e.selectState=!0,e.li.addClass(e.selectClass)},checkSelect:function(){for(var e in r)e==this.sizeName&&this.selectState&&r[e]!=this.content?this.cancelHandel():e!=this.sizeName||this.selectState||r[e]!=this.content||this.selectHandle()},isUsable:function(){var e=this;this.usableState=!0,this.li.removeClass(e.disableClass),this.li.on("click.li",function(){e.clickHandle()})},notUsable:function(){var e=this;this.usableState=!1,this.li.addClass(e.disableClass),this.li.off("click.li")},checkState:function(){for(var e=this,s=function(s){for(var t=0;t<s.specs.length;t++)if(s.specs[t].name!=e.sizeName&&r[s.specs[t].name]&&s.specs[t].goods_size!=r[s.specs[t].name])return!1;return s.storeNum?!0:!1},t=0;t<u[e.content].length;t++)if(s(u[e.content][t]))return void(!e.usableState&&e.isUsable());e.usableState&&e.notUsable()}},n()}var chooseObj={suId:null,storeNum:null,price:null,duration:null};