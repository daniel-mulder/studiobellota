<!doctype html>
<%@ include file="/WEB-INF/jsp/include/imports.jsp" %>
<%--@elvariable id="hstRequest" type="org.hippoecm.hst.core.component.HstRequest"--%>

<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="shortcut icon" type="image/x-icon" href="<hst:webfile  path="bellota/img/favicon.ico"/>"/>
  <link rel="icon" type="image/x-icon" href="<hst:webfile  path="bellota/img/favicon.ico"/>">
  <link rel="apple-touch-icon" sizes="180x180" href="<hst:webfile  path="bellota/img/apple-icon-180x180.png"/>">

  <link rel="stylesheet" href="<hst:webfile  path="bellota/css/app.min.css"/>" type="text/css"/>

  <hst:defineObjects/>

  <c:if test="${hstRequest.requestContext.cmsRequest}">
    <link rel="stylesheet" href="<hst:webfile  path="bellota/css/cms-request.css"/>" type="text/css"/>
  </c:if>

  <hst:headContributions categoryExcludes="htmlBodyEnd, scripts" xhtml="true"/>
</head>

<body>

<div class="wrapper">

  <hst:include ref="main"/>

</div>

<hst:headContributions categoryIncludes="htmlBodyEnd, scripts" xhtml="true"/>

</body>
</html>