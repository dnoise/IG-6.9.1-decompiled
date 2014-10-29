// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.app.Dialog;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.ui.dialog.b;
import com.instagram.user.c.i;

// Referenced classes of package com.instagram.android.d:
//            f, l, k, m

public final class j extends a
{

    final f a;

    protected j(f f1)
    {
        a = f1;
        super();
    }

    private void a(com.instagram.user.c.a a1)
    {
        if (a1 != null)
        {
            com.instagram.user.c.j.a().b(a1);
        }
        Toast.makeText(a.b.n(), az.profile_picture_changed, 0).show();
    }

    public final void a()
    {
        super.a();
        f.c(a).post(new l(this));
    }

    protected final void a(com.instagram.api.j.j j1)
    {
        (new b(a.b.l())).a(az.error).b(az.could_not_update_profile_picture).b(az.dismiss, new k(this)).c().show();
    }

    protected final volatile void a(Object obj)
    {
        a((com.instagram.user.c.a)obj);
    }

    public final void b()
    {
        super.b();
        f.c(a).post(new m(this));
    }
}
