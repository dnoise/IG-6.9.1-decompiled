// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.os.Bundle;
import com.facebook.az;
import com.instagram.base.a.a;

// Referenced classes of package com.instagram.ui.dialog:
//            h, f

public class g extends a
{

    private final android.content.DialogInterface.OnKeyListener aa = new h(this);

    public g()
    {
    }

    public static g W()
    {
        return new g();
    }

    private f X()
    {
        return new f(l());
    }

    protected String V()
    {
        return c(az.loading);
    }

    public final Dialog c(Bundle bundle)
    {
        f f1 = X();
        f1.a(V());
        f1.setCancelable(false);
        f1.setOnKeyListener(aa);
        return f1;
    }
}
