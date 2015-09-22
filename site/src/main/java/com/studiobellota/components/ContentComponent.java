package com.studiobellota.components;

import org.hippoecm.hst.content.beans.standard.HippoBean;
import org.hippoecm.hst.core.component.HstComponentException;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.hippoecm.hst.core.request.HstRequestContext;


/**
 * @author DAMULDER
 * @version $Id: ContentComponent.java 58 2015-08-06 23:11:54Z DAMULDER $
 *
 * @version $Id: ContentComponent.java 58 2015-08-06 23:11:54Z DAMULDER $
 */
public class ContentComponent extends BaseComponent {

    @Override
    public void doBeforeRender(final HstRequest request, final HstResponse response) throws HstComponentException {
        super.doBeforeRender(request, response);
        HstRequestContext requestContext = request.getRequestContext();
        HippoBean documentBean = requestContext.getContentBean();
        if (documentBean != null) {
            request.setAttribute("document", documentBean);
        } else {
            sendStatusCode(response, 404);
        }
    }
}
