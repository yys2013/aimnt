<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../../included/includedStyle.jsp" %>
</head>

<body class="body-bg">
    <div class="wrapper-box">
        <div class="row">
            <div class="col-md-12">
                <div class="wrapper-body">
                    <div class="portlet-title">
                        <div class="caption font-dark">
                            <i class="icon-layers font-green"></i> <span class="caption-subject bold uppercase"> 新增部门需求故障跟踪 </span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <form action="#" class="form-horizontal" id="form-update">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            安装点 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                             <select name="baseId" class="selectpicker form-control" id="baseId">
<!--                                                 <option value="" selected>--请选择--</option> -->
                                                <c:forEach items="${baseIdEnums}" var="baseIdEnum">
                                                    <option value="${baseIdEnum.key}">${baseIdEnum.value}</option>
                                                </c:forEach>
                                            </select>
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入安装点</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            安装点名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.baseName}" name="baseName" id="baseName">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入安装点名称</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            产品编号 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <select name="prodId" class="selectpicker form-control" id="prodId">
                                                <c:forEach items="${prodEnums}" var="prodEnum">
                                                    <c:if test="${prodEnum.key == mntReqTrack.prodId}">
                                                        <option value="${prodEnum.key}" selected>${prodEnum.value}</option>
                                                    </c:if>
                                                    <c:if test="${prodEnum.key != mntReqTrack.prodId}">
                                                        <option value="${prodEnum.key}">${prodEnum.value}</option>
                                                    </c:if>
                                                </c:forEach>
                                             </select>
                                           <%--  <input type="text" class="form-control" placeholder="" value="${mntReqTrack.prodId}" name="prodId" id="prodId"> --%>
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入产品编号</span>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            产品名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.prodName}" name="prodName" id="prodName">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入产品名称</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            需求编号 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.bizNo}" name="bizNo" id="bizNo">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入需求编号</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            需求名称 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.bizName}" name="bizName" id="bizName">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入需求名称</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            需求类型 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <%-- <select name="bizType" class="selectpicker form-control" id="bizType">
<!--                                                 <option value="" selected>--请选择--</option> -->
                                                <c:forEach items="${bizEnums}" var="bizEnum">
                                                    <option value="${bizEnum.key}">${bizEnum.value}</option>
                                                </c:forEach>
                                            </select> --%>
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.bizType}" name="bizType" id="bizType">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入需求类型</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            需求来源 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.bizSrc}" name="bizSrc" id="bizSrc">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入需求来源</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            需求当前状态 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.bizSts}" name="bizSts" id="bizSts">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入需求当前状态</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            节点责任人 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.nodePerson}" name="nodePerson" id="nodePerson">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入节点责任人</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            优先级 
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.priority}" name="priority" id="priority">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入优先级</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            紧急程度
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" placeholder="" value="${mntReqTrack.urgentLevel}" name="urgentLevel" id="urgentLevel">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入紧急程度</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                 <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            录入日期 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="date-picker form-control" readonly data-date-format="yyyy-mm-dd" 
                                                value="<fmt:formatDate value="${mntReqTrack.submitDate}" pattern="yyyy-MM-dd"/>" name="submitDate" id="submitDate">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入录入日期</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            期望发布日期 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="date-picker form-control" readonly data-date-format="yyyy-mm-dd" 
                                                value="<fmt:formatDate value="${mntReqTrack.askEndDate}" pattern="yyyy-MM-dd"/>" name="askEndDate" id="askEndDate">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入期望发布日期</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            计划发布日期 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="date-picker form-control" readonly data-date-format="yyyy-mm-dd" 
                                                value="<fmt:formatDate value="${mntReqTrack.planReleaseDate}" pattern="yyyy-MM-dd"/>" name="planReleaseDate" id="planReleaseDate">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入计划发布日期</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group form-md-line-input">
                                        <label class="col-md-4 control-label" for="form_control_1">
                                            计划上线日期 <span class="required">*</span>
                                        </label>
                                        <div class="col-md-8">
                                            <input type="text" class="date-picker form-control" readonly data-date-format="yyyy-mm-dd" 
                                                value="<fmt:formatDate value="${mntReqTrack.planOnlineDate}" pattern="yyyy-MM-dd"/>" name="planOnlineDate" id="planOnlineDate">
                                            <div class="form-control-focus"></div>
                                            <span class="help-block">请输入计划上线日期</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-9 model-hidden">
                                        <input type="hidden" value="${mntReqTrack.trackId}" name="trackId" id="trackId">
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn green">提交</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file="../../included/includedJs.jsp" %>

<script type="text/javascript">

jQuery(document).ready(function() {
	
	// 在弹出修改框后 加载修改框中原来的值    也可以在html中做判断 
	 var _baseId = '${mntReqTrack.baseId}';
	    $('#baseId').val(_baseId);
	    $('#baseId').selectpicker('refresh');
	    
	 var _bizType = '${mntReqTrack.bizType}';
	    $('#bizType').val(_bizType);
	    $('#bizType').selectpicker('refresh');
	    
	    $('#baseId').change(function(){
            $('#baseName').val($("#baseId").find("option:selected").text());
        });
      $('#prodId').change(function(){
          $('#prodName').val($("#prodId").find("option:selected").text());
      });
    //表单校验提交
    //[1]自定义校验规则
    var rules = {
           
            baseId:"required",
            baseName:"required",
            prodId:"required",
            prodName:"required",
            bizNo:"required",
            bizName:"required",
            bizType:"required",
            bizSrc:"required",
            bizSts:"required",
            nodePerson:"required",
           // priority:"required",
            //urgentLevel:"required",
            submitDate:"required",
            dealDays:"required",
            askEndDate:"required",
            planReleaseDate:"required",
            planOnlineDate:"required",
            
    };
    //[2]表单校验初始化
    initFormValidate('form-update', rules, 'inst/track/update', 'update');
    
});

</script>
</body>
</html>