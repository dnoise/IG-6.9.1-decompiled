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

public class ClassificationBox extends AbstractFullBox
{

    public static final String TYPE = "clsf";
    private String classificationEntity;
    private String classificationInfo;
    private int classificationTableIndex;
    private String language;

    public ClassificationBox()
    {
        super("clsf");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        byte abyte0[] = new byte[4];
        bytebuffer.get(abyte0);
        classificationEntity = IsoFile.bytesToFourCC(abyte0);
        classificationTableIndex = e.d(bytebuffer);
        language = e.k(bytebuffer);
        classificationInfo = e.g(bytebuffer);
    }

    public String getClassificationEntity()
    {
        return classificationEntity;
    }

    public String getClassificationInfo()
    {
        return classificationInfo;
    }

    public int getClassificationTableIndex()
    {
        return classificationTableIndex;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.fourCCtoBytes(classificationEntity));
        g.b(bytebuffer, classificationTableIndex);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(classificationInfo));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(1 + (8 + k.b(classificationInfo)));
    }

    public String getLanguage()
    {
        return language;
    }

    public void setClassificationEntity(String s)
    {
        classificationEntity = s;
    }

    public void setClassificationInfo(String s)
    {
        classificationInfo = s;
    }

    public void setClassificationTableIndex(int i)
    {
        classificationTableIndex = i;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ClassificationBox[language=").append(getLanguage());
        stringbuilder.append("classificationEntity=").append(getClassificationEntity());
        stringbuilder.append(";classificationTableIndex=").append(getClassificationTableIndex());
        stringbuilder.append(";language=").append(getLanguage());
        stringbuilder.append(";classificationInfo=").append(getClassificationInfo());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
