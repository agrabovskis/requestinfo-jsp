<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request information</title>
</head>
<Valve className="org.apache.catalina.valves.RemoteIpValve" internalProxies="172\.31\.11\.118"
	remoteIpHeader="x-forwarded-for" proxiesHeader="x-forwarded-by" protocolHeader="x-forwarded-proto" />
<body>
	<h1>Request information:</h1>
	<ul>
		<li>Auth Type: ${pageContext.request.authType}</li>
		<li>Character encoding: ${pageContext.request.characterEncoding}</li>
		<li>Content Lenth: ${pageContext.request.contentLength}</li>
		<li>Content Type: ${pageContext.request.contentType}</li>
		<li>Context Path: ${pageContext.request.contextPath}</li>
		<li>Local Address: ${pageContext.request.localAddr}</li>
		<li>Local Name: ${pageContext.request.localName}</li>
		<li>Local Port: ${pageContext.request.localPort}</li>
		<li>Locale: ${pageContext.request.locale}</li>
		<li>Method: ${pageContext.request.method}</li>
		<li>Path Info: ${pageContext.request.pathInfo}</li>
		<li>Path Translated: ${pageContext.request.pathTranslated}</li>
		<li>Protocol: ${pageContext.request.protocol}</li>
		<li>Query String: ${pageContext.request.queryString}</li>
		<li>Remote Address: ${pageContext.request.remoteAddr}</li>
		<li>Remote User: ${pageContext.request.remoteUser}</li>
		<li>Requested Session ID: ${pageContext.request.requestedSessionId}</li>
		<li>Request URI: ${pageContext.request.requestURI}</li>
		<li>Scheme: ${pageContext.request.scheme}</li>
		<li>Server Name: ${pageContext.request.serverName}</li>
		<li>Server Port: ${pageContext.request.serverPort}</li>
		<li>Servlet Path: ${pageContext.request.servletPath}</li>

	</ul>
	<h1>Parameters:</h1>
	<ul>
		<c:forEach items="${param}" var="entry">
			<ul>
				<c:out value="${entry.key}:  ${entry.value}" />
			</ul>
		</c:forEach>
	</ul>
	<h1>Headers:</h1>
	<ul>
		<c:forEach items="${header}" var="entry">
			<ul>
				<c:out value="${entry.key}: ${entry.value}" />
			</ul>
		</c:forEach>
	</ul>
	<h1>Cookies:</h1>
	<ul>
		<c:forEach items="${cookie}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value.value}" />
			</li>
		</c:forEach>
	</ul>

	<h1>Init Params:</h1>
	<ul>
		<c:forEach items="${initParam}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value}" />
				<br />
			</li>
		</c:forEach>
	</ul>

	<h1>Class path list:</h1>
	<ul>
		<c:forTokens items="${applicationScope['org.apache.catalina.jsp_classpath']}" delims=";" var="entry">
			<li>
				<c:out value="${entry}" />
			</li>
		</c:forTokens>
	</ul>

	<h1>Attributes:</h1>
	<h2>Page-scoped:</h2>
	<ul>
		<c:forEach items="${pageScope}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value}" />
			</li>
		</c:forEach>
	</ul>
	<h2>Request-scoped:</h2>
	<ul>
		<c:forEach items="${requestScope}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value}" />
			</li>
		</c:forEach>
	</ul>
	<h2>Session-scoped:</h2>
	<ul>
		<c:forEach items="${sessionScope}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value}" />
			</li>
		</c:forEach>
	</ul>
	<h2>Application-scoped:</h2>
	<ul>
		<c:forEach items="${applicationScope}" var="entry">
			<li>
				<c:out value="${entry.key}: ${entry.value}" />
			</li>
		</c:forEach>
	</ul>
</body>
</html>