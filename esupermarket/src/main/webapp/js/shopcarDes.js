
$(".minus").live("click",
function() {
    var a = $(this).next();
    $(this).attr("disabled", "disabled");
    var e = parseInt(a.attr("num"));
    if (1 >= e) return LT.alertSmall("不能再减了，再减就没了"),
    a.val(1),
    void $(this).removeAttr("disabled");
    changeNumCheck(a),
    a.attr("num", e - 1),
    a.val(e - 1);

    var t = updateByShopCarId(a, e - 1);
    if (205017 == t.success) calcTotal();
    else if (!t.success) {
        var s = a.parent().parent().find("td[class='ff6600']").html(),
        c = s.toString().substring(1),
        n = c * a.val();
        var num= parseInt($('#totalNum').text())-1;
        $('#totalNum').text(num);

        $('#totalPrice').text(parseInt($('#totalPrice').text())-parseInt(c));
        var yunfei=$('#packagePrice').text();
        $('#zongji').text((parseInt($('#totalPrice').text())+parseInt(yunfei)));
        a.parent().parent().find("td[width='10%']").find("strong[class='ff6600']").html("￥" + n),
        calcTotal()
    } else {
        a.attr("num", e),
        a.val(e);
        var s = a.parent().parent().find("td[class='ff6600']").html(),
        c = s.toString().substring(1),
        n = c * a.val();
        a.parent().parent().find("td[width='10%']").find("strong[class='ff6600']").html("￥" + n),
        LT.alertSmall("更改数量失败,请重试")
    }
    $(this).removeAttr("disabled")
}),
$(".plus").live("click",
function() {
    var a = $(this).prev();
    $(this).attr("disabled", "disabled");
    var e = parseInt(a.attr("num"));
    void $(this).removeAttr("disabled");
    changeNumCheck(a);
    var t = updateByShopCarId(a, e + 1);
    if (205017 == t.success) LT.alertSmall("当前商品原材料不足,增加数量失败");
    else if (!t.success) {
        a.attr("num", e + 1),
        a.val(e + 1);
        var s = a.parent().parent().find("td[class='ff6600']").html(),
        c = s.toString().substring(1),
        n = c * a.val();
		var num= parseInt($('#totalNum').text())+1;
        $('#totalNum').text(num);

        $('#totalPrice').text(parseInt($('#totalPrice').text())+parseInt(c));
        var yunfei=$('#packagePrice').text();
        $('#zongji').text((parseInt($('#totalPrice').text())+parseInt(yunfei)));
        a.parent().parent().find("td[width='10%']").find("strong[class='ff6600']").html("￥" + n),
        calcTotal()
    } else a.attr("num", e),
    a.val(e),
    LT.alertSmall("更改数量失败,请重试");
    $(this).removeAttr("disabled")
});
var cacheSubmit = !0;

$(".a_delete").live("click",
function() {
    var a = this;
	console.log($(this).parent().parent().find("td[class='sizeZero']").find('input'));
	var num=$(this).parent().parent().find("td[class='sizeZero']").find('input').attr('num');
	   //$(num).attr('num');
    // alert(num);
    LT.confirmSmall("您是否要从购物车中移除所选的商品？",
    function(e) {
        if (1 == e) {

			var cc=$(a).parent().parent().children("td:last-child").prev().find("strong[class='ff6600']").html();

			var c = cc.toString().substring(1);
			var zz=$('#zongji').html();

			var z = zz.toString();
			var j= z-c;
			$('#zongji').html(j);
			 // $('#black').hide();

			var bao=$('#packagePrice').text();
			if(j-bao==0){
                $('#packagePrice').text(0);
                $('#zongji').html(0);

            }
			$('#totalPrice').html((j-bao));
			$('#totalNum').text(parseInt($('#totalNum').text())-num);
            $(a).parent().parent().hide();

        }
    })
}),
$("label[name='chkAll']").click(function() {
    var a = $(this).hasClass("checked");
    a ? $(".checkbox").removeClass("checked") : $(".checkbox").addClass("checked"),
    calcTotal()
}),
$("label[name='chk_Supplier']").live("click",
function() {
    var a = $(this).hasClass("checked"),
    e = $(this).attr("data-value");
    a ? ($(this).removeClass("checked"), $("label[name='chk_" + e + "']").removeClass("checked")) : ($(this).addClass("checked"), $("label[name='chk_" + e + "']").addClass("checked")),
    ischeckedbox(),
    calcTotal()
}),
$(".chk_Calc").live("click",
function() {
    {
        var a = $(this).hasClass("checked");
        $(this).attr("supplierId")
    }
    a ? $(this).removeClass("checked") : $(this).addClass("checked"),
    ischeckedbox(),
    calcTotal()
}),

$("#a_BatchDel").click(function() {
    var a = getCheckBoxLength();
    return 0 == a ? void LT.alertSmall("请选择要删除的商品") : void LT.confirmSmall("您是否要从购物车中移除所选的商品？",
    function(a) {
        if (1 == a) {
            if ($("#a_BatchDel").hasClass("masked")) return ! 1;
            $("#a_BatchDel").addClass("relative"),
            $("#a_BatchDel").mask();
            var e = "";
            $(".chk_Calc").each(function() {
                if ($(this).hasClass("checked")) {
                    var a = $(this);
                    e += a.attr("data-value") + ",",
                    $(this).parent().parent().remove()
                }
            });
            var t = deleteByIds(e, $("#a_BatchDel"));
            t.success && call()
        }
    })
});
var updateByShopCarId = function(a, e) {
    var t = a.attr("shopcarid"),
    c = a.attr("sizename");
    startIndex = c.indexOf("：") + 1,
    s = c.substring(startIndex);
    var n = {
        success: !1
    },
    l = {
        shopCarId: t,
        num: e,
        suId: a.attr("designid"),
        sizeno: s
    };
    return $.ajax({
        type: "post",
        url: window.basePath + "/shopcars/ModifyGoodsNum",
        data: l,
        async: !1,
        dataType: "json",
        success: function(a) {
            n.success = a.success
        },
        error: function(a) {}
    }),
    n
},

deleteByIds = function(a, e) {
    var t = {
        success: !1
    },
    s = {
        shopCarIds: a
    };
    return $.ajax({
        type: "post",
        url: window.basePath + "/shopcar/DeleteGoods",
        data: s,
        async: !1,
        dataType: "json",
        success: function(a) {
            e && e.unmask(),
            t.success = a.success
        }
    }),
    t
},
call = function() {
    window.location.reload(!0)
},



changeNumCheck = function(a) {
    var e = a.parent().parent();
    e.find(".chk_Calc").addClass("checked")
},
updatePackage = function(a, e) {
    var t = {
        shopCarId: a,
        packageId: e
    },
    s = {
        success: !1
    };
    return $.ajax({
        type: "POST",
        url: window.basePath + "/shopcar/ModifyPackageInfo",
        data: t,
        async: !1,
        dataType: "json",
        success: function(a) {
            s.success = a.success
        }
    }),
    s
};
