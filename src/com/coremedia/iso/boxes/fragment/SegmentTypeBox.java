// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractBox;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class SegmentTypeBox extends AbstractBox
{

    public static final String TYPE = "styp";
    private List compatibleBrands;
    private String majorBrand;
    private long minorVersion;

    public SegmentTypeBox()
    {
        super("styp");
        compatibleBrands = Collections.emptyList();
    }

    public SegmentTypeBox(String s, long l, List list)
    {
        super("styp");
        compatibleBrands = Collections.emptyList();
        majorBrand = s;
        minorVersion = l;
        compatibleBrands = list;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        majorBrand = e.l(bytebuffer);
        minorVersion = e.b(bytebuffer);
        int i = bytebuffer.remaining() / 4;
        compatibleBrands = new LinkedList();
        for (int j = 0; j < i; j++)
        {
            compatibleBrands.add(e.l(bytebuffer));
        }

    }

    public List getCompatibleBrands()
    {
        return compatibleBrands;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        bytebuffer.put(IsoFile.fourCCtoBytes(majorBrand));
        g.b(bytebuffer, minorVersion);
        for (Iterator iterator = compatibleBrands.iterator(); iterator.hasNext(); bytebuffer.put(IsoFile.fourCCtoBytes((String)iterator.next()))) { }
    }

    protected long getContentSize()
    {
        return (long)(8 + 4 * compatibleBrands.size());
    }

    public String getMajorBrand()
    {
        return majorBrand;
    }

    public long getMinorVersion()
    {
        return minorVersion;
    }

    public void setCompatibleBrands(List list)
    {
        compatibleBrands = list;
    }

    public void setMajorBrand(String s)
    {
        majorBrand = s;
    }

    public void setMinorVersion(int i)
    {
        minorVersion = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SegmentTypeBox[");
        stringbuilder.append("majorBrand=").append(getMajorBrand());
        stringbuilder.append(";");
        stringbuilder.append("minorVersion=").append(getMinorVersion());
        String s;
        for (Iterator iterator = compatibleBrands.iterator(); iterator.hasNext(); stringbuilder.append("compatibleBrand=").append(s))
        {
            s = (String)iterator.next();
            stringbuilder.append(";");
        }

        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
