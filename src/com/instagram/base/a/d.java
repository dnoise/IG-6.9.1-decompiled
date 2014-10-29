// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a;

import android.content.DialogInterface;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.b.c.a;
import com.instagram.common.analytics.g;

// Referenced classes of package com.instagram.base.a:
//            a

public abstract class d extends com.instagram.base.a.a
    implements g
{

    public d()
    {
    }

    public void F()
    {
        super.F();
        a.a().a(this);
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        if (p() != null)
        {
            a.a().a(this, p().g(), "dialog_dismiss");
            android.support.v4.app.Fragment fragment = p().a(av.layout_container_main);
            if (fragment instanceof g)
            {
                a.a().a((g)fragment);
            }
        }
        super.onDismiss(dialoginterface);
    }
}
