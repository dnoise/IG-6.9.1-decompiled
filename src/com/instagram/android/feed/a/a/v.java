// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.app.Dialog;
import android.content.Context;

// Referenced classes of package com.instagram.android.feed.a.a:
//            t

final class v extends Dialog
{

    final t a;

    v(t t1, Context context, int i)
    {
        a = t1;
        super(context, i);
    }

    public final void onBackPressed()
    {
        t.b(a);
    }
}
