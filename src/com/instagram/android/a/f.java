// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.os.AsyncTask;
import java.util.List;

// Referenced classes of package com.instagram.android.a:
//            d

final class f extends AsyncTask
{

    final List a;
    final d b;

    f(d d1, List list)
    {
        b = d1;
        a = list;
        super();
    }

    private transient Void a()
    {
        d.a(b, a);
        return null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }
}
