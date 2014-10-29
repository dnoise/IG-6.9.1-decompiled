// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.ultraviolet;

import com.coremedia.iso.e;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;

public class BaseLocationBox extends AbstractFullBox
{

    String baseLocation;
    String purchaseLocation;

    public BaseLocationBox()
    {
        super("bloc");
        baseLocation = "";
        purchaseLocation = "";
    }

    public BaseLocationBox(String s, String s1)
    {
        super("bloc");
        baseLocation = "";
        purchaseLocation = "";
        baseLocation = s;
        purchaseLocation = s1;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        baseLocation = e.g(bytebuffer);
        bytebuffer.get(new byte[-1 + (256 - k.b(baseLocation))]);
        purchaseLocation = e.g(bytebuffer);
        bytebuffer.get(new byte[-1 + (256 - k.b(purchaseLocation))]);
        bytebuffer.get(new byte[512]);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            BaseLocationBox baselocationbox = (BaseLocationBox)obj;
            if (baseLocation == null ? baselocationbox.baseLocation != null : !baseLocation.equals(baselocationbox.baseLocation))
            {
                return false;
            }
            if (purchaseLocation == null ? baselocationbox.purchaseLocation != null : !purchaseLocation.equals(baselocationbox.purchaseLocation))
            {
                return false;
            }
        }
        return true;
    }

    public String getBaseLocation()
    {
        return baseLocation;
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        bytebuffer.put(k.a(baseLocation));
        bytebuffer.put(new byte[256 - k.b(baseLocation)]);
        bytebuffer.put(k.a(purchaseLocation));
        bytebuffer.put(new byte[256 - k.b(purchaseLocation)]);
        bytebuffer.put(new byte[512]);
    }

    protected long getContentSize()
    {
        return 1028L;
    }

    public String getPurchaseLocation()
    {
        return purchaseLocation;
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int l;
        if (baseLocation != null)
        {
            i = baseLocation.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        s = purchaseLocation;
        l = 0;
        if (s != null)
        {
            l = purchaseLocation.hashCode();
        }
        return j + l;
    }

    public void setBaseLocation(String s)
    {
        baseLocation = s;
    }

    public void setPurchaseLocation(String s)
    {
        purchaseLocation = s;
    }
}
