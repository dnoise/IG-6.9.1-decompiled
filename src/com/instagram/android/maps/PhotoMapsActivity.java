// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapActivity;
import com.google.android.maps.MapController;
import com.google.android.maps.Overlay;
import com.instagram.a.c;
import com.instagram.a.e;
import com.instagram.a.f;
import com.instagram.android.maps.b.a;
import com.instagram.android.maps.b.b;
import com.instagram.android.maps.b.h;
import com.instagram.android.maps.d.l;
import com.instagram.android.maps.ui.IgAnimatingMapItem;
import com.instagram.android.maps.ui.af;
import com.instagram.android.maps.ui.ah;
import com.instagram.android.maps.ui.i;
import com.instagram.android.maps.ui.m;
import com.instagram.common.j.g;
import com.instagram.common.y.d;
import com.instagram.feed.d.t;
import com.instagram.user.c.j;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps:
//            b, s, ae, ac, 
//            ad, c, i, j, 
//            n, z, aa, d, 
//            e, u, q, r, 
//            t, f, p, v, 
//            w, x

public class PhotoMapsActivity extends MapActivity
    implements c
{

    private static PhotoMapsActivity w;
    private f a;
    private i b;
    private MapController c;
    private b d;
    private List e;
    private com.instagram.android.maps.b.i f;
    private int g;
    private Handler h;
    private m i;
    private ArrayList j;
    private ae k;
    private com.instagram.android.maps.ui.a.b l;
    private com.instagram.android.maps.e.d m;
    private com.instagram.android.maps.e.e n;
    private boolean o;
    private boolean p;
    private boolean q;
    private BroadcastReceiver r;
    private final Set s = new HashSet();
    private final com.instagram.common.j.d t = new com.instagram.android.maps.s(this);
    private List u;
    private boolean v;

    public PhotoMapsActivity()
    {
        e = new ArrayList();
        f = null;
        g = -1;
        h = new Handler();
        o = false;
        p = false;
        q = false;
        r = new com.instagram.android.maps.b(this);
        v = false;
    }

    private static int a(int i1, double d1, double d2, double d3, double d4)
    {
        double d5 = Math.floor(8D - Math.log((1.6446000000000001D * (6371D * Math.acos(Math.sin(d1 / 57.2958D) * Math.sin(d2 / 57.2958D) + Math.cos(d1 / 57.2958D) * Math.cos(d2 / 57.2958D) * Math.cos(d4 / 57.2958D - d3 / 57.2958D)))) / Math.sqrt(2 * (i1 * i1))) / Math.log(2D));
        if (d1 == d2 && d1 == d2)
        {
            d5 = 11D;
        }
        return (int)d5;
    }

    static m a(PhotoMapsActivity photomapsactivity, m m1)
    {
        photomapsactivity.i = m1;
        return m1;
    }

    static void a(PhotoMapsActivity photomapsactivity)
    {
        photomapsactivity.j();
    }

    static void a(PhotoMapsActivity photomapsactivity, ae ae1)
    {
        photomapsactivity.a(ae1);
    }

    static void a(PhotoMapsActivity photomapsactivity, h h1, h h2, Runnable runnable)
    {
        photomapsactivity.a(h1, h2, runnable);
    }

    static void a(PhotoMapsActivity photomapsactivity, List list)
    {
        photomapsactivity.a(list);
    }

    static void a(PhotoMapsActivity photomapsactivity, boolean flag)
    {
        photomapsactivity.a(flag);
    }

    private void a(ae ae1)
    {
        for (; !e.isEmpty() && ((ae)e.get(0)).a() >= ae1.a(); e.remove(0)) { }
        if (k != null && ae1.a() < k.a())
        {
            k = null;
        }
        if ((e.isEmpty() || ((ae)e.get(0)).a() <= ae1.a()) && k != null)
        {
            e.add(0, k);
        }
        k = ae1;
    }

    private void a(h h1, h h2, Runnable runnable)
    {
        GeoPoint geopoint = new GeoPoint((h2.d() + h1.d()) / 2, (h2.e() + h1.e()) / 2);
        if (runnable != null)
        {
            c.animateTo(geopoint, runnable);
            return;
        } else
        {
            c.animateTo(geopoint);
            return;
        }
    }

    private void a(List list)
    {
        a(list, true);
    }

    private void a(List list, boolean flag)
    {
        d = com.instagram.android.maps.b.b.a();
        b.setOnPanListener(l);
        a a2;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); d.a(new h(a2.b(), a2.c(), a2)))
        {
            a2 = (a)iterator.next();
        }

        u = list;
        if (i())
        {
            u = list;
            List _tmp = u;
            l();
        }
        a(true);
        if (list.size() == 0)
        {
            if (i())
            {
                if (flag)
                {
                    Dialog dialog = (new com.instagram.ui.dialog.b(this, aw.photo_maps_dialog, ba.IgDialogFull)).b(az.ok, new ac(this)).c();
                    dialog.setOnCancelListener(new ad(this));
                    ((TextView)dialog.findViewById(av.dialog_map_title)).setText(az.photo_map);
                    ((TextView)dialog.findViewById(av.dialog_map_bullet_1)).setText(az.popup_photomaps_empty_map_line_1);
                    ((TextView)dialog.findViewById(av.dialog_map_bullet_2)).setText(az.popup_photomaps_empty_map_line_2);
                    dialog.show();
                }
            } else
            {
                String s1 = getIntent().getAction();
                com.instagram.user.c.a a1 = com.instagram.user.c.j.a().a(s1);
                String s2 = null;
                if (a1 != null)
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = a1.b();
                    s2 = String.format("@%s", aobj);
                }
                String s3;
                com.instagram.ui.dialog.b b1;
                if (s2 != null)
                {
                    s3 = getString(az.user_has_no_geotagged_photos, new Object[] {
                        s2
                    });
                } else
                {
                    s3 = getString(az.could_not_load_photo_map_information);
                }
                b1 = new com.instagram.ui.dialog.b(this);
                b1.a(s3);
                b1.b(az.return_to_profile, new com.instagram.android.maps.c(this));
                b1.c().show();
            }
        }
        a.b();
    }

    private void a(boolean flag)
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (f != null) goto _L4; else goto _L3
_L3:
        f = com.instagram.android.maps.b.i.c();
