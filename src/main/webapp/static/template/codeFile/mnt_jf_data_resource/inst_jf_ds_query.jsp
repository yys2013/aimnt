<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html>
<head>
<title>计费数据源</title>
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
                                    <label class="control-label col-md-4">编号</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="id">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">安装点</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="baseId">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">业务名称</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="busiName">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">解码模板</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="decodeTemplate">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">分析模板</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="analysisTemplate">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">xdr_type</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="xdrType">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">服务编号</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="serviceId">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">dr_type</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="drType">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">业务是否下线</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="isOffline">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">是否送计费</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="isToJf">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">是否需要处理</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="isNeedDeal">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">附件名称</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="fileName">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">备注</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="remark">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">删除标识，1删除，0未删除</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="deleteFlag">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">创建人</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="creator">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">创建时间</label>
                                    <div class="col-md-8">
                                        <div class="input-group date-picker input-daterange" data-date="2012-12-12" data-date-format="yyyy-mm-dd">
                                            <input type="text" class="form-control" name="from" id="beginDate" readonly AUTOCOMPLETE="off">
                                            <span class="input-group-addon"> 到 </span>
                                            <input type="text" class="form-control" name="to" id="endDate" readonly AUTOCOMPLETE="off">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">修改人</label>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" id="modifier">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-4">修改时间</label>
                                    <div class="col-md-8">
                                        <div class="input-group date-picker input-daterange" data-date="2012-12-12" data-date-format="yyyy-mm-dd">
                                            <input type="text" class="form-control" name="from" id="beginDate" readonly AUTOCOMPLETE="off">
                                            <span class="input-group-addon"> 到 </span>
                                            <input type="text" class="form-control" name="to" id="endDate" readonly AUTOCOMPLETE="off">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label class="control-label col-md-4"></label>
                                    <div class="col-md-4">
                                        <button type="button" id="btnQuery" class="btn green btn-mnt">查询</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <table class="table table-striped table-bordered table-hover table-checkable order-column" id="tabMntJfDataResource" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th class="checkbox-datatables"><input type="checkbox" id="tab-th-chk" /></th>
                                    <th>安装点</th>
                                    <th>业务名称</th>
                                    <th>解码模板</th>
                                    <th>分析模板</th>
                                    <th>xdr_type</th>
                                    <th>服务编号</th>
                                    <th>dr_type</th>
                                    <th>业务是否下线</th>
                                    <th>是否送计费</th>
                                    <th>是否需要处理</th>
                                    <th>附件名称</th>
                                    <th>备注</th>
                                    <th>删除标识，1删除，0未删除</th>
                                    <th>创建人</th>
                                    <th>创建时间</th>
                                    <th>修改人</th>
                                    <th>修改时间</th>
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
        <shiro:hasPermission name="prod:delete">
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

