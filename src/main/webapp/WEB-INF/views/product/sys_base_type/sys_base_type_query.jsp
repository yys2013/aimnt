<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html>
<head>
<title>系统枚举类型表</title>
<%@include file="../../included/includedStyle.jsp" %>
</head>

<body>
    <div class="wrapper">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-search"></i>
                    <span class="caption-subject font-blue-hoki bold uppercase">查询条件</span>
                </div>
                <div class="tools">
                    <a href="" class="collapse"></a>
                    <a href="" class="reload"></a>
                </div>
            </div>
            <div class="portlet-body form">
                <form action="#" class="form-horizontal">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">枚举值名称</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="nameLoc">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">枚举值</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="enumName">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4"></label>
                                    <div class="col-md-4">
                                        <button type="button" id="btnQuery" class="btn green btn-mnt">查询</button>
                                    </div>
                                </div>
                            </div>
                        </div>
<!--                         <div class="row"> -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="form-group"> -->
<!--                                     <label class="control-label col-md-4">所属产品</label> -->
<!--                                     <div class="col-md-8"> -->
<!--                                         <input type="text" class="form-control" id="prodId"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row"> -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="form-group"> -->
<!--                                     <label class="control-label col-md-4">产品版本</label> -->
<!--                                     <div class="col-md-8"> -->
<!--                                         <input type="text" class="form-control" id="verCode"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="col-md-4"> -->
<!--                                 <div class="form-group"> -->
<!--                                     <label class="control-label col-md-4">发布版本</label> -->
<!--                                     <div class="col-md-8"> -->
<!--                                         <input type="text" class="form-control" id="relCode"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="row"> -->
<!--                             <div class="col-md-2"> -->
<!--                                 <div class="form-group"> -->
<!--                                     <label class="control-label col-md-4"></label> -->
<!--                                     <div class="col-md-4"> -->
<!--                                         <button type="button" id="btnQuery" class="btn green btn-mnt">查询</button> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
                    </div>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="wrapper-content">
<!--                     <div class="portlet-title"> -->
<!--                         <div class="caption font-dark"> -->
<!--                             <i class=" icon-layers font-green"></i> <span class="caption-subject bold uppercase"> 产品发布信息 </span> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="portlet-body">
                        <table class="table table-striped table-bordered table-hover table-checkable order-column table-header-fixed" id="tabSysBaseType" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th class="checkbox-datatables"><input type="checkbox" id="tab-th-chk" /></th>
                                    <th>表名</th>
                                    <th>列名</th>
                                    <th>码值</th>
                                    <th>码值名称</th>
                                    <th>排序号</th>
                                    <th>枚举名称</th>
                                    <th>枚举值</th>
                                    <th>系统编号</th>
                                    <th>是否在用</th>
                                    <th>备注</th>
                                    <th>安装点</th>
                                    <th>所属产品</th>
                                    <th>产品版本</th>
                                    <th>发布版本</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="display:none" id="btn-data-tools">
        <shiro:hasPermission name="prod:operate">
        <span class="dt-buttons">
            <a class="dt-button btn red btn-outline btn-mnt" id="btnDelete" >
                <span>删除</span>
            </a>
        </span>
        <span class="dt-buttons">
            <a class="dt-button btn yellow btn-outline btn-mnt" id="btnUpdate">
                <span>修改</span>
            </a>
         </span>
        <span class="dt-buttons">
            <a class="dt-button btn dark btn-outline btn-mnt btnAdd" id="btnAdd">
                <span>添加</span>
            </a>
         </span>
         </shiro:hasPermission>
    </div>

