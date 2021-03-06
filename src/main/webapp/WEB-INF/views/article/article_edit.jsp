<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<html>
<head>
<title>运维文章</title>
<%@include file="../included/includedStyle.jsp" %>
<link href="static/plugins/summernote/summernote.css" rel="stylesheet" type="text/css" />
<style>
.error_msg {
    color: red;
}
</style>
</head>

<body>
    <div class="wrapper">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
<!--                     <i class="fa fa-search"></i> -->
                    <span class="caption-subject font-blue-hoki bold uppercase">编辑文章</span>
                </div>
            </div>
            <div class="portlet-body form">
                <form class="form-horizontal" id="articleForm">
                <div class="form-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">文章标题</label>
                                <div class="col-md-9">
                                    <input type="text" value="${mntArticle.title}" class="form-control" id="title" name="title" placeholder="请输入文章标题">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">文章分类</label>
                                <div class="col-md-9">
                                    <div class="col-md-3" style="padding-left:1px">
                                        <select name="typeId" class="form-control" id="typeId">
                                            <c:forEach items="${articleTypeEnums}" var="articleTypeEnum">
                                                <c:if test="${articleTypeEnum.key == mntArticle.typeId}">
                                                    <option value="${articleTypeEnum.key}" selected>${articleTypeEnum.value}</option>
                                                </c:if>
                                                <c:if test="${articleTypeEnum.key != mntArticle.typeId}">
                                                    <option value="${articleTypeEnum.key}">${articleTypeEnum.value}</option>
                                                </c:if>
                                            </c:forEach>
                                            <option value="-99">添加新分类</option>
                                        </select>
                                    </div>
                                    <div class="col-md-9" style="padding-left:1px">
                                        <input type="text" class="form-control" id="typeCn" name="typeCn" style="width:30%;display:none" placeholder="添加新的文章分类">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">文章正文</label>
                                <div class="col-md-9">
                                    <div id="article-content">
                                    ${mntArticle.content}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">关键字</label>
                                <div class="col-md-9">
                                    <input type="text" value="${mntArticle.keyword}" class="form-control" id="keyword" name="keyword" placeholder="请输入关键字，以逗号分隔">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">摘要</label>
                                <div class="col-md-9">
                                    <textarea rows="3" class="form-control" placeholder="请输入文章摘要信息，如果不输入，默认截取文章前100字" name="summaryContent" id="summaryContent">${mntArticle.summary}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">作者</label>
                                <div class="col-md-9">
                                    <input type="text" value="${mntArticle.author}" class="form-control" name="author" id="author" placeholder="请输入作者，不输入默认为当前用户">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="control-label col-md-2">立即发布</label>
                                <div class="col-md-9">
                                    <c:if test="${mntArticle.isShow == '1'}">
                                        <input type="checkbox" name="isShowCheckbox" id="isShowCheckbox" checked/>
                                    </c:if>
                                    <c:if test="${mntArticle.isShow != '1'}">
                                        <input type="checkbox" name="isShowCheckbox" id="isShowCheckbox"/>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <div class="col-md-9">
                                    <div class="md-checkbox"> 
                                        <input type="hidden"  value="${mntArticle.id}" name="id" id="id">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-actions">
                            <div class="row">
                                <div class="col-md-10">
                                    <button type="button" id="publish_art" class="btn green">提 交</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
            </div>
        </div>    
    </div>


<%@include file="../included/includedJs.jsp" %>
<script src="static/plugins/summernote/summernote.min.js" type="text/javascript"></script>
<script src="static/plugins/summernote/lang/summernote-zh-CN.min.js" type="text/javascript"></script>
<script>
    $(function() {
        
    	$('#article-content').summernote({
            toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['fontsize', ['style', 'fontname', 'fontsize', 'height', 'color']],
                ['para', ['ul', 'ol', 'paragraph', 'undo', 'redo']],
                ['picture', ['picture', 'link', 'video', 'table', 'hr']],
                ['fullscreen', ['fullscreen', 'codeview']]
            ],
            fontNames: ['Arial', 'Courier New', 'Microsoft YaHei', 'SimSun', '微软雅黑', '宋体', '楷体'],
            fontNamesIgnoreCheck: ['Microsoft YaHei', 'SimSun', '微软雅黑', '宋体', '楷体'],
    		height: 300,
    		lang: 'zh-CN',
    		callbacks: {
    		    onImageUpload: function(files) {
    		    	var formData = new FormData();
                    formData.append("file", files[0]);
                    $.ajax({
                        url: 'article/upload_pic',
                        type: 'POST',
                        dataType: "json",
                        data: formData,
                        processData: false,  
                        contentType: false,
                        async:false,
                        success:function (data) {
                            var imgPath = data.returnPath;
                            console.log(imgPath);
                            $('#article-content').summernote('insertImage', imgPath, "ai-article.png");
                            //showMsg("修改成功！");
                        },
                        error:function() {
                            showMsg("修改操作发生错误！");
                        }
                    });
    		    }
    		}
    	});
    	
    	$('#publish_art').click(function(){
    		var _title = $('#title').val();
    		if(_title == '') {
    			showMsg("请输入文章标题！");
    			return false;
    		}
            var _typeId = $('#typeId').val();
            var _typeCn = $('#typeCn').val();
            if(_typeId == -99 && _typeCn == '') {
                showMsg("请选择文章分类或输入新的分类！");
                return false;
            }
            //var _keyword = $('#keyword').val();
            var _summary = $('#summaryContent').val();
            //var _isShow = $('#isShow').val();
        	if ($('#article-content').summernote('isEmpty')) {
        		showMsg("请输入要发布的文章！");
        		return false;
        	}
        	var _content = $('#article-content').summernote('code');
            var formData = new FormData($("#articleForm")[0]);
            formData.append('content', _content);
            
            if(_summary == "") {
                var _contentText =  clearHtmlTag(_content);
                if(_contentText.length > 200) {
                    _summary = _contentText.substring(0, 200) +  '...';
                }
            }
            formData.append('summary', _summary);
            
            if($('#isShowCheckbox').is(':checked')) {
                formData.append('isShow', '1');
            }else {
                formData.append('isShow', '0');
            }
            
            $.ajax({
                url: 'article/update_article',
                type: 'POST',
                dataType: "json",
                data: formData,
                processData: false, //不处理发送的数据
                contentType: false, //不设置Content-Type请求头
                success:function (data) {
                    showMsg("更新成功！");
                    return;
                },
                error:function(xhr, ajaxOptions, thrownError) {
                	console.log(thrownError);
                    showMsg("更新出现错误，请稍后重试！");
                    return false;
                }
            });
    	});
    	
        $('#typeId').change(function(){
            if($(this).val() == -99){
                $('#typeCn').css('display','block'); 
            }else {
                $('#typeCn').css('display','none'); 
            }
        });
    });


</script>
</body>
</html>