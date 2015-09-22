package com.studiobellota.beans.documents;

import com.studiobellota.beans.model.TitleBean;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoHtml;

/**
 *
 * @author DAMULDER
 * @version $Id: ContentDocument.java 58 2015-08-06 23:11:54Z DAMULDER $
 */
@Node(jcrType = ContentDocument.TYPE)
public class ContentDocument extends BaseDocument implements TitleBean {

	public static final String TYPE = "bellota:contentdocument";

    public String getTitle() {
        return getProperty("bellota:title");
    }

    public HippoGalleryImageSet getImage() {
        return getLinkedBean("bellota:image", HippoGalleryImageSet.class);
    }

    public HippoHtml getHtml() {
        return getHippoHtml("bellota:html");
    }



}