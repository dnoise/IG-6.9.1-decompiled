// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.instagram.common.g.a.d;
import com.instagram.common.p.b.a;
import java.io.File;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.g.b:
//            q, p

public class o
    implements a
{

    private static final Class a = com/instagram/common/g/b/o;
    private final Context b;
    private final String c = null;

    public o(Context context)
    {
        b = context;
    }

    static Class d()
    {
        return a;
    }

    public final void a()
    {
        SharedPreferences sharedpreferences = b.getSharedPreferences("image_cache_prefs", 0);
        if (sharedpreferences.getInt("format_version", 0) == 0)
        {
            com.instagram.common.y.c.a.a().execute(new q(this, sharedpreferences));
        }
    }

    public final void b()
    {
    }

    public final void c()
    {
        int i = 0;
        File file = com.instagram.common.g.a.d.a(b, c, false);
        if (file.exists())
        {
            File afile[] = file.listFiles(new p(this));
            for (int j = afile.length; i < j; i++)
            {
                afile[i].delete();
            }

        }
    }

}
