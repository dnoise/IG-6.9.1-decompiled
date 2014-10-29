// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Intent;
import android.view.View;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.feed.d:
//            k, l

final class ab extends k
{

    final l a;

    ab(l l1)
    {
        a = l1;
        super(true);
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("Media.NUMBER_LIKES_CLICKED");
        intent.putExtra("Media.EXTRA_MEDIA_ID", a.d());
        d.a(intent);
    }
}
