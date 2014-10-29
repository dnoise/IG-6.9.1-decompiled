// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import com.facebook.b.e;
import com.facebook.b.i;
import com.instagram.model.a.b;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.widget:
//            x

public abstract class w
    implements e
{

    private static final Handler a = new Handler(Looper.getMainLooper());
    private final b b;
    private final Fragment c;

    public w(Fragment fragment, b b1)
    {
        c = fragment;
        b = b1;
    }

    public final void a()
    {
    }

    public final void a(Bundle bundle)
    {
        com.instagram.android.widget.x.a.a(b, true);
        com.instagram.share.b.a.b();
        b();
    }

    public final void a(com.facebook.b.a a1)
    {
    }

    public final void a(i i)
    {
    }

    public abstract void b();

}
