//
// function s_new_address() {
//     if (LT.temp.loginFn.islogin_dialog(!0)) {
//         is_update = 0;
//         var e = "修改收货地址";
//         return "0" == is_update && (e = "请输入新地址", $("#d_address").find("li").length > 5) ? void LT.alertSmall("对不起，最多只能维护5个收货地址！") : void $(this).dialogFn({
//             type: "alert",
//             title: e,
//             height: "250px",
//             width: "750px",
//             btnText: ["寄到该地址"],
//             content: $("#pop_address").html(),
//             callback: function(e) {
//                 return 1 == e ? ($("#pop_address").hide(), save_address(this)) : void 0
//             },
//             showAfter: function() {
//                 var e = this.id;
//                 e.find(".pop_ft").css({
//                     "float": "left",
//                     "margin-left": "163px",
//                     "margin-top": "8px"
//                 }),
//                     e.find("#i_default_address").show(),
//                     e.find("#i_default_address").attr("checked", !0),
//                     e.find("#default_address_html").html("设为默认地址"),
//                     e.find(".perinp").keydown(function() {
//                         $(this).addClass("onshowtext")
//                     }),
//                     $.ajax({
//                         type: "get",
//                         cache: !1,
//                         async: !1,
//                         url: window.basePath + "/order/getProvince",
//                         success: function(t) {
//                             e.find("#provice_seletor").selectFn({
//                                 textField: "addr_name",
//                                 valueField: "addr_id",
//                                 maxRow: 10,
//                                 data: t,
//                                 change: change_province
//                             })
//                         }
//                     }),
//                     e.find("#city_seletor").selectFn({
//                         textField: "addr_name",
//                         valueField: "addr_id",
//                         change: change_city
//                     }),
//                     e.find("#area_seletor").selectFn({
//                         textField: "addr_name",
//                         valueField: "addr_id",
//                         change: change_area
//                     })
//             }
//         })
//     }
// }

var myvalidate = function(e) {
    e.validate({
        submitHandler: function() {
            return ! 1
        },
        rules: {
            i_n_receiver: {
                required: !0
            },
            i_n_ADDR_ID: {
                required: !0
            },
            i_n_address: {
                required: !0
            },
            i_n_phone: {
                required: !0,
                mobile: !0
            }
        },
        messages: {
            i_n_receiver: {
                required: "请输入收货人姓名！"
            },
            i_n_ADDR_ID: {
                required: "请选择收货区域！"
            },
            i_n_address: {
                required: "请输入详细地址,最多30个字符!"
            },
            i_n_phone: {
                mobile: "请输入有效的手机号！",
                required: "请输入手机号！"
            }
        }
    })
};