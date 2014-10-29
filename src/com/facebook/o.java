// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ActivityNotFoundException;
import android.content.Intent;

// Referenced classes of package com.facebook:
//            j, c, u

abstract class o extends j
{

    final c b;

    o(c c1)
    {
        b = c1;
        super(c1);
    }

    protected final boolean a(Intent intent, int i)
    {
        if (intent == null)
        {
            return false;
        }
        try
        {
            b.c().a(intent, i);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return false;
        }
        return true;
    }
}