<%@include file="../../included/includedJs.jsp" %>
<!-- <script src="static/plugins/stickup/stickUp.js" type="text/javascript"></script> -->
<script>
    $(function() {

        var tableObj = $('#tabSysBaseType').DataTable(getConfig());
        $('#btnQuery').click(function(e) {
            var strNameLoc = $("#nameLoc").val();
            var strEnumName = $("#enumName").val();
//             var strProdId = $("#prodId").val();
//             var strVerCode = $("#verCode").val();
//             var strRelCode = $("#relCode").val();
            var sUrl = "prod/sys_base_type/query?";
            sUrl += 
                "nameLoc=" + strNameLoc +
                "&enumName=" + strEnumName;
//                 "&prodId=" + strProdId +
//                 "&verCode=" + strVerCode +
//                 "&relCode=" + strRelCode;
            tableObj.ajax.url(sUrl).load();
        });
        
        $('.reload').on('click', function() {
            $('#nameLoc').val('');
            $('#enumName').val('');
            $('#prodId').val('');
            $('#verCode').val('');
            $('#relCode').val('');
            tableObj.ajax.url('prod/sys_base_type/query?id=-1').load();
        });
        
        //修改按钮
        $('.div_right').on('click', '.dt-buttons>#btnUpdate',function() {
            var checkedBox = $("#tabSysBaseType tbody tr td .checked");
            var checkedLength = checkedBox.length;
            if(checkedLength == 0) {
                showMsg("请选择需要修改的数据！");
                return;
            }
            if(checkedLength > 1) {
                showMsg("只能选择一条数据进行修改操作！");
                return;
            }
            var strId = checkedBox.find('input:checkbox').val();
            showModal(2, "修改发布信息", [ '1000px', '500px' ], "prod/sys_base_type/update_page/" + strId, tableObj);
        });
        
        //新增
        $('.div_right').on('click', '.dt-buttons>#btnAdd', function(){
            showModal(2, " ", ['1000px', '500px'], "prod/sys_base_type/add_page", tableObj);
        });
        
        //删除按钮
        $('.div_right').on('click', '.dt-buttons>#btnDelete',function() {
            var checkedBox = $("#tabSysBaseType tbody tr td .checked");
            comfirmDeleteData(tableObj, checkedBox, 'prod/sys_base_type/delete/');
            
//             var checkedBox = $("#tabSysBaseType tbody tr td .checked");
//             var checkedLength = checkedBox.length;
//             if(checkedLength == 0) {
//                 showMsg("请选择需要删除的数据！");
//                 return;
//             }
//             var idAry = [];
//             checkedBox.find('input:checkbox').each(function(){
//                 idAry.push($(this).val());
//             });
//             $.ajax({
//                 url: 'prod/sys_base_type/delete/' + idAry,
//                 dataType: 'json',
//                 async:false,
//                 success:function (data) {
//                     showMsg("删除成功！");
//                     tableObj.ajax.reload(null,false);
//                 },
//                 error:function() {
//                     showMsg("删除操作发生错误！");
//                 }
//             });
        });
        
    });

//     jQuery(function($) {
//         $(document).ready( function() {
//           $('.bottom').stickUp({
//               marginTop: 'auto'
//           });
//         });
//       });
    
    
    function getConfig() {
        return config = {
            "processing" : true,
            "pageLength" : 10,
            //"destroy": true,
            "lengthMenu" : [ [ 5, 10, 20, -1 ], [ 5, 10, 20, "All" ] ],
            "order" : [ [ 1, "asc" ] ],
            "serverSide" : false,
            "ajax" : {
                "url" : "prod/sys_base_type/query?id=-1"
            //    "async": false
            },
            "columns" : [ {
                "data" : "id"
            }, { 
                "data" : "tableName"
            }, {
                "data" : "colName"
            }, {
                "data" : "codeValue"
            }, {
                "data" : "cname"
            }, {
                "data" : "sortId"
            }, {
                "data" : "nameLoc"
            }, {
                "data" : "enumName"
            }, {
                "data" : "systemId"
            }, {
                "data" : "isUsed"
            }, {
                "data" : "remark"
            }, {
                "data" : "baseId"
            }, {
                "data" : "prodId"
            }, {
                "data" : "verCode"
            }, {
                "data" : "relCode"
            }],
            "columnDefs": [{
                "orderable" : false,
                "searchable" : false,
                "targets": [0],
                "data": "id",
                "render": function (data, type, full) {
                    return '<input type="checkbox" name="data-checkbox" value="' + data + '" />';
                 }
            },
            ],
//             fixedHeader: {
//                 header: true,
//                 headerOffset: 3
//             },
            "sScrollX": "2000px",
            "dom" : '<"top"l<"div_right">>rt<"bottom"ip><"clear">',
            "initComplete" : initTab,
            "createdRow": function ( row, data, index ) {
                $('td', row).eq(0).addClass('checkbox-datatables');
             },
            "language" : {
                "processing" : "努力加载数据中...",
                "lengthMenu" : "_MENU_ 条记录每页",
                "zeroRecords" : "没有查询到数据",
                "info" : "第 _PAGE_ 页 ( 总共 _PAGES_ 页 _MAX_ 条记录 )",
                "infoEmpty" : "无记录",
                "infoFiltered" : "(从 _MAX_ 条记录过滤)",
                "paginate" : {
                    "previous" : "上一页",
                    "next" : "下一页"
                }
            }
        };
    }
</script>
</body>
</html>