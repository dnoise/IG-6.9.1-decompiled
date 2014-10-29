// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.net.Uri;
import android.os.Bundle;
import com.instagram.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            cf

final class ch extends a
{

    final cf a;

    ch(cf cf1, com.instagram.feed.f.a a1, boolean flag)
    {
        a = cf1;
        super(a1, flag);
    }

    protected final String e()
    {
        String s = a.j().getString("HashtagFeedFragment.ARGUMENT_TAG_NAME");
        Object aobj[] = new Object[1];
        aobj[0] = Uri.encode(s);
        return String.format("feed/tag/%s/", aobj);
    }
}
