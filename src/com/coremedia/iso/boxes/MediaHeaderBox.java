// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class MediaHeaderBox extends AbstractFullBox
{

    public static final String TYPE = "mdhd";
    private long creationTime;
    private long duration;
    private String language;
    private long modificationTime;
    private long timescale;

    public MediaHeaderBox()
    {
        super("mdhd");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            creationTime = e.h(bytebuffer);
            modificationTime = e.h(bytebuffer);
            timescale = e.b(bytebuffer);
            duration = e.h(bytebuffer);
        } else
        {
            creationTime = e.b(bytebuffer);
            modificationTime = e.b(bytebuffer);
            timescale = e.b(bytebuffer);
            duration = e.b(bytebuffer);
        }
        language = e.k(bytebuffer);
        e.d(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        if (getVersion() == 1)
        {
            g.a(bytebuffer, creationTime);
            g.a(bytebuffer, modificationTime);
            g.b(bytebuffer, timescale);
            g.a(bytebuffer, duration);
        } else
        {
            g.b(bytebuffer, creationTime);
            g.b(bytebuffer, modificationTime);
            g.b(bytebuffer, timescale);
            g.b(bytebuffer, duration);
        }
        g.a(bytebuffer, language);
        g.b(bytebuffer, 0);
    }

    protected long getContentSize()
    {
        long l;
        if (getVersion() == 1)
        {
            l = 32L;
        } else
        {
            l = 20L;
        }
        return 2L + (l + 2L);
    }

    public long getCreationTime()
    {
        return creationTime;
    }

    public long getDuration()
    {
        return duration;
    }

    public String getLanguage()
    {
        return language;
    }

    public long getModificationTime()
    {
        return modificationTime;
    }

    public long getTimescale()
    {
        return timescale;
    }

    public void setCreationTime(long l)
    {
        creationTime = l;
    }

    public void setDuration(long l)
    {
        duration = l;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setModificationTime(long l)
    {
        modificationTime = l;
    }

    public void setTimescale(long l)
    {
        timescale = l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("MediaHeaderBox[");
        stringbuilder.append("creationTime=").append(getCreationTime());
        stringbuilder.append(";");
        stringbuilder.append("modificationTime=").append(getModificationTime());
        stringbuilder.append(";");
        stringbuilder.append("timescale=").append(getTimescale());
        stringbuilder.append(";");
        stringbuilder.append("duration=").append(getDuration());
        stringbuilder.append(";");
        stringbuilder.append("language=").append(getLanguage());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
