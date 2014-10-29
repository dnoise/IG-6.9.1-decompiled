// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.DialogInterface;
import com.facebook.bo;

// Referenced classes of package com.facebook.widget:
//            d

final class e
    implements android.content.DialogInterface.OnClickListener
{

    final bo a;
    final d b;

    e(d d, bo bo1)
    {
        b = d;
        a = bo1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.f();
    }
}