_L9:
        boolean flag1;
        List list;
        ArrayList arraylist;
        com.google.android.maps.Projection projection;
        long l1;
        ah ah4;
        ah ah5;
        com.instagram.android.maps.b.i i1;
        int j1;
        Iterator iterator;
        com.instagram.android.maps.b.f f1;
        Iterator iterator3;
        Overlay overlay1;
        if (b.getZoomLevel() > g)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        g = b.getZoomLevel();
        list = b.getOverlays();
        arraylist = new ArrayList();
        projection = b.getProjection();
        j1 = getResources().getDimensionPixelSize(at.clustering_distance);
        j = d.a(f, j1, projection);
        com.facebook.e.a.a.a("PhotoMap", (new StringBuilder("Clusters: ")).append(j.size()).toString());
        l1 = (new Date()).getTime();
        iterator = j.iterator();
_L6:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        f1 = (com.instagram.android.maps.b.f)iterator.next();
        ah4 = new ah(f1, b, getApplicationContext());
        ah4.a(new com.instagram.android.maps.i(this, ah4));
        ah4.a(new com.instagram.android.maps.j(this, ah4));
        iterator3 = list.iterator();
        do
        {
            do
            {
                if (!iterator3.hasNext())
                {
                    break MISSING_BLOCK_LABEL_664;
                }
                overlay1 = (Overlay)iterator3.next();
            } while (!(overlay1 instanceof ah));
            ah5 = (ah)overlay1;
        } while (!f1.f().a(ah5.a().f()));
