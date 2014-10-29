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

public class SchemeTypeBox extends AbstractFullBox
{

    static final boolean $assertionsDisabled = false;
    public static final String TYPE = "schm";
    String schemeType;
    String schemeUri;
    long schemeVersion;

    public SchemeTypeBox()
    {
        super("schm");
        schemeType = "    ";
        schemeUri = null;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        schemeType = e.l(bytebuffer);
        schemeVersion = e.b(bytebuffer);
        if ((1 & getFlags()) == 1)
        {
            schemeUri = e.g(bytebuffer);
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(IsoFile.fourCCtoBytes(schemeType));
        g.b(bytebuffer, schemeVersion);
        if ((1 & getFlags()) == 1)
        {
            bytebuffer.put(k.a(schemeUri));
        }
    }

    protected long getContentSize()
    {
        int i;
        if ((1 & getFlags()) == 1)
        {
            i = 1 + k.b(schemeUri);
        } else
        {
            i = 0;
        }
        return (long)(i + 12);
    }

    public String getSchemeType()
    {
        return schemeType;
    }

    public String getSchemeUri()
    {
        return schemeUri;
    }

    public long getSchemeVersion()
    {
        return schemeVersion;
    }

    public void setSchemeType(String s)
    {
        if (!$assertionsDisabled && (s == null || s.length() != 4))
        {
            throw new AssertionError("SchemeType may not be null or not 4 bytes long");
        } else
        {
            schemeType = s;
            return;
        }
    }

    public void setSchemeUri(String s)
    {
        schemeUri = s;
    }

    public void setSchemeVersion(int i)
    {
        schemeVersion = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Schema Type Box[");
        stringbuilder.append("schemeUri=").append(schemeUri).append("; ");
        stringbuilder.append("schemeType=").append(schemeType).append("; ");
        stringbuilder.append("schemeVersion=").append(schemeUri).append("; ");
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/SchemeTypeBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