<script>
    $(function() {

        var tableObj = $('#tabMntJfDataResource').DataTable(getConfig());
        $('#btnQuery').click(function(e) {
            var strId = $("#id").val();
            var strBaseId = $("#baseId").val();
            var strBusiName = $("#busiName").val();
            var strDecodeTemplate = $("#decodeTemplate").val();
            var strAnalysisTemplate = $("#analysisTemplate").val();
            var strXdrType = $("#xdrType").val();
            var strServiceId = $("#serviceId").val();
            var strDrType = $("#drType").val();
            var strIsOffline = $("#isOffline").val();
            var strIsToJf = $("#isToJf").val();
            var strIsNeedDeal = $("#isNeedDeal").val();
            var strFileName = $("#fileName").val();
            var strRemark = $("#remark").val();
            var strDeleteFlag = $("#deleteFlag").val();
            var strCreator = $("#creator").val();
            var strCreateDate = $("#createDate").val();
            var strModifier = $("#modifier").val();
            var strModifyDate = $("#modifyDate").val();
            var sUrl = "inst/jf_ds/query?";
            sUrl += 
                "&id=" + strId +
                "&baseId=" + strBaseId +
                "&busiName=" + strBusiName +
                "&decodeTemplate=" + strDecodeTemplate +
                "&analysisTemplate=" + strAnalysisTemplate +
                "&xdrType=" + strXdrType +
                "&serviceId=" + strServiceId +
                "&drType=" + strDrType +
                "&isOffline=" + strIsOffline +
                "&isToJf=" + strIsToJf +
                "&isNeedDeal=" + strIsNeedDeal +
                "&fileName=" + strFileName +
                "&remark=" + strRemark +
                "&deleteFlag=" + strDeleteFlag +
                "&creator=" + strCreator +
                "&createDate=" + strCreateDate +
                "&modifier=" + strModifier +
                "&modifyDate=" + strModifyDate;
            tableObj.ajax.url(sUrl).load();
        });
        
        $('.reload').on('click', function() {
            $('#id').val('');
            $('#baseId').val('');
            $('#busiName').val('');
            $('#decodeTemplate').val('');
            $('#analysisTemplate').val('');
            $('#xdrType').val('');
            $('#serviceId').val('');
            $('#drType').val('');
            $('#isOffline').val('');
            $('#isToJf').val('');
            $('#isNeedDeal').val('');
            $('#fileName').val('');
            $('#remark').val('');
            $('#deleteFlag').val('');
            $('#creator').val('');
            $('#createDate').val('');
            $('#modifier').val('');
            $('#modifyDate').val('');
            tableObj.ajax.url('inst/jf_ds/query?id=-1').load();
        });
        
        //修改按钮
        $('.div_right').on('click', '.dt-buttons>#btnUpdate',function() {
            var checkedBox = $("#tabMntJfDataResource tbody tr td .checked");
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
            showModal(2, " ", [ '1000px', '500px' ], "inst/jf_ds/update_page/" + strId, tableObj);
        });
        
        //新增
        $('.div_right').on('click', '.dt-buttons>#btnAdd', function(){
            showModal(2, " ", ['1000px', '500px'], "inst/jf_ds/add_page", tableObj);
        });
        
        //删除按钮
        $('.div_right').on('click', '.dt-buttons>#btnDelete',function() {
            var checkedBox = $("#tabMntJfDataResource tbody tr td .checked");
            comfirmDeleteData(tableObj, checkedBox, 'inst/jf_ds/delete/');
        });
        
    });

    function getConfig() {
        return config = {
            "processing" : true,
            "pageLength" : 5,
            //"destroy": true,
            "lengthMenu" : [ [ 5, 10, 20, -1 ], [ 5, 10, 20, "All" ] ],
            "order" : [ [ 1, "asc" ] ],
            "serverSide" : false,
            "ajax" : {
                "url" : "inst/jf_ds/query?id=-1"
            //    "async": false
            },
            "columns" : [ {
                "data" : "id"
            }, {
                "data" : "baseId"
            }, {
                "data" : "busiName"
            }, {
                "data" : "decodeTemplate"
            }, {
                "data" : "analysisTemplate"
            }, {
                "data" : "xdrType"
            }, {
                "data" : "serviceId"
            }, {
                "data" : "drType"
            }, {
                "data" : "isOffline"
            }, {
                "data" : "isToJf"
            }, {
                "data" : "isNeedDeal"
            }, {
                "data" : "fileName"
            }, {
                "data" : "remark"
            }, {
                "data" : "deleteFlag"
            }, {
                "data" : "creator"
            }, {
                "data" : "createDate"
            }, {
                "data" : "modifier"
            }, {
                "data" : "modifyDate"
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
            {
                "targets": [15],
                "data": "createDate",
                "render": function (data, type, full) {
                    if(data == null || data == "") {
                        return "";
                    }
                    return new Date(data).format("yyyy-MM-dd hh:mm:ss");
                 }
            },
            {
                "targets": [17],
                "data": "modifyDate",
                "render": function (data, type, full) {
                    if(data == null || data == "") {
                        return "";
                    }
                    return new Date(data).format("yyyy-MM-dd hh:mm:ss");
                 }
            }
            ],
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
                "info" : "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
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