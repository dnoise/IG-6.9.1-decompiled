// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.os.Handler;
import com.facebook.aw;
import com.instagram.android.feed.b.a.b;
import com.instagram.common.a.a.g;
import com.instagram.feed.a.h;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            eu, ep, er, es, 
//            et

public final class eo extends eu
{

    private String ae;
    private boolean af;
    private boolean ag;
    private final Handler ah = new Handler();

    public eo()
    {
        af = true;
        ag = false;
    }

    static Handler a(eo eo1)
    {
        return eo1.ah;
    }

    static String a(eo eo1, String s)
    {
        eo1.ae = s;
        return s;
    }

    private void a(String s)
    {
        ad.a((new b(s)).a(new ep(this)));
    }

    static boolean a(eo eo1, boolean flag)
    {
        eo1.ag = flag;
        return flag;
    }

    static String b(eo eo1)
    {
        return eo1.ae;
    }

    public final void G()
    {
        super.G();
        af = false;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (bundle != null)
        {
            af = false;
        }
        String s = j().getString("com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL");
        if (s != null)
        {
            a(s);
        }
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.b(aw.action_bar_title_logo);
        b1.a(true, new er(this));
        b1.a(true);
        b1.b(e());
        b1.a(new es(this));
    }

    public final void a(Map map)
    {
        map.put("src", "shortURL");
    }

    public final boolean ad()
    {
        return af;
    }

    protected final h d(boolean flag)
    {
        return new et(this, af(), flag);
    }

    public final boolean e()
    {
        return super.e() || ag;
    }

    public final String j_()
    {
        return "feed_short_url";
    }
}
