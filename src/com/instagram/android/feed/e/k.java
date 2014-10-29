// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.app.Fragment;
import com.instagram.common.y.d;
import com.instagram.feed.c.g;
import com.instagram.feed.d.ad;
import com.instagram.feed.g.a;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.feed.e:
//            l

public final class k
{

    private static final IntentFilter a;
    private final Fragment b;
    private final a c;
    private final BroadcastReceiver d = new l(this);

    public k(Fragment fragment, a a1)
    {
        b = fragment;
        c = a1;
    }

    static a a(k k1)
    {
        return k1.c;
    }

    static void a(Intent intent, a a1)
    {
        b(intent, a1);
    }

    static void a(Intent intent, String s, a a1)
    {
        b(intent, s, a1);
    }

    static Fragment b(k k1)
    {
        return k1.b;
    }

    private static void b(Intent intent, a a1)
    {
        com.instagram.feed.d.l l1 = ad.a().b(intent.getStringExtra("Media.EXTRA_MEDIA_ID"));
        g.a(j.a().a(intent.getStringExtra("Media.EXTRA_USER_ID")), l1, a1);
    }

    private static void b(Intent intent, String s, a a1)
    {
        g.b(s, ad.a().b(intent.getStringExtra("Media.EXTRA_MEDIA_ID")), a1);
    }

    public final void a()
    {
        com.instagram.common.y.d.a(d, a);
    }

    public final void b()
    {
        com.instagram.common.y.d.a(d);
    }

    static 
    {
        IntentFilter intentfilter = new IntentFilter();
        a = intentfilter;
        intentfilter.addAction("Media.COMMENT_MENTION_CLICKED");
        a.addAction("Media.COMMENT_HASHTAG_CLICKED");
        a.addAction("Media.USER_CLICKED");
        a.addAction("Media.NUMBER_LIKES_CLICKED");
        a.addAction("Media.NUMBER_COMMENTS_CLICKED");
        a.addAction("PeopleTag.BROADCAST_TAG_CLICKED");
    }
}
