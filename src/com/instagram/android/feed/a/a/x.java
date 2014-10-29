// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.View;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.common.a.a.g;
import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.feed.d.l;
import com.instagram.service.a.a;
import com.instagram.ui.dialog.b;
import com.instagram.user.c.f;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.feed.a.a:
//            aa, y

public final class x
{

    private final Fragment a;
    private final Context b;
    private final s c;
    private final an d;
    private final com.instagram.feed.g.a e;
    private final com.instagram.android.feed.a.a f;
    private final View g;
    private final l h;
    private final int i;
    private final k j = new o();
    private final g k;
    private Dialog l;
    private CharSequence m[];
    private final Handler n = new Handler();

    public x(Fragment fragment, com.instagram.feed.g.a a1, com.instagram.android.feed.a.a a2, View view, l l1, int i1)
    {
        m = null;
        a = fragment;
        b = fragment.n();
        c = fragment.p();
        d = fragment.z();
        e = a1;
        f = a2;
        h = l1;
        g = view;
        i = i1;
        k = new g(b, d);
    }

    static Dialog a(x x1)
    {
        x1.l = null;
        return null;
    }

    private CharSequence[] b()
    {
        if (m != null) goto _L2; else goto _L1
_L1:
        Resources resources;
        ArrayList arraylist;
        resources = b.getResources();
        arraylist = new ArrayList();
        if (!com.instagram.feed.c.g.b(h, e)) goto _L4; else goto _L3
_L3:
        arraylist.add(resources.getString(az.starred_hide_this));
        arraylist.add(resources.getString(az.learn_more));
_L6:
        m = new CharSequence[arraylist.size()];
        arraylist.toArray(m);
_L2:
        return m;
_L4:
        com.instagram.user.c.a a1;
        a1 = com.instagram.service.a.a.a().b();
        if (!c())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(resources.getString(az.share));
        arraylist.add(resources.getString(az.delete_media));
        if (h.w() == com.instagram.model.a.a.a)
        {
            arraylist.add(resources.getString(az.add_people));
        }
_L7:
        if (c() || h.c().s() == f.b)
        {
            arraylist.add(resources.getString(az.copy_share_url));
        }
        if (!c() && a1.h())
        {
            arraylist.add(resources.getString(az.flag_reason_remove_from_popular));
        }
        if (true) goto _L6; else goto _L5
_L5:
        arraylist.add(resources.getString(az.report_inappropriate));
        if (h.a(com.instagram.service.a.a.a().b()))
        {
            arraylist.add(resources.getString(az.photo_options));
        }
          goto _L7
        if (true) goto _L6; else goto _L8
_L8:
    }

    static CharSequence[] b(x x1)
    {
        return x1.b();
    }

    static Context c(x x1)
    {
        return x1.b;
    }

    private boolean c()
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        return a1 != null && h.c().g().equals(a1.g());
    }

    static l d(x x1)
    {
        return x1.h;
    }

    private void d()
    {
        int i1;
        if (h.w() == com.instagram.model.a.a.a)
        {
            i1 = az.share_url_has_been_copied;
        } else
        {
            i1 = az.video_share_url_has_been_copied;
        }
        Toast.makeText(b, i1, 1).show();
    }

    static k e(x x1)
    {
        return x1.j;
    }

    static s f(x x1)
    {
        return x1.c;
    }

    static int g(x x1)
    {
        return x1.i;
    }

    static com.instagram.feed.g.a h(x x1)
    {
        return x1.e;
    }

    static an i(x x1)
    {
        return x1.d;
    }

    static g j(x x1)
    {
        return x1.k;
    }

    static com.instagram.android.feed.a.a k(x x1)
    {
        return x1.f;
    }

    static View l(x x1)
    {
        return x1.g;
    }

    static Fragment m(x x1)
    {
        return x1.a;
    }

    static Handler n(x x1)
    {
        return x1.n;
    }

    static void o(x x1)
    {
        x1.d();
    }

    public final void a()
    {
        com.instagram.feed.c.g.a("action_menu", h, i, e);
        l = (new b(b)).a(b(), new aa(this, (byte)0)).a(true).d().c();
        l.setOnDismissListener(new y(this));
        l.show();
    }
}
