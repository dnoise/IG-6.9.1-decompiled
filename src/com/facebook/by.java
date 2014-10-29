// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.os.AsyncTask;
import com.facebook.g.t;

// Referenced classes of package com.facebook:
//            cj, bo

final class by extends AsyncTask
{

    final bo a;
    private final String b;
    private final Context c;

    public by(bo bo1, String s, Context context)
    {
        a = bo1;
        super();
        b = s;
        c = context.getApplicationContext();
    }

    private transient Void a()
    {
        try
        {
            cj.a(c, b);
        }
        catch (Exception exception)
        {
            t.a(exception);
        }
        return null;
    }

    private void b()
    {
        synchronized (a)
        {
            bo.f(a);
        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        b();
    }
}
