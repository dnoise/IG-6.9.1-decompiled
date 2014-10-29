// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import com.instagram.creation.b.d.a;

// Referenced classes of package com.instagram.creation.video.f:
//            y

final class z
    implements Runnable
{

    final y a;

    z(y y1)
    {
        a = y1;
        super();
    }

    public final void run()
    {
        String s = a.j().getString("pendingMediaKey");
        com.instagram.creation.video.f.y.a(a, com.instagram.creation.b.d.a.a().a(s));
    }
}
