// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;


// Referenced classes of package com.instagram.android.activity:
//            h, FlickrAuthActivity

final class i
    implements Runnable
{

    final h a;

    i(h h1)
    {
        a = h1;
        super();
    }

    public final void run()
    {
        a.a.setResult(0);
        a.a.finish();
    }
}
