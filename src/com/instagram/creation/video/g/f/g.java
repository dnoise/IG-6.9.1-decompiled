// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import com.instagram.common.l.a.f;

// Referenced classes of package com.instagram.creation.video.g.f:
//            i, h

public final class g
{

    private com.instagram.creation.video.g.b.g a;

    public g(com.instagram.creation.video.g.b.g g1)
    {
        a = g1;
    }

    public final h a()
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.a(flag);
        return new i(a);
    }
}
