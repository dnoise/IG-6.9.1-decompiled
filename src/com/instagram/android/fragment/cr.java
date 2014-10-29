// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ListView;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.e.c.k;
import com.instagram.android.c.a.f;
import com.instagram.android.directshare.c.t;
import com.instagram.android.feed.a.l;
import com.instagram.android.feed.e.d;
import com.instagram.base.b.a;
import com.instagram.base.b.b;
import com.instagram.common.a.a.o;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.c.e;
import com.instagram.feed.a.c;
import com.instagram.feed.a.g;
import com.instagram.feed.a.i;
import com.instagram.feed.survey.q;
import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.fragment:
//            h, cw, dd, dg, 
//            dc, cu, ct, fx, 
//            df, cv, db, da, 
//            cz, cy, de, cs, 
//            cx, cd

public final class cr extends com.instagram.android.fragment.h
    implements d, a, com.instagram.feed.e.a
{

    private static final com.instagram.common.y.c.d ae = com.instagram.common.y.c.e.a().a("mainfeed").c();
    private static boolean af;
    private boolean ag;
    private boolean ah;
    private boolean ai;
    private String aj;
    private HashSet ak;
    private com.instagram.o.b.a al;
    private q am;
    private com.instagram.android.feed.e.a an;
    private com.instagram.ui.e.a ao;
    private h ap;
    private View aq;
    private Handler ar;
    private o as;
    private b at;
    private final com.facebook.b.e au = new cw(this);

    public cr()
    {
        ar = new Handler();
        at = new b();
    }

    static View a(cr cr1)
    {
        return cr1.aq;
    }

    static String a(cr cr1, String s)
    {
        cr1.aj = s;
        return s;
    }

    static void a(cr cr1, File file, long l1)
    {
        cr1.a(file, l1);
    }

    static void a(cr cr1, boolean flag)
    {
        cr1.e(flag);
    }

    private void a(c c1, boolean flag)
    {
        super.b(c1, flag);
        if (flag)
        {
            a(c1.t());
        }
        String s;
        if (c1.e() != null)
        {
            am.b(c1.e());
        } else
        if (c1.f() != null)
        {
            am.b(c1.f());
        }
        if (!ag)
        {
            if (E() != null)
            {
                b((ViewGroup)E());
            }
            t t1 = t.a();
            if (!t1.b())
            {
                t1.i();
            }
            com.instagram.j.e.a a1 = com.instagram.j.e.a.a();
            if (!a1.d())
            {
                a1.b();
            }
            ag = true;
        }
        if (c1.t().isEmpty())
        {
            s = null;
        } else
        {
            s = ((com.instagram.feed.d.l)c1.t().get(0)).f();
        }
        aj = s;
        ((l)W()).a(c1.d());
        k.a("feedFetchEnd");
    }

    private void a(File file, long l1)
    {
        com.fasterxml.jackson.a.l l2 = null;
        c c1;
        l2 = com.instagram.common.n.a.a.createParser(file);
        l2.nextToken();
        c1 = g.a(l2);
        com.instagram.common.l.c.a.a(l2);
        if (c1 != null && c1.t() != null && c1.t().size() > 0)
        {
            ar.postDelayed(new dd(this, c1), Math.max(0L, 500L - (SystemClock.elapsedRealtime() - l1)));
        }
        return;
        Exception exception;
        exception;
        com.instagram.common.l.c.a.a(l2);
        throw exception;
    }

    private void a(List list)
    {
        ae.execute(new dg(aj, list));
    }

    private l aA()
    {
        return new l(this, Y());
    }

    private static boolean aB()
    {
        boolean flag = af;
        af = false;
        return flag;
    }

    public static void as()
    {
        af = true;
    }

    private boolean aw()
    {
        return aa != null && Math.abs((new Date()).getTime() - aa.longValue()) > 0x493e0L;
    }

    private void ax()
    {
        if (!ai)
        {
            ai = true;
            long l1 = SystemClock.elapsedRealtime();
            com.instagram.common.y.c.a.a().execute(new dc(this, l1));
        }
    }

    private void ay()
    {
        az();
        E().findViewById(av.button_find_friends).setOnClickListener(new cu(this));
    }

    private void az()
    {
        Button button;
label0:
        {
            button = (Button)E().findViewById(av.button_find_friends);
            if (button != null)
            {
                com.facebook.b.b b1 = com.instagram.share.b.a.a();
                com.instagram.share.vkontakte.a a1 = com.instagram.share.vkontakte.a.a();
                if (!b1.b() && a1 == null)
                {
                    break label0;
                }
                button.setText(az.find_friends_to_follow);
            }
            return;
        }
        if (com.instagram.share.vkontakte.a.a(n()))
        {
            button.setText(az.find_vkontakte_friends);
            return;
        } else
        {
            button.setText(az.find_facebook_friends);
            return;
        }
    }

    static com.instagram.ui.e.a b(cr cr1)
    {
        return cr1.ao;
    }

    public static File b(Context context)
    {
        return new File(context.getCacheDir(), "MainFeed.json");
    }

    private void b(ViewGroup viewgroup)
    {
        ViewStub viewstub = new ViewStub(n(), aw.nux_main_feed_empty);
        viewstub.setOnInflateListener(new ct(this));
        viewgroup.addView(viewstub);
        ((ListView)viewgroup.findViewById(0x102000a)).setEmptyView(viewstub);
    }

    static void b(cr cr1, String s)
    {
        cr1.c(s);
    }

    private void b(c c1, boolean flag)
    {
        com.instagram.feed.d.l l1;
        com.instagram.feed.d.l l2;
        super.a(c1, flag);
        com.instagram.feed.a.e e1 = c1.d();
        if (e1 != null)
        {
            Context context = com.instagram.common.h.a.a();
            List list;
            Iterator iterator;
            if (e1.a() != null)
            {
                c(com.instagram.feed.f.d.b);
            } else
            if (e1.b() != null)
            {
                av().clear();
                c(com.instagram.feed.f.d.c);
            } else
            if (e1.c() != null)
            {
                if (!com.instagram.common.y.d.a.a(context.getPackageManager()))
                {
                    as.a((new f(com.instagram.feed.f.d.a, com.instagram.android.c.a.g.d)).a("play_store_unavailable"));
                } else
                if (com.instagram.common.y.d.a.a(context.getPackageManager(), "com.instagram.bolt"))
                {
                    as.a((new f(com.instagram.feed.f.d.a, com.instagram.android.c.a.g.d)).a("pepper_installed"));
                } else
                {
                    c(com.instagram.feed.f.d.a);
                }
            }
        }
        list = c1.t();
        l1 = null;
        if (list == null) goto _L2; else goto _L1
_L1:
        iterator = c1.t().iterator();
_L3:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        l2 = (com.instagram.feed.d.l)iterator.next();
        if (!l2.aa())
        {
            break MISSING_BLOCK_LABEL_310;
        }
        com.instagram.feed.c.g.b("delivery", l2, this);
        if (com.instagram.feed.g.b.a().a(l2))
        {
            com.instagram.feed.c.g.a(l2);
        }
        if (l1 != null || !flag)
        {
            break MISSING_BLOCK_LABEL_310;
        }
_L4:
        l1 = l2;
        if (true) goto _L3; else goto _L2
_L2:
        if (l1 != null)
        {
            com.instagram.l.b.a a1 = com.instagram.l.b.a.a();
            String s = l1.d();
            boolean flag1;
            if (!l1.d().equals(a1.C()))
            {
                flag1 = false;
            } else
            {
                flag1 = a1.D();
            }
            a1.a(s, flag1);
        }
        return;
        l2 = l1;
          goto _L4
    }

    private void b(String s)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s, null, false, false).a();
    }

    static void c(cr cr1)
    {
        cr1.ay();
    }

    static void c(cr cr1, String s)
    {
        cr1.b(s);
    }

    private void c(com.instagram.feed.f.d d1)
    {
        as.a(new f(d1, com.instagram.android.c.a.g.a));
    }

    private void c(String s)
    {
        new fx();
        com.instagram.android.fragment.fx.a(p(), s, null, false).a();
    }

    static boolean d(cr cr1)
    {
        cr1.ah = true;
        return true;
    }

    static com.facebook.b.e e(cr cr1)
    {
        return cr1.au;
    }

    private void e(boolean flag)
    {
        if (!com.instagram.creation.b.c.a.a() && (flag || aw()))
        {
            c(true);
        }
    }

    public final void F()
    {
        super.F();
        k.b("%s#%s", new Object[] {
            "MainFeedFragment", "onResume"
        });
        an.b();
        if (al != null)
        {
            al.b();
        }
        am.a();
        az();
        if (aB())
        {
            s_();
        }
        if (ah)
        {
            e(true);
            ah = false;
        }
        b b1 = at;
        df df1 = new df(this);
        float f1 = o().getDimensionPixelSize(at.action_bar_height);
        View aview[] = new View[1];
        aview[0] = com.instagram.a.f.a(l()).c();
        b1.a(df1, f1, aview);
    }

    public final void G()
    {
        super.G();
        aq = null;
        an.a();
        am.b();
        at.a();
    }

    public final void H()
    {
        super.H();
        ar.removeCallbacksAndMessages(null);
    }

    protected final com.instagram.android.feed.a.a X()
    {
        return aA();
    }

    public final void a(int i, int i1, Intent intent)
    {
        if (i1 == -1)
        {
            if (i == 5)
            {
                ar.post(new cv(this));
            } else
            {
                com.facebook.b.b b1 = com.instagram.share.b.a.a();
                b1.a(au);
                b1.a(i, i1, intent);
            }
        }
        super.a(i, i1, intent);
    }

    public final void a(Context context)
    {
        super.a(context);
        k.b("%s#%s", new Object[] {
            "MainFeedFragment", "onAttach"
        });
        ap = (new j(context)).a().a("com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED", new db(this)).a("PendingMediaManager.BROADCAST_INTENT_CHECKPOINT_REQUIRED", new da(this)).a("INTENT_ACTION_UPDATE_INBOX_BADGE", new cz(this)).a("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED", new cy(this)).a();
        ap.b();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        as = new o();
        ao = com.instagram.ui.e.d.a();
        ((l)W()).registerDataSetObserver(new de(this));
        an = new com.instagram.android.feed.e.a(n(), com.instagram.creation.b.d.b.b, (com.instagram.android.feed.e.e)W(), this);
        k.a("feedFetchStart");
        ax();
        c(true);
        if (com.instagram.o.b.a.a())
        {
            al = new com.instagram.o.b.a(n());
        }
        am = new q(l(), this, W());
    }

    public final void a(View view, Bundle bundle)
    {
        if (com.instagram.base.b.b.a(this))
        {
            at.a((ListView)view.findViewById(0x102000a), o().getDimensionPixelSize(at.action_bar_height));
        }
        super.a(view, bundle);
        if (ag)
        {
            b((ViewGroup)E());
        }
        ao.a(E(), (new StringBuilder("feed_")).append(j_()).toString());
        ao.a(E(), com.instagram.ui.e.b.b);
    }

    public final void a(com.instagram.a.b b1)
    {
        super.a(b1);
        b1.b(aw.action_bar_title_logo);
        aq = b1.a(aw.action_bar_button_inbox, new cs(this));
        com.instagram.android.directshare.f.c.a(aq);
    }

    protected final void a(i i, boolean flag)
    {
        b((c)i, flag);
    }

    public final void a(com.instagram.feed.f.d d1)
    {
        com.instagram.android.fragment.cx.a[d1.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 55
    //                   2 55
    //                   3 82;
           goto _L1 _L2 _L2 _L3
_L1:
        as.a(new f(d1, com.instagram.android.c.a.g.b));
        return;
_L2:
        (new com.instagram.base.a.a.a(p())).a(new cd()).a();
        continue; /* Loop/switch isn't completed */
_L3:
        Intent intent = com.instagram.common.y.d.a.a(Uri.parse("market://details"), "com.instagram.bolt");
        intent.setFlags(0x10000000);
        a(intent);
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void a(com.instagram.feed.f.d d1, com.instagram.user.d.a a1)
    {
        switch (com.instagram.android.fragment.cx.a[d1.ordinal()])
        {
        default:
            return;

        case 2: // '\002'
            as.a(new com.instagram.android.feed.b.a.a(a1));
            break;
        }
    }

    public final void a(com.instagram.feed.f.d d1, String s)
    {
        switch (com.instagram.android.fragment.cx.a[d1.ordinal()])
        {
        default:
            return;

        case 2: // '\002'
            com.instagram.o.f.f.a().a(p(), s).a();
            break;
        }
    }

    public final void a(String s)
    {
        (new com.instagram.c.a(l())).a();
    }

    public final void a(Map map)
    {
        map.put("src", "timeline");
    }

    public final boolean ad()
    {
        return !com.instagram.l.b.a.a().v();
    }

    public final boolean ag()
    {
        return false;
    }

    protected final boolean ak()
    {
        return true;
    }

    public final b at()
    {
        return at;
    }

    public final void au()
    {
    }

    public final HashSet av()
    {
        if (ak == null)
        {
            ak = new HashSet();
        }
        return ak;
    }

    protected final void b(i i, boolean flag)
    {
        a((c)i, flag);
    }

    public final void b(com.instagram.feed.f.d d1)
    {
        com.instagram.android.fragment.cx.a[d1.ordinal()];
        JVM INSTR tableswitch 2 3: default 32
    //                   2 51
    //                   3 51;
           goto _L1 _L2 _L2
_L1:
        as.a(new f(d1, com.instagram.android.c.a.g.c));
        return;
_L2:
        ((l)W()).a(d1);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        com.instagram.feed.f.a a1 = af();
        File file;
        if (flag)
        {
            file = b(n());
        } else
        {
            file = null;
        }
        return new com.instagram.feed.a.b(a1, flag, file);
    }

    public final String j_()
    {
        return "feed_timeline";
    }

    public final void m_()
    {
        super.m_();
        ao.a(E());
    }

    public final void n_()
    {
        aB();
        super.n_();
    }

    public final boolean p_()
    {
        return true;
    }

    public final void r_()
    {
        super.r_();
        ap.c();
    }

}
