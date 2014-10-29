// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Bundle;
import com.instagram.creation.b.d.a;

// Referenced classes of package com.instagram.android.creation.a:
//            ax

final class ay
    implements Runnable
{

    final ax a;

    ay(ax ax1)
    {
        a = ax1;
        super();
    }

    public final void run()
    {
        String s = a.j().getString("pendingMediaKey");
        com.instagram.android.creation.a.ax.a(a, com.instagram.creation.b.d.a.a().a(s));
    }
}
