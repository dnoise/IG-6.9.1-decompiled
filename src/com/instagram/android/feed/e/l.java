// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.instagram.android.fragment.cf;
import com.instagram.android.fragment.fx;
import com.instagram.base.a.a.a;
import com.instagram.feed.d.ad;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

// Referenced classes of package com.instagram.android.feed.e:
//            k

final class l extends BroadcastReceiver
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ("Media.COMMENT_MENTION_CLICKED".equals(intent.getAction()))
        {
            com.instagram.android.feed.e.k.a(intent, "tag", com.instagram.android.feed.e.k.a(a));
            f.a().b(k.b(a).p(), intent.getStringExtra("Media.EXTRA_USERNAME")).b("user_mention").a();
        } else
        {
            if ("Media.COMMENT_HASHTAG_CLICKED".equals(intent.getAction()))
            {
                com.instagram.android.feed.e.k.a(intent, "hashtag", com.instagram.android.feed.e.k.a(a));
                cf.a(k.b(a).n(), intent.getStringExtra("Media.EXTRA_HASHTAG_NAME"), k.b(a).p(), "media_hashtag");
                return;
            }
            if ("Media.NUMBER_LIKES_CLICKED".equals(intent.getAction()))
            {
                com.instagram.android.feed.e.k.a(intent, "number_of_likes", com.instagram.android.feed.e.k.a(a));
                com.instagram.feed.d.l l2 = ad.a().b(intent.getStringExtra("Media.EXTRA_MEDIA_ID"));
                new fx();
                fx.a(k.b(a).p(), context, l2).b("media_likes").a();
                return;
            }
            if ("Media.USER_CLICKED".equals(intent.getAction()))
            {
                com.instagram.android.feed.e.k.a(intent, com.instagram.android.feed.e.k.a(a));
                f.a().a(k.b(a).p(), intent.getStringExtra("Media.EXTRA_USER_ID")).b(intent.getStringExtra("Media.EXTRA_CLICK_POINT")).a();
                return;
            }
            if ("Media.NUMBER_COMMENTS_CLICKED".equals(intent.getAction()))
            {
                com.instagram.android.feed.e.k.a(intent, "number_of_comments", com.instagram.android.feed.e.k.a(a));
                String s2 = intent.getStringExtra("Media.EXTRA_MEDIA_ID");
                f.a().a(k.b(a).p(), ad.a().b(s2), false, com.instagram.android.feed.e.k.a(a).p_(), com.instagram.android.feed.e.k.a(a).V()).a();
                return;
            }
            if ("PeopleTag.BROADCAST_TAG_CLICKED".equals(intent.getAction()))
            {
                String s = intent.getStringExtra("PeopleTag.INTENT_EXTRA_USER_ID");
                String s1 = intent.getStringExtra("PeopleTag.INTENT_EXTRA_MEDIA_ID");
                com.instagram.feed.d.l l1 = ad.a().b(s1);
                if (s.equals(com.instagram.service.a.a.a().b().g()))
                {
                    com.instagram.android.people.c.a.a(k.b(a).n(), k.b(a).z(), l1);
                    return;
                } else
                {
                    f.a().a(k.b(a).p(), s).a();
                    return;
                }
            }
        }
    }
}
