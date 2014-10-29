// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.instagram.creation.video.a;
import com.instagram.creation.video.ui.CamcorderBlinker;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class d
    implements Runnable
{

    final List a;
    final com.instagram.creation.video.f.a b;

    d(com.instagram.creation.video.f.a a1, List list)
    {
        b = a1;
        a = list;
        super();
    }

    public final void run()
    {
        try
        {
            com.instagram.creation.video.f.a.b(b).a(a);
            com.instagram.creation.video.f.a.x(b).a();
            return;
        }
        catch (Exception exception)
        {
            com.instagram.creation.video.f.a.r(b);
        }
    }
}
