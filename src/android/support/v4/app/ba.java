// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.app:
//            bk, av, bc

public final class ba
{

    Context a;
    CharSequence b;
    CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    Bitmap g;
    CharSequence h;
    int i;
    int j;
    boolean k;
    bk l;
    CharSequence m;
    int n;
    int o;
    boolean p;
    String q;
    boolean r;
    String s;
    ArrayList t;
    boolean u;
    Bundle v;
    Notification w;

    public ba(Context context)
    {
        t = new ArrayList();
        u = false;
        w = new Notification();
        a = context;
        w.when = System.currentTimeMillis();
        w.audioStreamType = -1;
        j = 0;
    }

    private void a(int i1, boolean flag)
    {
        if (flag)
        {
            Notification notification1 = w;
            notification1.flags = i1 | notification1.flags;
            return;
        } else
        {
            Notification notification = w;
            notification.flags = notification.flags & ~i1;
            return;
        }
    }

    public final ba a()
    {
        a(16, true);
        return this;
    }

    public final ba a(int i1)
    {
        w.icon = i1;
        return this;
    }

    public final ba a(long l1)
    {
        w.when = l1;
        return this;
    }

    public final ba a(PendingIntent pendingintent)
    {
        d = pendingintent;
        return this;
    }

    public final ba a(Bitmap bitmap)
    {
        g = bitmap;
        return this;
    }

    public final ba a(bk bk1)
    {
        if (l != bk1)
        {
            l = bk1;
            if (l != null)
            {
                l.a(this);
            }
        }
        return this;
    }

    public final ba a(CharSequence charsequence)
    {
        b = charsequence;
        return this;
    }

    public final ba a(boolean flag)
    {
        a(2, flag);
        return this;
    }

    public final ba b()
    {
        u = true;
        return this;
    }

    public final ba b(PendingIntent pendingintent)
    {
        w.deleteIntent = pendingintent;
        return this;
    }

    public final ba b(CharSequence charsequence)
    {
        c = charsequence;
        return this;
    }

    public final ba c()
    {
        w.defaults = 1;
        return this;
    }

    public final ba c(CharSequence charsequence)
    {
        h = charsequence;
        return this;
    }

    public final Notification d()
    {
        return av.a().a(this);
    }

    public final ba d(CharSequence charsequence)
    {
        w.tickerText = charsequence;
        return this;
    }
}
