// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.Context;
import com.instagram.common.y.e;
import java.io.File;
import java.util.UUID;

// Referenced classes of package com.instagram.common.analytics:
//            i

final class n
{

    public static File a(Context context)
    {
        return new File(context.getFilesDir(), "analytics");
    }

    public static String a(long l)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Double.valueOf((double)l / 1000D);
        return e.a("%.3f", aobj);
    }

    public static String a(i j)
    {
        Object aobj[] = new Object[2];
        aobj[0] = j.c().toString();
        aobj[1] = Integer.valueOf(j.d());
        return e.a("%s_%d.batch", aobj);
    }
}
