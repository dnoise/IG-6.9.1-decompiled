// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.content.SharedPreferences;
import java.io.IOException;

// Referenced classes of package com.instagram.common.g.b:
//            o

final class q
    implements Runnable
{

    final SharedPreferences a;
    final o b;

    q(o o1, SharedPreferences sharedpreferences)
    {
        b = o1;
        a = sharedpreferences;
        super();
    }

    public final void run()
    {
        try
        {
            o.d();
            b.c();
            a.edit().putInt("format_version", 1).commit();
            return;
        }
        catch (IOException ioexception)
        {
            o.d();
        }
    }
}
