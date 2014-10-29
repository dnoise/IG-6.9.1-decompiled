// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util.a;


// Referenced classes of package com.instagram.cliffjumper.util.a:
//            a, d

public final class c
{

    private static final boolean a;
    private static final d b;

    public static d a()
    {
        return b;
    }

    static 
    {
        boolean flag;
        d d1;
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        if (com.instagram.cliffjumper.util.a.a.a())
        {
            d1 = d.c;
        } else
        if (a || com.instagram.cliffjumper.util.a.a.b())
        {
            d1 = d.b;
        } else
        {
            d1 = d.a;
        }
        b = d1;
    }
}
