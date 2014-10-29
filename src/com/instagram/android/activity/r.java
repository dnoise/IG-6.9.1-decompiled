// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;


// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity

final class r
    implements Runnable
{

    final int a;
    final int b;
    final int c;
    final int d;
    final MainTabActivity e;

    r(MainTabActivity maintabactivity, int i, int j, int k, int l)
    {
        e = maintabactivity;
        a = i;
        b = j;
        c = k;
        d = l;
        super();
    }

    public final void run()
    {
        MainTabActivity.a(e, a, b, c, d);
    }
}
