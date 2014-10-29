// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.Context;
import com.facebook.e.a.a;
import com.fasterxml.jackson.a.d;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import java.io.File;

// Referenced classes of package com.instagram.common.analytics:
//            n, i, j

final class k
{

    private final File a;

    public k(Context context)
    {
        a = com.instagram.common.analytics.n.a(context);
    }

    private void a()
    {
        if (!a.exists() && !a.mkdir())
        {
            com.facebook.e.a.a.a("AnalyticsStorage", "Unable to open analytics storage.");
        }
    }

    public final File a(i l)
    {
        a();
        File file = new File(a, com.instagram.common.analytics.n.a(l));
        if (file.exists() && !file.delete())
        {
            (new Object[1])[0] = file;
        }
        l.g();
        h h1 = com.instagram.common.n.a.a.createGenerator(file, d.a);
        com.instagram.common.analytics.j.a(l, h1);
        h1.close();
        return file;
    }
}
