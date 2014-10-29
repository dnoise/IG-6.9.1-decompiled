// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.c;

import android.content.Context;
import android.net.Uri;
import com.instagram.common.l.a.f;
import com.instagram.creation.video.g.a.c;
import com.instagram.creation.video.g.a.d;

// Referenced classes of package com.instagram.creation.video.g.c:
//            c

public final class a
    implements d
{

    private d a;

    public a(Context context)
    {
        a = new com.instagram.creation.video.g.c.c(context);
    }

    public final c a(Uri uri)
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f.a(flag);
        return a.a(uri);
    }
}
