// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.common.a.a.k;
import com.instagram.share.b.a;
import com.instagram.ui.dialog.b;
import com.instagram.ui.menu.d;
import com.instagram.ui.menu.e;
import com.instagram.ui.menu.g;
import com.instagram.ui.menu.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            bb, ay, az, ax

public class aw extends e
    implements c
{

    private static final Class i = com/instagram/android/fragment/aw;
    private com.instagram.android.c.b.e aa;
    private final bb ab = new bb(this, (byte)0);
    private List ac;
    private k ad;
    private boolean ae;
    private boolean af;

    public aw()
    {
        ac = new ArrayList();
    }

    private void V()
    {
        b b1 = (new b(n())).a(az.error);
        int j = az.x_problems;
        Object aobj[] = new Object[1];
        aobj[0] = c(az.facebook);
        b1.a(a(j, aobj)).b(az.dismiss, null).c().show();
    }

    private void W()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new d(az.share_photos_to));
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new h(null, o().getString(az.share_photos_default)));
        com.instagram.share.b.h h1;
        for (Iterator iterator = ac.iterator(); iterator.hasNext(); arraylist1.add(new h(h1.a(), h1.b())))
        {
            h1 = (com.instagram.share.b.h)iterator.next();
        }

        arraylist.add(new g(arraylist1, com.instagram.share.b.a.i().a(), new ay(this)));
        arraylist.add(new com.instagram.ui.menu.a(az.unlink, new com.instagram.android.fragment.az(this)));
        a(arraylist);
    }

    static List a(aw aw1, List list)
    {
        aw1.ac = list;
        return list;
    }

    static void a(aw aw1)
    {
        aw1.W();
    }

    static boolean a(aw aw1, boolean flag)
    {
        aw1.ae = flag;
        return flag;
    }

    static void b(aw aw1)
    {
        aw1.V();
    }

    static List c(aw aw1)
    {
        return aw1.ac;
    }

    static com.instagram.android.c.b.e d(aw aw1)
    {
        return aw1.aa;
    }

    static Class d()
    {
        return i;
    }

    static k e(aw aw1)
    {
        return aw1.ad;
    }

    public final void a(int j, int l, Intent intent)
    {
        if (l == -1)
        {
            com.instagram.share.b.a.a().a(j, l, intent);
        }
        super.a(j, l, intent);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        com.instagram.share.b.h h1 = com.instagram.share.b.a.i();
        if (!com.instagram.common.y.e.c(h1.c()))
        {
            ac.add(h1);
        }
        W();
        ad = new com.instagram.common.a.a.g(n(), z());
        aa = new com.instagram.android.c.b.e(com.instagram.share.b.a.a().c());
        aa.a(new ax(this));
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(a(az.x_options, new Object[] {
            "Facebook"
        }));
        b1.a(true);
        b1.a(ae, null);
        b1.b(ae);
    }

    public final String j_()
    {
        return "facebook_advanced_options";
    }

    public final void k_()
    {
        super.k_();
        if (com.instagram.share.b.a.j())
        {
            ad.a(aa);
        } else
        if (!af)
        {
            af = true;
            com.instagram.share.b.a.a().a(this, com.instagram.share.b.g.d, ab);
            return;
        }
    }

}
