// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.g.t;
import com.facebook.widget.h;
import com.facebook.widget.l;

// Referenced classes of package com.facebook:
//            j, c, u, k, 
//            b, a, s, ab, 
//            z, w, i

final class v extends j
{

    final c b;
    private transient h c;

    v(c c1)
    {
        b = c1;
        super(c1);
    }

    private void a(String s1)
    {
        android.content.SharedPreferences.Editor editor = b.c().a().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit();
        editor.putString("TOKEN", s1);
        if (!editor.commit())
        {
            t.a();
        }
    }

    private String d()
    {
        return b.c().a().getSharedPreferences("com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    final void a(k k1, Bundle bundle, z z1)
    {
        s s1;
        if (bundle != null)
        {
            a a1 = com.facebook.a.a(k1.b(), bundle, b.e);
            s1 = s.a(a1);
            CookieSyncManager.createInstance(b.c).sync();
            a(a1.a());
        } else
        if (z1 instanceof ab)
        {
            s1 = s.a("User canceled log in.");
        } else
        {
            s1 = s.a(z1.getMessage(), null);
        }
        b.a(s1);
    }

    final boolean a()
    {
        return true;
    }

    final boolean a(k k1)
    {
        String s1 = k1.f();
        Bundle bundle = new Bundle();
        if (!t.a(k1.b()))
        {
            bundle.putString("scope", TextUtils.join(",", k1.b()));
        }
        String s2 = k1.h();
        w w1;
        if (!t.a(s2) && s2.equals(d()))
        {
            bundle.putString("access_token", s2);
        } else
        {
            t.b(b.c);
        }
        w1 = new w(this, k1);
        c = ((l)(new i(b.c().a(), s1, bundle)).a(w1)).a();
        c.show();
        return true;
    }

    final boolean b()
    {
        return true;
    }

    final void c()
    {
        if (c != null)
        {
            c.dismiss();
            c = null;
        }
    }
}
