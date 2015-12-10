<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
</head>
<body>
<div class="container">
    <div class="content">


			<div class="span12">
				<div id="myCarousel" class="carousel slide">
					<ol class="carousel-indicators">
                      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                      <li data-target="#myCarousel" data-slide-to="1"></li>
                      <li data-target="#myCarousel" data-slide-to="2"></li>
                      <li data-target="#myCarousel" data-slide-to="3"></li>
                      <li data-target="#myCarousel" data-slide-to="4"></li>
                      <li data-target="#myCarousel" data-slide-to="5"></li>
                    </ol>
					<div class="carousel-inner">
					
                        <div class="item active" style="height: 400px;width: 100%;">

							<a href="#" target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red3.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>重庆外服亮相&ldquo;2015亚...</p>
							</div>
						</div>

                      <div class="item" style="height: 400px;width: 100%;">
							<a href="#"  target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red4.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>心往一处想 劲往一处使</p>
							</div>
						</div>

                       <div class="item" style="height: 400px;width: 100%;">
							<a href="#"  target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red5.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>&ldquo;花好月圆 美味月饼DIY...</p>
							</div>
						</div>
						
                      <div class="item" style="height: 400px;width: 100%;">
							<a href="#"  target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red6.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>重庆外服荣获&ldquo;2014年度...</p>
							</div>
						</div>
						
                       <div class="item" style="height: 400px;width: 100%;">
							<a href="#"  target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red7.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>2014年外商服务有限公司开展...</p>
							</div>
						</div>

                       <div class="item" style="height: 400px;width: 100%;">
							<a href="#"  target="_blank"><img
								src="${pageContext.request.contextPath}/static/images/red9.jpg"
								style="height: 400px;width: 100%;" alt=""></a>
							<div class="carousel-caption">
								<p>诚信为本，企业常青</p>
							</div>
						</div>

                    </div>
					<a class="carousel-control left" href="#myCarousel"
						data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
						href="#myCarousel" data-slide="next">&rsaquo;</a>
				</div>
			</div>

			<%--  <img src="${pageContext.request.contextPath}/static/images/cq.jpg" style="height: 200px;width: 100%;"/>	 --%>
   
      <div class="row" >  
  
        <div class="span12">
    
        <h4 style="color:#9A5CAF"><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>联盟简介</h4>
             <div>
     	 <div style="float:right">
      
      	<p style="text-indent:3em; ">
        
	<%-- 	${fns:abbr(article.title,28)} --%>
		${fnc:getArticleDes("3")}
		
     </p>
     </div>
      </div>
      </div>

      <div class="span4">
        <h4 style="color:#9A5CAF"> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>即时新闻</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 11, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span4">
        <h4 style="color:#9A5CAF"><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>联盟宗旨</h4>
		<ul><c:forEach items="${fnc:getArticleList(site.id, 2,6, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      
            <div class="span4">
        <h4 style="color:#9A5CAF"><small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>友情链接</h4>
		<ul><c:forEach items="${fnc:getLinkList(site.id, 19, 8, '')}" var="link">
			<li><span class="pull-right"><fmt:formatDate value="${link.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${link.href}" style="color:${link.color}">${fns:abbr(link.title,28)}</a></li>
		</c:forEach></ul>
      </div>
    </div>
    </div>
    </div> <!-- /container -->
</body>
</html>