// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.facebook.aq;
import com.facebook.av;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.l.a.c;
import com.instagram.android.util.b;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.android.widget.o;
import com.instagram.common.g.c.a;
import com.instagram.common.g.c.d;
import com.instagram.feed.c.p;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.a:
//            ah, s, t, q, 
//            n, o, p, r

public class m
    implements ah, d
{

    private static final Class a = com/instagram/android/feed/a/a/m;
    private final Fragment b;
    private final com.instagram.feed.g.a c;
    private final Animation d;
    private final Animation e;
    private final s f = new s(this, (byte)0);
    private q g;
    private r h;
    private c i;
    private int j;
    private l k;
    private ac l;
    private boolean m;
    private boolean n;
    private boolean o;
    private String p;

    public m(Fragment fragment, com.instagram.feed.g.a a1)
    {
        j = -1;
        k = null;
        n = true;
        o = true;
        b = fragment;
        c = a1;
        d = AnimationUtils.loadAnimation(b.n(), aq.cover_photo_fade_in);
        e = AnimationUtils.loadAnimation(b.n(), aq.cover_photo_fade_out);
    }

    static l a(m m1)
    {
        return m1.k;
    }

    static void a(m m1, String s1)
    {
        m1.a(true, true, s1);
    }

    private void a(l l1, int i1)
    {
        if (!b.u())
        {
            return;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString("LegacyVideoPlayerFragment.MEDIA_ID", l1.d());
            bundle.putInt("LegacyVideoPlayerFragement.POSITION", i1);
            (new b(b.p())).a(new t(), bundle).a();
            return;
        }
    }

    private void a(boolean flag, boolean flag1, String s1)
    {
        f.removeMessages(1);
        f.removeMessages(5);
        f.removeMessages(3);
        f.removeMessages(4);
        o = true;
        if (j != -1)
        {
            k().a();
            if (i.h())
            {
                com.instagram.feed.c.p.a(k, k().l(), k().n(), k().m(), j, n, c, p, s1);
            }
            if (flag)
            {
                f.sendEmptyMessage(2);
            } else
            {
                k().e();
            }
            com.instagram.common.g.c.a.a().a(k.a(b.n()), this);
            if (((Integer)l.a().getTag(av.key_list_position)).intValue() == j)
            {
                MediaActionsView mediaactionsview = l.d();
                if (flag1)
                {
                    mediaactionsview.setVideoIconState$736bb5a1(o.g);
                } else
                if (g != null && g.a(j))
                {
                    mediaactionsview.setVideoIconState$736bb5a1(o.b);
                } else
                {
                    mediaactionsview.setVideoIconState$736bb5a1(o.d);
                }
                l.a().clearAnimation();
                l.a().setVisibility(0);
            }
            l = null;
            j = -1;
            k = null;
            m = false;
        }
    }

    static boolean a(m m1, boolean flag)
    {
        m1.o = flag;
        return flag;
    }

    static int b(m m1)
    {
        return m1.j;
    }

    static com.instagram.feed.g.a c(m m1)
    {
        return m1.c;
    }

    static ac d(m m1)
    {
        return m1.l;
    }

    static boolean e(m m1)
    {
        return m1.n;
    }

    static String f(m m1)
    {
        return m1.p;
    }

    static Animation g(m m1)
    {
        return m1.e;
    }

    static boolean h(m m1)
    {
        return m1.m;
    }

    static s i(m m1)
    {
        return m1.f;
    }

    static c j(m m1)
    {
        return m1.k();
    }

    static Class j()
    {
        return a;
    }

    static Animation k(m m1)
    {
        return m1.d;
    }

    private c k()
    {
        if (i == null)
        {
            if (com.instagram.creation.c.a.a())
            {
                i = new com.instagram.android.l.a.a();
            } else
            {
                i = new com.instagram.android.l.a.b();
            }
            i.a(new n(this));
            i.a(new com.instagram.android.feed.a.a.o(this));
            i.a(new com.instagram.android.feed.a.a.p(this));
        }
        return i;
    }

    public final int a(int i1, l l1)
    {
        if (l1.w() != com.instagram.model.a.a.b)
        {
            return o.a;
        }
        if (com.instagram.creation.c.a.a())
        {
            return o.d;
        }
        if (j == i1)
        {
            c c1 = k();
            if (!c1.k())
            {
                return o.c;
            }
            if (c1.h())
            {
                if (n)
                {
                    return o.a;
                } else
                {
                    return o.f;
                }
            }
            if (c1.j())
            {
                return o.d;
            } else
            {
                return o.e;
            }
        }
        if (g != null && g.a(i1))
        {
            return o.b;
        } else
        {
            return o.d;
        }
    }

    public final void a(int i1, l l1, ac ac1)
    {
        if (!o)
        {
            Class _tmp = a;
        } else
        {
            if (j != i1)
            {
                if (com.instagram.creation.c.a.a() && !(b instanceof t))
                {
                    a(l1, i1);
                    return;
                } else
                {
                    a(l1, ac1, i1, false);
                    return;
                }
            }
            if (k().k())
            {
                if (k().h())
                {
                    com.instagram.feed.c.p.a(l1, k().l(), k().n(), k().m(), i1, n, c, p, "tapped");
                    k().g();
                    l.d().a(o.e);
                    return;
                }
                if (!k().i())
                {
                    l.a().startAnimation(e);
                }
                MediaActionsView mediaactionsview = l.d();
                int j1;
                if (n)
                {
                    j1 = o.a;
                } else
                {
                    j1 = o.f;
                }
                mediaactionsview.a(j1);
                f.removeMessages(4);
                if (k().i())
                {
                    com.instagram.feed.c.p.a(k, k().l(), k().m(), i1, n, c, "tapped");
                } else
                {
                    p = "tapped";
                    com.instagram.feed.c.p.a(k, i1, n, c, "tapped");
                }
                k().d();
                return;
            }
        }
    }

    public final void a(q q1)
    {
        g = q1;
    }

    public final void a(r r1)
    {
        h = r1;
    }

    public final void a(l l1, ac ac1, int i1, boolean flag)
    {
        if (b.u())
        {
            a(false, false, "scroll");
            a a1;
            if (flag)
            {
                p = "autoplay";
                com.instagram.feed.c.p.a(l1, c);
            } else
            {
                p = "tapped";
            }
            l = ac1;
            j = i1;
            k = l1;
            m = flag;
            n = com.instagram.l.b.a.a().v();
            k().a((FrameLayout)l.a().getParent());
            a1 = com.instagram.common.g.c.a.a();
            if (l1.x())
            {
                f.sendMessage(f.obtainMessage(5, l1.y()));
            } else
            {
                a1.a(l1.a(b.n()), true, this);
            }
            if (h != null)
            {
                h.e(i1);
                return;
            }
        }
    }

    public final boolean a()
    {
        return j == -1;
    }

    public final int b()
    {
        return j;
    }

    public final l c()
    {
        return k;
    }

    public final void d()
    {
        n = true;
        k().a(1.0F, 1.0F);
        l.d().setVideoIconState$736bb5a1(o.a);
        com.instagram.feed.c.p.a(k, j, c);
    }

    public final void e()
    {
        l.d().setVideoIconState$736bb5a1(o.c);
    }

    public final void f()
    {
        f.a(k.a(b.n()));
    }

    public final void g()
    {
        a(true, true, "error");
    }

    public final void h()
    {
        a(true, false, "scroll");
    }

    public final void i()
    {
        if (i != null)
        {
            a(false, false, "scroll");
            i.f();
            i = null;
        }
    }

}
