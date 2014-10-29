// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Bundle;
import android.support.v4.app.k;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.d.a;
import java.io.File;

// Referenced classes of package com.instagram.android.creation.a:
//            ah

final class ai
    implements Runnable
{

    final Bundle a;
    final ah b;

    ai(ah ah1, Bundle bundle)
    {
        b = ah1;
        a = bundle;
        super();
    }

    public final void run()
    {
        com.instagram.android.creation.a.ah.a(b, com.instagram.creation.b.d.a.a().a(b.j().getString("pendingMediaKey")));
        if (!(new File(com.instagram.android.creation.a.ah.a(b).k())).exists())
        {
            if (b.l() != null)
            {
                b.l().onBackPressed();
            }
            return;
        }
        if (com.instagram.android.creation.a.ah.a(b).n() == com.instagram.model.a.a.a)
        {
            com.instagram.android.creation.a.ah.a(b).d(b.j().getInt("originalWidth"));
            com.instagram.android.creation.a.ah.a(b).e(b.j().getInt("originalHeight"));
        }
        com.instagram.android.creation.a.ah.a(b, a);
    }
}
