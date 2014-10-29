// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.os.Bundle;
import com.instagram.feed.a.a;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class f extends a
{

    final com.instagram.android.feed.comments.a.a a;

    f(com.instagram.android.feed.comments.a.a a1)
    {
        a = a1;
        super();
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.j().getString("CommentThreadFragment.MEDIA_ID");
        return String.format("media/%s/info/", aobj);
    }
}
