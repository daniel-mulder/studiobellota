<%@ include file="/WEB-INF/jspf/taglibs.jspf" %>
<%--@elvariable id="document" type="com.studiobellota.beans.documents.ContentDocument"--%>
<%--@elvariable id="channelInfo" type="com.studiobellota.channel.StudioBellotaChannelInfo"--%>

<bellota:title-contribution/>
<hst:link hippobean="${document.image}" var="imageLink"/>

<div class="uptop">
  <img class="base-content content-image" src="${imageLink}"/>
</div>
<div class="row main">
  <div class="row">
    <h1>${document.title}</h1>
  </div>
  <div class="row">
    <hst:html hippohtml="${document.html}"/>
  </div>
</div>