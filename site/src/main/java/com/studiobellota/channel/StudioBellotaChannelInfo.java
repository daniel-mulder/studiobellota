package com.studiobellota.channel;

import org.hippoecm.hst.configuration.channel.ChannelInfo;
import org.hippoecm.hst.core.parameters.Parameter;

/**
 * @author DAMULDER
 * @version $Id: StudioBellotaChannelInfo.java 58 2015-08-06 23:11:54Z DAMULDER $
 */
public interface StudioBellotaChannelInfo extends ChannelInfo {

    @Parameter(name = "siteTitle", defaultValue = "Studio Bellota", description = "Site wide title that can be used in browser bar.")
    String getSiteTitle();

}
