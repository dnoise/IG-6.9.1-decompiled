// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.facebook.e.a.a;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class dc
    implements Runnable
{

    final long a;
    final cr b;

    dc(cr cr1, long l)
    {
        b = cr1;
        a = l;
        super();
    }

    public final void run()
    {
        File file;
        file = cr.b(b.l());
        if (!file.exists())
        {
            break MISSING_BLOCK_LABEL_30;
        }
        com.instagram.android.fragment.cr.a(b, file, a);
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("MainFeedFragment", "Error reading from cached file.");
        return;
    }
}
