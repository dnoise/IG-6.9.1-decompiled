// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Intent;
import android.view.View;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.feed.d:
//            k, b, l

final class i extends k
{

    final String a;
    final b b;

    i(String s, b b1)
    {
        a = s;
        b = b1;
        super();
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("Media.COMMENT_HASHTAG_CLICKED");
        intent.putExtra("Media.EXTRA_HASHTAG_NAME", a.toLowerCase().replace("#", ""));
        intent.putExtra("Media.EXTRA_MEDIA_ID", b.e().d());
        d.a(intent);
    }
}
