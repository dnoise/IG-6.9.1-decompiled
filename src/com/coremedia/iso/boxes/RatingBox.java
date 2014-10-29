// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class RatingBox extends AbstractFullBox
{

    public static final String TYPE = "rtng";
    private String language;
    private String ratingCriteria;
    private String ratingEntity;
    private String ratingInfo;

    public RatingBox()
    {
        super("rtng");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        ratingEntity = e.l(bytebuffer);
        ratingCriteria = e.l(bytebuffer);
        language = e.k(bytebuffer);
        ratingInfo = e.g(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(IsoFile.fourCCtoBytes(ratingEntity));
        bytebuffer.put(IsoFile.fourCCtoBytes(ratingCriteria));
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(ratingInfo));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(15 + k.b(ratingInfo));
    }

    public String getLanguage()
    {
        return language;
    }

    public String getRatingCriteria()
    {
        return ratingCriteria;
    }

    public String getRatingEntity()
    {
        return ratingEntity;
    }

    public String getRatingInfo()
    {
        return ratingInfo;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setRatingCriteria(String s)
    {
        ratingCriteria = s;
    }

    public void setRatingEntity(String s)
    {
        ratingEntity = s;
    }

    public void setRatingInfo(String s)
    {
        ratingInfo = s;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("RatingBox[language=").append(getLanguage());
        stringbuilder.append("ratingEntity=").append(getRatingEntity());
        stringbuilder.append(";ratingCriteria=").append(getRatingCriteria());
        stringbuilder.append(";language=").append(getLanguage());
        stringbuilder.append(";ratingInfo=").append(getRatingInfo());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
