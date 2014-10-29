// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.a;

import android.content.Context;

// Referenced classes of package com.facebook.a.a:
//            b

public class a
    implements b
{

    protected Context a;

    public a(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Application context cannot be null");
        } else
        {
            a = context;
            return;
        }
    }

    public final String[] a()
    {
        return new String[0];
    }

    public final String[] b()
    {
        return (new String[] {
            "-t", "200", "-v", "time"
        });
    }

    public final String c()
    {
        return "application/x-www-form-urlencoded";
    }

    public final Context d()
    {
        return a;
    }
}
