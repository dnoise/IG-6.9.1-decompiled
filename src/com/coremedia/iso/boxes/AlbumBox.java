// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class AlbumBox extends AbstractFullBox
{

    public static final String TYPE = "albm";
    private String albumTitle;
    private String language;
    private int trackNumber;

    public AlbumBox()
    {
        super("albm");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        albumTitle = e.g(bytebuffer);
        if (bytebuffer.remaining() > 0)
        {
            trackNumber = e.f(bytebuffer);
            return;
        } else
        {
            trackNumber = -1;
            return;
        }
    }

    public String getAlbumTitle()
    {
        return albumTitle;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(albumTitle));
        bytebuffer.put((byte)0);
        if (trackNumber != -1)
        {
            g.d(bytebuffer, trackNumber);
        }
    }

    protected long getContentSize()
    {
        int i = 1 + (6 + k.b(albumTitle));
        int j;
        if (trackNumber == -1)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        return (long)(j + i);
    }

    public String getLanguage()
    {
        return language;
    }

    public int getTrackNumber()
    {
        return trackNumber;
    }

    public void setAlbumTitle(String s)
    {
        albumTitle = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setTrackNumber(int i)
    {
        trackNumber = i;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AlbumBox[language=").append(getLanguage()).append(";");
        stringbuilder.append("albumTitle=").append(getAlbumTitle());
        if (trackNumber >= 0)
        {
            stringbuilder.append(";trackNumber=").append(getTrackNumber());
        }
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
