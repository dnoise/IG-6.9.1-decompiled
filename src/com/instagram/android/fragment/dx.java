// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.os.Handler;
import android.widget.EditText;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.fragment:
//            du, dy, dz

final class dx extends j
{

    final du a;

    private dx(du du1)
    {
        a = du1;
        super();
    }

    dx(du du1, byte byte0)
    {
        this(du1);
    }

    private void c()
    {
        Toast.makeText(a.n(), az.thanks_for_feedback, 1).show();
        com.instagram.android.fragment.du.b(a).post(new dy(this));
    }

    public final void a()
    {
        f.a(a.l()).b(true);
    }

    public final void a(e e)
    {
        f.a(a.l()).b(false);
    }

    public final void a(Object obj)
    {
        c();
    }

    public final void b(e e)
    {
        du.c(a).setEnabled(true);
        du.a(a, (new b(a.n())).b(az.request_error).b(az.ok, new dz(this)).c());
        du.d(a).show();
    }
}
