<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>通告管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/notice/notice/">通告列表</a></li>
		<shiro:hasPermission name="notice:notice:edit"><li><a href="${ctx}/notice/notice/form">通告添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="notice" action="${ctx}/notice/notice/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>公告标题：</label>
				<form:input path="title" htmlEscape="false" maxlength="1000" class="input-medium"/>
			</li>
			<li><label>公告内容：</label>
				<form:input path="content" htmlEscape="false" maxlength="2000" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>公告标题</th>
				<th>创建公告时间</th>
				<th>修改公告时间</th>
				<shiro:hasPermission name="notice:notice:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="notice">
			<tr>
				<td><a href="${ctx}/notice/notice/form?id=${notice.id}">
					${notice.title}
				</a></td>
				<td>
					<fmt:formatDate value="${notice.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${notice.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="notice:notice:edit"><td>
    				<a href="${ctx}/notice/notice/form?id=${notice.id}">修改</a>
					<a href="${ctx}/notice/notice/delete?id=${notice.id}" onclick="return confirmx('确认要删除该通告吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>