package com.studiobellota.components;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import com.studiobellota.channel.StudioBellotaChannelInfo;

import org.hippoecm.hst.component.support.bean.BaseHstComponent;
import org.hippoecm.hst.configuration.hosting.Mount;
import org.hippoecm.hst.core.component.HstComponentException;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;

/**
 * @author DAMULDER
 * @version $Id: BaseComponent.java 58 2015-08-06 23:11:54Z DAMULDER $
 */
public class BaseComponent extends BaseHstComponent {
    private static final String CHANNEL_INFO = "channelInfo";

    @Override
    public void doBeforeRender(HstRequest request, HstResponse response) {
        super.doBeforeRender(request, response);
        loadChannelProperties(request);
    }

    protected void loadChannelProperties(HstRequest request) {
        Mount mount = request.getRequestContext().getResolvedMount().getMount();
        StudioBellotaChannelInfo channelInfo = mount.getChannelInfo();
        if (channelInfo != null) {
            request.setAttribute(CHANNEL_INFO, channelInfo);
        }
    }

    protected void sendStatusCode(HstResponse response, int statusCode) {
        response.setStatus(statusCode);
        if (statusCode >= HttpServletResponse.SC_BAD_REQUEST) {
            try {
                response.sendError(statusCode);
            } catch (IOException e) {
                throw new HstComponentException("Exception caught", e);
            }
        }
    }
}
