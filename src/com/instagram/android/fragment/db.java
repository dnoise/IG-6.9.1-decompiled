// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class db
    implements a
{

    final cr a;

    db(cr cr1)
    {
        a = cr1;
        super();
    }

    public final void a(Intent intent)
    {
        com.instagram.android.fragment.cr.a(a, intent.getBooleanExtra("com.instagram.android.activity.ARGUMENT_REFRESH_FORCE_LOAD", false));
    }
}
