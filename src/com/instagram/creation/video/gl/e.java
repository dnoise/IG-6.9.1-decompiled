// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


// Referenced classes of package com.instagram.creation.video.gl:
//            d

final class e
{

    float a;
    float b[];
    e c;

    private e()
    {
        b = new float[16];
    }

    e(byte byte0)
    {
        this();
    }

    public final void a(d d1)
    {
        if (a >= 0.0F)
        {
            d1.a(a);
        }
        if (b[0] != (-1.0F / 0.0F))
        {
            System.arraycopy(b, 0, d.a(d1), 0, 16);
        }
    }
}
