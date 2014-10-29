// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


final class ad
    implements Cloneable
{

    public boolean a;
    public android.graphics.Bitmap.Config b;
    public int c;

    private ad()
    {
    }

    ad(byte byte0)
    {
        this();
    }

    private ad a()
    {
        ad ad1;
        try
        {
            ad1 = (ad)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new AssertionError(clonenotsupportedexception);
        }
        return ad1;
    }

    public final Object clone()
    {
        return a();
    }

    public final boolean equals(Object obj)
    {
        ad ad1;
        if (obj instanceof ad)
        {
            if (a == (ad1 = (ad)obj).a && b == ad1.b && c == ad1.c)
            {
                return true;
            }
        }
        return false;
    }

    public final int hashCode()
    {
        int i = b.hashCode() ^ c;
        if (a)
        {
            return i;
        } else
        {
            return -i;
        }
    }
}
