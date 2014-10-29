// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.content.Context;
import android.os.AsyncTask;

// Referenced classes of package com.facebook.b:
//            b, m

final class d extends AsyncTask
{

    final b a;
    private final String b;
    private final Context c;

    public d(b b1, String s, Context context)
    {
        a = b1;
        super();
        b = s;
        c = context.getApplicationContext();
    }

    private transient Void a()
    {
        try
        {
            com.facebook.b.b.a(a, b, c);
        }
        catch (Exception exception)
        {
            exception.getMessage();
            m.a();
        }
        return null;
    }

    private void b()
    {
        synchronized (a)
        {
            com.facebook.b.b.c(a);
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
