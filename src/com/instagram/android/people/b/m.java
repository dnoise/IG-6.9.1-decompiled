// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.android.c.a.n;
import com.instagram.android.c.a.o;
import com.instagram.android.fragment.h;
import com.instagram.android.people.a.a;
import com.instagram.common.d.g;
import com.instagram.ui.d.b;
import com.instagram.user.c.i;
import com.instagram.user.c.j;
import java.util.Map;

// Referenced classes of package com.instagram.android.people.b:
//            n, o, p

public final class m extends h
{

    private String ae;
    private String af;
    private boolean ag;
    private boolean ah;
    private com.instagram.common.d.j ai;
    private com.instagram.common.d.h aj;

    public m()
    {
        ah = false;
    }

    private void a(o o1, boolean flag)
    {
        super.b(o1, flag);
        ah = true;
        at();
        if (l() != null && ag && u())
        {
            f.a(l()).b();
        }
    }

    static void a(m m1)
    {
        m1.c(true);
    }

    private a as()
    {
        return new a(this, Y());
    }

    private void at()
    {
        if (v_().getEmptyView() == null)
        {
            View view = LayoutInflater.from(n()).inflate(aw.photos_of_you_empty, (ViewGroup)E(), false);
            View view1 = view.findViewById(av.photos_of_you_empty_body);
            if (!ag)
            {
                view1.setVisibility(8);
            }
            ((ViewGroup)E()).addView(view);
            v_().setEmptyView(view);
        }
    }

    private void b(o o1, boolean flag)
    {
        super.a(o1, flag);
        if (o1.b() != null && o1.b().booleanValue())
        {
            com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
            if (a1.g().equals(ae))
            {
                a1.b(o1.b().booleanValue());
                j.a().b(a1);
            }
        }
    }

    public final void F()
    {
        super.F();
        Intent intent = new Intent("NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU");
        intent.putExtra("NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT", 0);
        ai.a(intent);
    }

    public final void H()
    {
        aj.c();
        super.H();
    }

    protected final com.instagram.android.feed.a.a X()
    {
        return as();
    }

    protected final int Y()
    {
        return com.instagram.android.feed.a.h.b;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        ae = j().getString("user_id");
        af = j().getString("username");
        ag = com.instagram.service.a.a.a().b().g().equals(ae);
        ((a)W()).a(ag);
        ai = new com.instagram.common.d.j(n());
        aj = ai.a().a("com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED", new com.instagram.android.people.b.n(this)).a();
        aj.b();
        c(true);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        if (ah)
        {
            at();
        } else
        if (!((a)W()).m())
        {
            com.instagram.ui.d.b.a(true, E());
            return;
        }
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(true);
        String s;
        if (ag)
        {
            s = c(az.photos_of_you);
        } else
        {
            int k = az.photos_of_user;
            Object aobj[] = new Object[1];
            aobj[0] = af;
            s = a(k, aobj);
        }
        b1.a(s);
        b1.a(new com.instagram.android.people.b.o(this));
        if (ag && ah)
        {
            b1.a(com.instagram.a.i.b, new p(this));
        }
    }

    protected final void a(com.instagram.feed.a.i k, boolean flag)
    {
        b((o)k, flag);
    }

    protected final void a(Map map)
    {
        map.put("src", "tagged");
        map.put("userId", ae);
    }

    protected final void aa()
    {
        super.aa();
        com.instagram.ui.d.b.a(false, E());
    }

    protected final boolean ai()
    {
        return false;
    }

    protected final void b(com.instagram.feed.a.i k, boolean flag)
    {
        a((o)k, flag);
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        return new n(af(), flag, ae);
    }

    public final String j_()
    {
        return "feed_photos_of_you";
    }

    public final void n_()
    {
        c(false);
    }
}
