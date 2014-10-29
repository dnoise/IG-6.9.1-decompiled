// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import com.instagram.share.a.a;

// Referenced classes of package com.instagram.share.f:
//            a

final class b extends a
{

    final com.instagram.share.f.a a;

    b(String s, com.instagram.share.f.a a1)
    {
        a = a1;
        super(s);
    }

    protected final void a(com.instagram.common.a.c.b b1)
    {
        b1.a("twitter_access_token_key", a.e());
        b1.a("twitter_access_token_secret", a.f());
        b1.a("twitter_username", a.g());
        b1.a("share_to_twitter", "1");
    }
}
