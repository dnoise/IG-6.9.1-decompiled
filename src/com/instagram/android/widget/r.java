// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Intent;
import com.facebook.b.b;
import com.facebook.b.e;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.widget:
//            x

public final class r
{

    private static x a(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
            return com.instagram.android.widget.x.b;

        case 2: // '\002'
            return x.c;

        case 3: // '\003'
            return x.d;

        case 4: // '\004'
            return com.instagram.android.widget.x.e;

        case 5: // '\005'
            return x.f;
        }
    }

    public static void a(int i, int j, Intent intent, e e, com.instagram.model.a.b b1)
    {
        if (j == -1)
        {
            x x1 = a(i);
            if (x1 == null)
            {
                b b2 = com.instagram.share.b.a.a();
                b2.a(e);
                b2.a(i, j, intent);
            } else
            if (x1.c())
            {
                x1.a(b1, true);
                return;
            }
        }
    }
}
