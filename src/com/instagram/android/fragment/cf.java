// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.s;
import com.facebook.az;
import com.instagram.android.feed.a.h;
import com.instagram.android.feed.a.j;
import com.instagram.android.g.c;
import com.instagram.android.j.a;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.ui.dialog.b;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            h, cg, ci, ch

public final class cf extends com.instagram.android.fragment.h
{

    private BroadcastReceiver ae;

    public cf()
    {
        ae = new cg(this);
    }

    private static void a(Context context, s s, String s1, String s2, String s3)
    {
        (new b(context)).a(az.content_advisory).a(s1).b(az.show_posts, new ci(s2, s, s3)).c(az.cancel, null).c().show();
    }

    public static void a(Context context, String s, s s1, String s2)
    {
        String s3 = com.instagram.android.j.a.a(context, s);
        if (s3 == null)
        {
            b(s, s1, s2);
            return;
        } else
        {
            a(context, s1, s3, s, s2);
            return;
        }
    }

    static void a(String s, s s1, String s2)
    {
        b(s, s1, s2);
    }

    private j as()
    {
        return new j(this, Y());
    }

    private static void b(String s, s s1, String s2)
    {
        f.a().d(s1, s).b(s2).a();
    }

    public final void H()
    {
        android.support.v4.a.e.a(l()).a(ae);
        super.H();
    }

    protected final com.instagram.android.feed.a.a X()
    {
        return as();
    }

    protected final int Y()
    {
        return h.b;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c c1 = new c(j().getString("HashtagFeedFragment.ARGUMENT_TAG_NAME"));
        c1.a(n(), z());
        ((j)W()).a(c1);
        android.support.v4.a.e.a(l()).a(ae, new IntentFilter(c.a(c1.a())));
        com.instagram.h.a.a.a(c1.a());
        c(true);
    }

    public final void a(com.instagram.a.b b1)
    {
        super.a(b1);
        b1.a((new StringBuilder("#")).append(j().getString("HashtagFeedFragment.ARGUMENT_TAG_NAME")).toString());
    }

    public final void a(Map map)
    {
        map.put("src", "hashtag");
        map.put("q", j().getString("HashtagFeedFragment.ARGUMENT_TAG_NAME"));
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        return new ch(this, af(), flag);
    }

    public final String j_()
    {
        return "feed_hashtag";
    }
}
