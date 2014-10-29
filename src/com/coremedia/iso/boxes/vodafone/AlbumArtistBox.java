// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.vodafone;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class AlbumArtistBox extends AbstractFullBox
{

    public static final String TYPE = "albr";
    private String albumArtist;
    private String language;

    public AlbumArtistBox()
    {
        super("albr");
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        albumArtist = e.g(bytebuffer);
    }

    public String getAlbumArtist()
    {
        return albumArtist;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(albumArtist));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(1 + (6 + k.b(albumArtist)));
    }

    public String getLanguage()
    {
        return language;
    }

    public void setAlbumArtist(String s)
    {
        albumArtist = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public String toString()
    {
        return (new StringBuilder("AlbumArtistBox[language=")).append(getLanguage()).append(";albumArtist=").append(getAlbumArtist()).append("]").toString();
    }
}