_L18:
        if (ah5 != null)
        {
            ah5.a = l1;
            ah5.a(f1);
            ah5.d();
        } else
        {
            arraylist.add(ah4);
        }
        if (true) goto _L6; else goto _L5
_L4:
        if (flag || b.getZoomLevel() > 5) goto _L8; else goto _L7
_L7:
        if (!f.d())
        {
            f = com.instagram.android.maps.b.i.c();
        } else
        if (g == b.getZoomLevel())
        {
            return;
        }
          goto _L9
_L8:
        i1 = com.instagram.android.maps.b.i.a(b.getMapCenter(), b.getLatitudeSpan(), b.getLongitudeSpan());
        if (!flag && f.b(i1)) goto _L1; else goto _L10
_L10:
        f = i1.b();
          goto _L9
_L5:
        b.a(l1);
        if (!flag1) goto _L12; else goto _L11
_L11:
        Iterator iterator1 = arraylist.iterator();
_L16:
        if (!iterator1.hasNext()) goto _L12; else goto _L13
_L13:
        ah ah1;
        double d1;
        ah ah2;
        Iterator iterator2;
        ah1 = (ah)iterator1.next();
        d1 = 0.0D;
        ah2 = null;
        iterator2 = list.iterator();
_L15:
        ah ah3;
        if (!iterator2.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        Overlay overlay = (Overlay)iterator2.next();
        if (!(overlay instanceof ah))
        {
            break MISSING_BLOCK_LABEL_657;
        }
        ah3 = (ah)overlay;
        double d2 = com.instagram.android.maps.b.h.a(ah1.a().f(), ah3.a().f());
        if (d2 >= 5000000D || ah2 != null && d2 >= d1)
        {
            break MISSING_BLOCK_LABEL_657;
        }
        d1 = d2;
_L17:
        ah2 = ah3;
        if (true) goto _L15; else goto _L14
_L14:
        if (ah2 != null)
        {
            h h1 = ah2.a().f();
            ah1.a().f();
            if (com.instagram.android.maps.b.h.a(h1, projection) < 400D)
            {
                ah1.d = ah2.a().f();
            }
        }
          goto _L16
_L12:
        b.a(arraylist);
        b.invalidate();
        return;
        ah3 = ah2;
          goto _L17
        ah5 = null;
          goto _L18
    }

    static boolean a(PhotoMapsActivity photomapsactivity, com.instagram.android.maps.b.f f1, ah ah1)
    {
        return photomapsactivity.a(f1, ah1);
    }

    private boolean a(com.instagram.android.maps.b.f f1, ah ah1)
    {
        List list = c(f1);
        b(list);
        i = new m(this, d(), list, b, ah1);
        i.showAtLocation(b, 51, 0, 0);
        i.a(new n(this));
        return true;
    }

    private static boolean a(h h1, h h2)
    {
        float af[] = new float[1];
        Location.distanceBetween(h2.c(), h2.f(), h2.c(), h1.f(), af);
        float f1 = af[0];
        com.facebook.e.a.a.a("PhotoMap", (new StringBuilder("Distance = ")).append(f1).toString());
        return f1 > 500F;
    }

    static List b(com.instagram.android.maps.b.f f1)
    {
        return c(f1);
    }

    static Set b(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.s;
    }

    static void b(PhotoMapsActivity photomapsactivity, List list)
    {
        photomapsactivity.b(list);
    }

    private void b(List list)
    {
        com.instagram.android.g.b b1;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); s.add(b1.f()))
        {
            b1 = (com.instagram.android.g.b)iterator.next();
        }

    }

    static boolean b(PhotoMapsActivity photomapsactivity, boolean flag)
    {
        photomapsactivity.q = flag;
        return flag;
    }

    static List c(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.u;
    }

    private static List c(com.instagram.android.maps.b.f f1)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = f1.c().iterator(); iterator.hasNext(); arraylist.add((com.instagram.android.g.b)((h)iterator.next()).g())) { }
        return arraylist;
    }

    static boolean d(PhotoMapsActivity photomapsactivity)
    {
        photomapsactivity.p = true;
        return true;
    }

    public static PhotoMapsActivity e()
    {
        return w;
    }

    static m e(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.i;
    }

    static i f(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.b;
    }

    static Handler g(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.h;
    }

    private static String g()
    {
        return com.instagram.d.a.d().a();
    }

    private void h()
    {
        if (j == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = j.iterator();
        com.instagram.android.maps.b.f f1 = null;
        while (iterator.hasNext()) 
        {
            com.instagram.android.maps.b.f f2 = (com.instagram.android.maps.b.f)iterator.next();
            GeoPoint geopoint;
            if (f1 != null && f2.c().size() <= f1.c().size())
            {
                f2 = f1;
            }
            f1 = f2;
        }
        if (f1 == null) goto _L2; else goto _L3
_L3:
        geopoint = f1.b().a();
_L5:
        if (geopoint == null && d.d() != null && d.c() != null)
        {
            geopoint = new GeoPoint((d.d().d() + d.c().d()) / 2, (d.d().e() + d.c().e()) / 2);
        }
        if (geopoint != null)
        {
            c.animateTo(geopoint);
        }
        a(new ae(this, b.getLatitudeSpan(), b.getLongitudeSpan(), geopoint, b.getZoomLevel()));
        v = true;
        return;
_L2:
        geopoint = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    static void h(PhotoMapsActivity photomapsactivity)
    {
        photomapsactivity.h();
    }

    private boolean i()
    {
        return com.instagram.service.a.a.a().b().g().equals(getIntent().getAction());
    }

    static boolean i(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.i();
    }

    static f j(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.a;
    }

    private void j()
    {
        List list = com.instagram.android.maps.e.a.a().j();
        if (list != null && !list.isEmpty())
        {
            a(list);
            if (!v || o)
            {
                h();
            }
        } else
        {
            if (o)
            {
                o = false;
                h.post(new z(this));
                return;
            }
            if (list != null)
            {
                a(new ArrayList());
                return;
            }
        }
    }

    static MapController k(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.c;
    }

    private void k()
    {
        (new com.instagram.android.c.a.b(this, b().e(), new aa(this))).a(getIntent().getAction());
    }

    private void l()
    {
        m = new com.instagram.android.maps.d(this);
        com.instagram.android.maps.e.a.a().a(m);
        n = new com.instagram.android.maps.e(this);
        com.instagram.android.maps.e.a.a().a(n);
    }

    static void l(PhotoMapsActivity photomapsactivity)
    {
        photomapsactivity.m();
    }

    private void m()
    {
        String s1 = getString(az.edit_photos_on_map);
        String s2 = getString(az.view_all_photos_on_map);
        CharSequence acharsequence[];
        if (d != null && i())
        {
            acharsequence = new CharSequence[2];
            acharsequence[0] = s1;
            acharsequence[1] = s2;
        } else
        {
            acharsequence = (new CharSequence[] {
                s2
            });
        }
        (new com.instagram.ui.dialog.b(this)).a(acharsequence, new u(this, s1, acharsequence, s2)).a(true).d().c().show();
    }

    static void m(PhotoMapsActivity photomapsactivity)
    {
        photomapsactivity.k();
    }

    static ArrayList n(PhotoMapsActivity photomapsactivity)
    {
        return photomapsactivity.j;
    }

    public final void a()
    {
        o = true;
        com.instagram.android.maps.d.l.a(getIntent().getAction(), ((k)getParent()).d());
    }

    public final void a(com.instagram.a.b b1)
    {
        if (com.instagram.android.maps.e.a.a().b())
        {
            b1.c(az.edit_photos_on_map, new q(this));
            return;
        }
        b1.a(true);
        b1.a(az.photo_map);
        if (f() != null)
        {
            b1.a(com.instagram.a.i.b, new r(this));
        } else
        {
            b1.a(true, new com.instagram.android.maps.t(this));
            b1.b(q);
        }
        b1.a(getResources().getColor(as.grey_medium), getResources().getColor(as.action_bar_semi_transparent_white), getResources().getColor(as.grey_1), e.c);
    }

    public final boolean a(com.instagram.android.maps.b.f f1)
    {
        h h1 = f1.e();
        h h2 = f1.d();
        h h3 = f1.f();
        GeoPoint geopoint = new GeoPoint((h1.d() + h2.d()) / 2, (h1.e() + h2.e()) / 2);
        boolean flag = a(h1, h2);
        if (flag)
        {
            double d1 = Math.min(h1.c(), h2.c());
            double d2 = Math.max(h1.c(), h2.c());
            double d3 = Math.min(h1.f(), h2.f());
            double d4 = Math.max(h1.f(), h2.f());
            int i1 = a(b.getWidth(), d1, d2, d3, d4);
            c.animateTo(h3.a(), new com.instagram.android.maps.f(this, i1, geopoint));
            return flag;
        } else
        {
            c.animateTo(geopoint);
            return flag;
        }
    }

    public final k b()
    {
        return (k)getParent();
    }

    public final s c()
    {
        return b().d();
    }

    public final af d()
    {
        return new p(this);
    }

    public final List f()
    {
        return u;
    }

    protected boolean isRouteDisplayed()
    {
        return false;
    }

    public void onBackPressed()
    {
label0:
        {
            if (!com.instagram.common.y.d.a("BROADCAST_PHOTOMAPS_BACK_PRESSED"))
            {
                if (i == null || !i.isShowing())
                {
                    break label0;
                }
                i.a();
            }
            return;
        }
        if (com.instagram.android.maps.e.a.a().b())
        {
            com.instagram.android.maps.e.a a1 = com.instagram.android.maps.e.a.a();
            boolean flag;
            if (!com.instagram.android.maps.e.a.a().b())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a1.a(flag);
            return;
        } else
        {
            com.instagram.b.c.a.a().a(getParent(), "back");
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(aw.layout_maps);
        a = new f((ViewGroup)findViewById(av.action_bar), new v(this));
        com.instagram.android.maps.e.a.a().a(getIntent().getAction());
        if (com.instagram.android.maps.e.a.a().b())
        {
            com.instagram.android.maps.e.a.a().a(false);
        }
        b = new i(this, g());
        b.setBuiltInZoomControls(false);
        b.setDetachWindowListener(new w(this));
        b.setClickable(true);
        b.setEnabled(true);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
        b.setLayoutParams(layoutparams);
        ((FrameLayout)findViewById(av.layout_maps_container)).addView(b);
        c = b.getController();
        c.setCenter(new GeoPoint(0x25353cb, 0xfe2121f3));
        c.setZoom(4);
        l = new x(this);
        com.instagram.common.j.g.a().a(com/instagram/feed/d/t, t);
        k();
    }

    protected void onDestroy()
    {
        if (getIntent().getAction().equals(com.instagram.service.a.a.a().b().g()))
        {
            com.instagram.android.maps.e.a.a().b(m);
            com.instagram.android.maps.e.a.a().b(n);
        }
        com.instagram.common.j.g.a().b(com/instagram/feed/d/t, t);
        w = null;
        super.onDestroy();
    }

    protected void onPause()
    {
        if (i != null)
        {
            i.b();
        }
        android.support.v4.a.e.a(this).a(r);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        a.a(this);
        IgAnimatingMapItem.f = 0;
        ah.h();
        com.instagram.android.maps.e.a.a().a(getIntent().getAction());
        if (i())
        {
            android.support.v4.a.e.a(this).a(r, new IntentFilter("com.instagram.android.maps.manager.MapReviewed"));
            j();
        }
        if (p)
        {
            p = false;
            a(u, false);
            h();
        }
        w = this;
    }
}
