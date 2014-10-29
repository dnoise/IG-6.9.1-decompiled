// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.Context;
import android.os.Bundle;
import com.facebook.bo;
import com.facebook.g.u;

// Referenced classes of package com.facebook.widget:
//            h, o

class m
{

    private Context a;
    private bo b;
    private String c;
    private String d;
    private int e;
    private o f;
    private Bundle g;

    protected m(Context context, String s, String s1, Bundle bundle)
    {
        e = 0x1030010;
        u.a(s, "applicationId");
        c = s;
        a(context, s1, bundle);
    }

    private void a(Context context, String s, Bundle bundle)
    {
        a = context;
        d = s;
        if (bundle != null)
        {
            g = bundle;
            return;
        } else
        {
            g = new Bundle();
            return;
        }
    }

    public h a()
    {
        if (b != null && b.a())
        {
            g.putString("app_id", b.c());
            g.putString("access_token", b.d());
        } else
        {
            g.putString("app_id", c);
        }
        if (!g.containsKey("redirect_uri"))
        {
            g.putString("redirect_uri", "fbconnect://success");
        }
        return new h(a, d, g, e, f);
    }

    public final m a(o o)
    {
        f = o;
        return this;
    }

    protected final String b()
    {
        return c;
    }

    protected final Context c()
    {
        return a;
    }

    protected final int d()
    {
        return e;
    }

    protected final Bundle e()
    {
        return g;
    }

    protected final o f()
    {
        return f;
    }
}
