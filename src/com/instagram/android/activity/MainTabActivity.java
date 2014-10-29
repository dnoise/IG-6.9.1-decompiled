// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.app.Dialog;
import android.app.LocalActivityManager;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.e;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Toast;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.directshare.c.c;
import com.instagram.android.fragment.cr;
import com.instagram.android.nux.SignedOutFragmentActivity;
import com.instagram.base.activity.tabactivity.IgTabHost;
import com.instagram.base.activity.tabactivity.IgTabWidget;
import com.instagram.base.activity.tabactivity.a;
import com.instagram.base.activity.tabactivity.h;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.u.b.i;
import com.instagram.j.c.g;
import com.instagram.k.f;
import com.instagram.m.j;
import com.instagram.strings.StringBridge;
import com.instagram.ui.widget.proxy.ProxyFrameLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.instagram.android.activity:
//            e, l, q, ActivityInTab, 
//            t, n, o, p, 
//            r, c, s, m, 
//            u

public class MainTabActivity extends a
    implements com.instagram.android.activity.e
{

    private static boolean a;
    private LinkedList b;
    private boolean c;
    private t d;
    private int e;
    private int f;
    private boolean g;
    private com.instagram.ui.widget.a.a h;
    private View i;
    private View j;
    private View k;
    private com.instagram.android.activity.c l;
    private boolean m;
    private boolean n;
    private final Handler o = new Handler();
    private Bundle p;
    private BroadcastReceiver q;
    private com.instagram.common.j.e r;

    public MainTabActivity()
    {
        b = new LinkedList();
        c = false;
        e = 0;
        f = 0;
        g = false;
        q = new l(this);
        r = new q(this);
    }

    private int a(Configuration configuration)
    {
        if (configuration.orientation == 2)
        {
            return 8;
        } else
        {
            return f;
        }
    }

    static int a(MainTabActivity maintabactivity, int i1)
    {
        maintabactivity.e = i1;
        return i1;
    }

    private View a(t t1)
    {
        Intent intent = new Intent(this, com/instagram/android/activity/ActivityInTab);
        intent.putExtra("com.instagram.extra.EXTRA_STARTING_FRAGMENT", t1.a());
        intent.putExtra("MainTabActivity.EXTRA_TAB_NAME", t1.toString());
        Intent intent1 = getIntent();
        if (intent1.getIntExtra("MainTabActivity.INITIAL_TAB", -1) == t1.a())
        {
            intent.putExtra("MainTabActivity.INITIAL_TAB_ARGUMENTS", intent1.getBundleExtra("MainTabActivity.INITIAL_TAB_ARGUMENTS"));
        }
        View view = a(t1, ((ViewGroup) (e())));
        h h1 = d().a(t1.toString()).a(view).a(intent);
        d().a(h1);
        return view;
    }

    private View a(t t1, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(this).inflate(aw.tab_button, viewgroup, false);
        ((ImageView)view.findViewById(av.tab_icon)).setImageResource(t1.c());
        ProxyFrameLayout proxyframelayout;
        if (t1 == com.instagram.android.activity.t.c)
        {
            view.setBackgroundResource(au.tab_background_camera);
        } else
        if (t1 == com.instagram.android.activity.t.b)
        {
            i = view;
            j = view.findViewById(av.notification);
        } else
        if (t1 == com.instagram.android.activity.t.f)
        {
            k = view.findViewById(av.notification);
        }
        proxyframelayout = (ProxyFrameLayout)view;
        proxyframelayout.a(new n(this, t1));
        if (t1 == com.instagram.android.activity.t.c)
        {
            proxyframelayout.setProxyToOnClickListener(false);
            proxyframelayout.a(new o(this));
            return view;
        } else
        {
            proxyframelayout.a(new p(this, t1));
            return view;
        }
    }

    static LinkedList a(MainTabActivity maintabactivity)
    {
        return maintabactivity.b;
    }

    private void a(int i1, int j1, int k1, int l1)
    {
        o.removeCallbacksAndMessages(null);
        View view = i;
        if (view != null && view.getWidth() != 0 && view.getHeight() != 0)
        {
            i().a(i1, j1, k1, l1);
            return;
        } else
        {
            o.postDelayed(new r(this, i1, j1, k1, l1), 100L);
            return;
        }
    }

    private void a(View view, t t1)
    {
        s s1;
        if (!d(t1))
        {
            break MISSING_BLOCK_LABEL_67;
        }
        s1 = ((k)getCurrentActivity()).d();
        if (s1.g() <= 0) goto _L2; else goto _L1
_L1:
        view.setVisibility(0);
_L4:
        return;
_L2:
        if (t1 != com.instagram.android.activity.t.b || ((g)s1.a(av.layout_container_main)).V() != g.a.intValue()) goto _L4; else goto _L3
_L3:
        view.setVisibility(0);
        return;
        view.setVisibility(0);
        b(t1);
        return;
    }

    static void a(MainTabActivity maintabactivity, int i1, int j1, int k1, int l1)
    {
        maintabactivity.a(i1, j1, k1, l1);
    }

    static void a(MainTabActivity maintabactivity, View view, t t1)
    {
        maintabactivity.a(view, t1);
    }

    static void a(MainTabActivity maintabactivity, t t1, t t2)
    {
        maintabactivity.a(t1, t2);
    }

    private void a(t t1, t t2)
    {
        com.instagram.b.c.a.a().a(getLocalActivityManager().getActivity(t1.toString()), t2.b());
    }

    public static void a(boolean flag)
    {
        a = flag;
    }

    private void a(boolean flag, Bundle bundle)
    {
        if (!g)
        {
            g();
            if (flag)
            {
                String s1 = bundle.getString("android.intent.extra.TEXT");
                String s2 = getIntent().getType();
                if (s2 != null && s2.startsWith("image"))
                {
                    com.instagram.p.a.i.c();
                    Uri uri1 = (Uri)bundle.getParcelable("android.intent.extra.STREAM");
                    f().a(uri1, 2, 10004, s1);
                    return;
                }
                if (s2 != null && s2.startsWith("video"))
                {
                    if (com.instagram.creation.c.a.d())
                    {
                        com.instagram.p.a.p.c();
                        Uri uri = (Uri)bundle.getParcelable("android.intent.extra.STREAM");
                        f().a(uri, 2, s1);
                        return;
                    } else
                    {
                        Toast.makeText(this, az.video_import_min_requirements, 0).show();
                        return;
                    }
                }
            } else
            {
                Toast.makeText(this, az.must_login_before_share, 1).show();
                return;
            }
        }
    }

    private boolean a(Intent intent)
    {
        Uri uri = intent.getData();
        boolean flag;
        if (uri == null || uri.equals(p.get("SAVED_LAST_HANDLED_NOTIFICATION")))
        {
            flag = false;
        } else
        {
            p.putParcelable("SAVED_LAST_HANDLED_NOTIFICATION", uri);
            String s1 = intent.getStringExtra("from_notification_id");
            com.instagram.common.u.a.a a1 = new com.instagram.common.u.a.a(null, "notification_clicked");
            a1.a("pi", s1);
            com.instagram.common.analytics.a.a().a(a1);
            Bundle bundle = com.instagram.android.util.a.a(uri);
            int i1 = bundle.getInt("MainTabActivity.INITIAL_TAB", -1);
            if (i1 != -1)
            {
                t at[] = t.values();
                int j1 = at.length;
                int k1 = 0;
                flag = false;
                for (; k1 < j1; k1++)
                {
                    t t1 = at[k1];
                    if (t1.a() == i1)
                    {
                        c(t1);
                        com.instagram.android.activity.ActivityInTab.a(bundle.getBundle("MainTabActivity.INITIAL_TAB_ARGUMENTS"));
                        b(t1);
                        flag = true;
                    }
                }

            } else
            {
                flag = false;
            }
            if (i1 == 3)
            {
                com.instagram.j.c.g.W();
            }
            if (bundle.getBoolean("MainTabActivity.EXTRA_LAUNCH_CAMERA", false))
            {
                n = true;
                return flag;
            }
        }
        return flag;
    }

    static boolean a(MainTabActivity maintabactivity, t t1)
    {
        return maintabactivity.d(t1);
    }

    static boolean a(MainTabActivity maintabactivity, boolean flag)
    {
        maintabactivity.c = flag;
        return flag;
    }

    static View b(MainTabActivity maintabactivity)
    {
        return maintabactivity.j;
    }

    static void b(MainTabActivity maintabactivity, t t1)
    {
        maintabactivity.b(t1);
    }

    private void b(t t1)
    {
        Intent intent = new Intent("MainTabActivity.BROADCAST_POP_TO_ROOT");
        intent.putExtra("MainTabActivity.EXTRA_TAB_NAME", t1.toString());
        android.support.v4.a.e.a(getApplicationContext()).b(intent);
    }

    public static boolean b()
    {
        boolean flag = a;
        a = false;
        return flag;
    }

    static t c(MainTabActivity maintabactivity, t t1)
    {
        maintabactivity.d = t1;
        return t1;
    }

    static com.instagram.ui.widget.a.a c(MainTabActivity maintabactivity)
    {
        return maintabactivity.h;
    }

    private void c(t t1)
    {
        d = t1;
        d().setCurrentTabByTag(t1.toString());
    }

    static int d(MainTabActivity maintabactivity)
    {
        return maintabactivity.e;
    }

    static void d(MainTabActivity maintabactivity, t t1)
    {
        maintabactivity.c(t1);
    }

    private boolean d(t t1)
    {
        ActivityInTab activityintab = (ActivityInTab)getCurrentActivity();
        return activityintab != null && activityintab.f().equals(t1.toString());
    }

    static View e(MainTabActivity maintabactivity)
    {
        return maintabactivity.k;
    }

    private com.instagram.android.activity.c f()
    {
        if (l == null)
        {
            l = new com.instagram.android.activity.c(this);
        }
        return l;
    }

    static t f(MainTabActivity maintabactivity)
    {
        return maintabactivity.d;
    }

    static com.instagram.android.activity.c g(MainTabActivity maintabactivity)
    {
        return maintabactivity.f();
    }

    private void g()
    {
        g = true;
    }

    private boolean h()
    {
        return "android.intent.action.SEND".equals(getIntent().getAction()) && getIntent().hasExtra("android.intent.extra.STREAM");
    }

    static boolean h(MainTabActivity maintabactivity)
    {
        return maintabactivity.c;
    }

    private com.instagram.ui.widget.a.a i()
    {
        if (h == null)
        {
            h = new com.instagram.ui.widget.a.a(i, d().getWidth());
            h.a(a(getResources().getConfiguration()));
            h.a(new com.instagram.android.activity.s(this));
        }
        return h;
    }

    public final void a(int i1)
    {
        b(i1);
    }

    public final void a(int i1, int j1)
    {
        if (i1 == 10004 && j1 == 2)
        {
            finish();
        }
    }

    public final void a(File file)
    {
        com.instagram.creation.base.e.a(this, 10002, file);
    }

    public final void a(File file, int i1, String s1)
    {
        com.instagram.creation.photo.c.a.a(this, i1, file, s1);
    }

    public final void a_(Intent intent, int i1)
    {
        startActivityForResult(intent, i1);
    }

    public final void b(int i1)
    {
        f = i1;
        if (getResources().getConfiguration().orientation == 1)
        {
            e().setVisibility(i1);
            if (h != null)
            {
                h.a(i1);
            }
        }
    }

    public final int c()
    {
        return e;
    }

    public final void h_()
    {
        b b1 = com.instagram.p.a.e.b();
        if (b())
        {
            b1.a("return_to", "feed").a();
            cr.as();
            c(com.instagram.android.activity.t.a);
            b(com.instagram.android.activity.t.a);
            return;
        }
        b1.a("return_to", "ds_inbox").a();
        boolean flag;
        if (!(((k)getCurrentActivity()).d().a(av.layout_container_main) instanceof c))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m = flag;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        f().a(i1, j1, intent);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (d() != null)
        {
            int i1 = a(configuration);
            e().setVisibility(i1);
            if (h != null)
            {
                h.a(i1);
            }
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null)
        {
            p = bundle.getBundle("SAVED_STATE_BUNDLE");
        }
        if (p == null)
        {
            p = new Bundle();
        }
        Intent intent = getIntent();
        if (intent.hasCategory("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(intent.getAction()))
        {
            if (!isTaskRoot())
            {
                finish();
                return;
            }
            com.instagram.k.d.a().a(f.b);
        }
        com.instagram.service.a.a.a();
        boolean flag = com.instagram.service.a.a.d();
        Bundle bundle1 = intent.getExtras();
        boolean flag1;
        if (bundle != null && bundle.getBoolean("MainTabActivity.tookSendIntent", false))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        g = flag1;
        if (h())
        {
            a(flag, bundle1);
        }
        if (!flag)
        {
            SignedOutFragmentActivity.a(this);
            return;
        }
        setContentView(aw.layout_activity_main_tabs);
        if (StringBridge.a())
        {
            com.instagram.common.i.c.b("failed_to_load_library_logged_in", "failed_to_load_library_logged_in");
            (new com.instagram.ui.dialog.b(this)).a(az.error).a(false).b(az.unable_to_start).b(az.ok, new m(this)).c().show();
            return;
        }
        a(com.instagram.android.activity.t.a);
        if (Boolean.parseBoolean(com.instagram.m.c.m.h()))
        {
            a(com.instagram.android.activity.t.e);
        } else
        {
            a(com.instagram.android.activity.t.d);
        }
        a(com.instagram.android.activity.t.c);
        a(com.instagram.android.activity.t.b);
        a(com.instagram.android.activity.t.f);
        if (!a(intent))
        {
            c(com.instagram.android.activity.t.a);
        }
        if (com.instagram.l.a.b.a().e())
        {
            com.instagram.common.u.b.i.a().a(this);
        }
        d().setOnTabChangedListener(new u(this, (byte)0));
    }

    protected void onDestroy()
    {
        if (h != null)
        {
            h.a();
        }
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        a(intent);
        super.onNewIntent(intent);
    }

    protected void onPause()
    {
        super.onPause();
        o.removeCallbacksAndMessages(null);
        com.instagram.common.y.d.a(q);
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        super.onRestoreInstanceState(bundle);
        b.clear();
        String s1;
        for (Iterator iterator = bundle.getStringArrayList("backTabList").iterator(); iterator.hasNext(); b.add(t.valueOf(s1)))
        {
            s1 = (String)iterator.next();
        }

        g = bundle.getBoolean("MainTabActivity.tookSendIntent", false);
        f().b(bundle);
    }

    protected void onResume()
    {
        super.onResume();
        com.instagram.android.c2dm.c.a().e();
        (new com.instagram.registrationpush.a(this)).b();
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("MainTabActivity.BROADCAST_BACK_PUSHED");
        intentfilter.addAction("LogoutManager.BROADCAST_POST_LOGOUT");
        intentfilter.addAction("NewsfeedStore.BROADCAST_TOAST");
        intentfilter.addAction("NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU");
        intentfilter.addAction("com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN");
        intentfilter.addAction("SelfFragment.BROADCAST_SELF_PROFILE_SHOWN");
        e e1 = android.support.v4.a.e.a(this);
        e1.a(q, intentfilter);
        e1.a(new Intent("com.instagram.android.activity.BROADCAST_REFRESH_MAIN_FEED"));
        if (m)
        {
            m = false;
            (new com.instagram.base.a.a.a(((k)getCurrentActivity()).d())).a(new c()).a();
        }
        if (n)
        {
            n = false;
            f().a(false);
        }
        com.instagram.m.j.a().a();
        com.facebook.e.c.k.a("mainActivityResume");
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = b.iterator(); iterator.hasNext(); arraylist.add(((t)iterator.next()).toString())) { }
        bundle.putStringArrayList("backTabList", arraylist);
        bundle.putBoolean("MainTabActivity.tookSendIntent", g);
        f().a(bundle);
        bundle.putBundle("SAVED_STATE_BUNDLE", p);
    }

    protected void onStart()
    {
        super.onStart();
        com.instagram.common.j.g.a().a(com/instagram/android/c2dm/a, r);
    }

    protected void onStop()
    {
        com.instagram.common.j.g.a().b(com/instagram/android/c2dm/a, r);
        super.onStop();
    }
}
