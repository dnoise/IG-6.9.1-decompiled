// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.threegpp26244;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class LocationInformationBox extends AbstractFullBox
{

    public static final String TYPE = "loci";
    private String additionalNotes;
    private double altitude;
    private String astronomicalBody;
    private String language;
    private double latitude;
    private double longitude;
    private String name;
    private int role;

    public LocationInformationBox()
    {
        super("loci");
        name = "";
        astronomicalBody = "";
        additionalNotes = "";
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        language = e.k(bytebuffer);
        name = e.g(bytebuffer);
        role = e.f(bytebuffer);
        longitude = e.i(bytebuffer);
        latitude = e.i(bytebuffer);
        altitude = e.i(bytebuffer);
        astronomicalBody = e.g(bytebuffer);
        additionalNotes = e.g(bytebuffer);
    }

    public String getAdditionalNotes()
    {
        return additionalNotes;
    }

    public double getAltitude()
    {
        return altitude;
    }

    public String getAstronomicalBody()
    {
        return astronomicalBody;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, language);
        bytebuffer.put(k.a(name));
        bytebuffer.put((byte)0);
        g.d(bytebuffer, role);
        g.a(bytebuffer, longitude);
        g.a(bytebuffer, latitude);
        g.a(bytebuffer, altitude);
        bytebuffer.put(k.a(astronomicalBody));
        bytebuffer.put((byte)0);
        bytebuffer.put(k.a(additionalNotes));
        bytebuffer.put((byte)0);
    }

    protected long getContentSize()
    {
        return (long)(22 + k.a(name).length + k.a(astronomicalBody).length + k.a(additionalNotes).length);
    }

    public String getLanguage()
    {
        return language;
    }

    public double getLatitude()
    {
        return latitude;
    }

    public double getLongitude()
    {
        return longitude;
    }

    public String getName()
    {
        return name;
    }

    public int getRole()
    {
        return role;
    }

    public void setAdditionalNotes(String s)
    {
        additionalNotes = s;
    }

    public void setAltitude(double d)
    {
        altitude = d;
    }

    public void setAstronomicalBody(String s)
    {
        astronomicalBody = s;
    }

    public void setLanguage(String s)
    {
        language = s;
    }

    public void setLatitude(double d)
    {
        latitude = d;
    }

    public void setLongitude(double d)
    {
        longitude = d;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setRole(int i)
    {
        role = i;
    }
}
