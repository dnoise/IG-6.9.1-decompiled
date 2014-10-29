// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.app.Dialog;
import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.creation.a:
//            ar, av, aw

final class au extends a
{

    final ar a;

    au(ar ar1)
    {
        a = ar1;
        super();
    }

    private void c()
    {
        Toast.makeText(a.n(), az.sharing_succeeded, 0).show();
        ar.e(a).post(new av(this));
    }

    public final void a()
    {
        f.a(a.l()).b(true);
    }

    protected final void a(j j)
    {
        f.a(a.l()).b(false);
        (new b(a.n())).a(az.sharing).b(az.request_error).b(az.dismiss, new aw(this)).c().show();
    }

    protected final void a(Object obj)
    {
        c();
    }
}
