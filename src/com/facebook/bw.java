// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;

// Referenced classes of package com.facebook:
//            cb, bu

final class bw
    implements cb
{

    final Fragment a;
    final bu b;

    bw(bu bu, Fragment fragment)
    {
        b = bu;
        a = fragment;
        super();
    }

    public final Activity a()
    {
        return a.l();
    }

    public final void a(Intent intent, int i)
    {
        a.a(intent, i);
    }
}
