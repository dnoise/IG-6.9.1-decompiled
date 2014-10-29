// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.instagram.o.a:
//            b

public final class a
{

    private static final Handler a = new Handler(Looper.getMainLooper());

    public static void a(Context context, String s, String s1, String s2)
    {
        a.post(new b(context, s1, s, s2));
    }

}
