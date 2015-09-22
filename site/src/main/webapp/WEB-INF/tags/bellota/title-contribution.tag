<%@ tag body-content="empty" pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ include file="../../jspf/taglibs.jspf"%>

<%@ attribute name="document" type="com.studiobellota.beans.model.TitleBean" required="false" %>
<%@ attribute name="channelInfo" type="com.studiobellota.channel.StudioBellotaChannelInfo" required="false" %>
<%@ attribute name="overrideTitle" type="java.lang.String" required="false" %>
<%@ attribute name="removeSuffix" type="java.lang.Boolean" required="false" %>

<c:set var="htmlTitle" value="${channelInfo.siteTitle}" />

<c:set var="suffix" value=""/>
<c:if test="${not empty htmlTitle && not removeSuffix}">
  <c:set var="suffix" value="| ${htmlTitle}"/>
</c:if>

<c:choose>
  <c:when test="${not empty overrideTitle}">
    <c:set value="${overrideTitle} ${suffix}" var="htmlTitle"/>
  </c:when>
  <c:when test="${not empty document.title}">
    <c:set value="${document.title} ${suffix}" var="htmlTitle"/>
  </c:when>
</c:choose>

<hst:element var="headTitle" name="title">${htmlTitle}</hst:element>
<hst:headContribution keyHint="headTitle" element="${headTitle}"/>
