// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import com.instagram.android.feed.a.n;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.fragment:
//            el

final class em
    implements a
{

    final el a;

    em(el el1)
    {
        a = el1;
        super();
    }

    public final void a(Intent intent)
    {
        ((n)a.W()).i(intent.getIntExtra("NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT", 0));
    }
}
