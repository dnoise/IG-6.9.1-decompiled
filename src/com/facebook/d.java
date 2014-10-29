// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Intent;

// Referenced classes of package com.facebook:
//            u, c

final class d
    implements u
{

    final Activity a;
    final c b;

    d(c c, Activity activity)
    {
        b = c;
        a = activity;
        super();
    }

    public final Activity a()
    {
        return a;
    }

    public final void a(Intent intent, int i)
    {
        a.startActivityForResult(intent, i);
    }
}
