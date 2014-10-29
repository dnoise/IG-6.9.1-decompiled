// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.support.v4.app.an;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import com.facebook.av;
import com.instagram.android.feed.a.a.e;
import com.instagram.android.feed.a.a.i;
import com.instagram.android.feed.a.a.q;
import com.instagram.android.feed.a.a.r;
import com.instagram.android.feed.a.a.x;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.feed.a.b.f;
import com.instagram.android.feed.a.b.s;
import com.instagram.android.feed.a.b.w;
import com.instagram.android.feed.ui.StickyHeaderListView;
import com.instagram.android.feed.ui.d;
import com.instagram.android.g.g;
import com.instagram.android.people.widget.PeopleTagsLayout;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.common.g.b.h;
import com.instagram.feed.b.b;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;
import com.instagram.feed.survey.m;
import com.instagram.feed.widget.ConstrainedProgressImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.feed.a:
//            g, h, b, c, 
//            e, i, f

public class a extends BaseAdapter
    implements android.widget.AbsListView.OnScrollListener, q, r, f, d, b, m
{

    protected com.instagram.android.fragment.a a;
    protected final an b;
    protected final android.support.v4.app.s c;
    protected final Context d;
    private Set e;
    private Set f;
    private final e g;
    private final i h = new i(this);
    private final com.instagram.feed.b.a i = new com.instagram.feed.b.a(this);
    private final com.instagram.android.feed.a.a.b j;
    private final com.instagram.android.feed.a.a.m k;
    private ListView l;
    private StickyHeaderListView m;
    private int n;
    private int o;
    private com.instagram.base.b.b p;
    private boolean q;
    private com.instagram.android.feed.a.g r;
    private com.instagram.android.feed.a.f s;
    private com.instagram.android.feed.a.b.a t;
    private int u;
    private int v;
    private Handler w;

    public a(com.instagram.android.fragment.a a1, int i1)
    {
        e = new HashSet();
        f = new HashSet();
        n = -1;
        r = new com.instagram.android.feed.a.g(this, (byte)0);
        u = h.a;
        v = 0;
        w = new com.instagram.android.feed.a.b(this);
        a = a1;
        u = i1;
        d = a1.n();
        b = a1.z();
        c = a1.p();
        g = new e(com.instagram.common.g.b.h.a(), d);
        k = new com.instagram.android.feed.a.a.m(a, a);
        k.a(this);
        k.a(this);
        t = new com.instagram.android.feed.a.b.a(a, this);
        j = new com.instagram.android.feed.a.a.b(this, d.getResources().getDisplayMetrics());
        j.a(new c(this, i1));
        v();
        if (com.instagram.base.b.b.a(a))
        {
            p = com.instagram.base.b.b.a(a.n());
        }
    }

    public static ConstrainedProgressImageView a(AbsListView abslistview, int i1)
    {
        return (ConstrainedProgressImageView)abslistview.getChildAt(i1).findViewById(av.row_feed_photo_imageview);
    }

    public static String a(ConstrainedProgressImageView constrainedprogressimageview)
    {
        return (String)constrainedprogressimageview.getTag(av.key_media_id);
    }

    private void a(List list, boolean flag)
    {
        r.a(list, flag);
        notifyDataSetChanged();
    }

    private static boolean a(View view, View view1)
    {
        View view2 = view1.findViewById(av.media_group);
        int i1;
        if (view2 != null)
        {
            if (view1.getTop() + view2.getBottom() > (i1 = (int)(0.80000000000000004D * (double)view2.getHeight())) && view.getHeight() - (view1.getTop() + view2.getTop()) > i1)
            {
                return true;
            }
        }
        return false;
    }

    static boolean a(a a1)
    {
        return a1.u();
    }

    private static boolean a(l l1, ac ac1)
    {
        return l1.W() && ac1.a().a();
    }

    static com.instagram.android.feed.a.a.b b(a a1)
    {
        return a1.j;
    }

    static com.instagram.android.feed.a.f c(a a1)
    {
        return a1.s;
    }

    static int d(a a1)
    {
        return a1.u;
    }

    protected static int f(int i1)
    {
        return i1 + 4;
    }

    private void h(int i1)
    {
        if (i1 >= getCount() || i1 < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("Invalid position ")).append(i1).append(", size is ").append(getCount()).append(", child count is ").append(k()).append(", offset position is ").append(j(i1)).toString());
        } else
        {
            return;
        }
    }

    private boolean i(int i1)
    {
        return i1 == -1 + getCount();
    }

    private int j(int i1)
    {
        return i1 - k();
    }

    private void s()
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext(); ((com.instagram.feed.survey.i)iterator.next()).a(v)) { }
    }

    private void t()
    {
        w.sendEmptyMessage(1);
    }

    private boolean u()
    {
        if (!com.instagram.creation.c.a.b() || f() == null || q)
        {
            return false;
        }
        ListView listview = f();
        if (k.a())
        {
            int i1 = listview.getChildCount();
            for (int j1 = 0; j1 < i1; j1++)
            {
                View view = listview.getChildAt(j1);
                ConstrainedProgressImageView constrainedprogressimageview = a(listview, j1);
                if (constrainedprogressimageview == null || !constrainedprogressimageview.a())
                {
                    continue;
                }
                Integer integer = (Integer)constrainedprogressimageview.getTag(av.key_list_position);
                l l1 = (l)getItem(integer.intValue());
                if (l1 != null && l1.g() && integer.intValue() != n && a(listview, view))
                {
                    ac ac1 = (ac)view.findViewById(av.media_group).getTag();
                    k.a(l1, ac1, integer.intValue(), true);
                    return true;
                }
            }

        }
        return false;
    }

    private void v()
    {
        o = 1 + (k() + r.c());
    }

    public final View a(int i1, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = com.instagram.android.feed.a.b.m.a(d, viewgroup);
        }
        t.a((com.instagram.android.feed.a.b.r)view.getTag(), (l)getItem(i1));
        return view;
    }

    protected View a(Context context, int i1, ViewGroup viewgroup)
    {
        switch (getItemViewType(i1))
        {
        default:
            throw new UnsupportedOperationException("Unhandled view type");

        case 0: // '\0'
            return t.a();

        case 3: // '\003'
            return new View(context);

        case 1: // '\001'
            return com.instagram.android.feed.a.b.s.a(context, 3);

        case 2: // '\002'
            return com.instagram.ui.widget.loadmore.d.a(context, viewgroup);
        }
    }

    public final View a(String s1)
    {
        ListView listview = f();
        if (listview == null)
        {
            return null;
        }
        for (int i1 = 0; i1 < listview.getChildCount(); i1++)
        {
            ConstrainedProgressImageView constrainedprogressimageview = a(((AbsListView) (listview)), i1);
            if (constrainedprogressimageview != null && s1 != null && s1.equals(a(constrainedprogressimageview)))
            {
                return listview.getChildAt(i1);
            }
        }

        return null;
    }

    public final void a()
    {
        if (a.ae())
        {
            a.n_();
        }
    }

    protected void a(Context context, View view, int i1)
    {
        if (q)
        {
            q = false;
            w.sendEmptyMessage(2);
        }
        switch (getItemViewType(i1))
        {
        default:
            throw new UnsupportedOperationException("View type unhandled");

        case 0: // '\0'
            l l1 = (l)getItem(i1);
            if (k.b() == i1 && !l1.equals(k.c()))
            {
                k.h();
            }
            t.a(view, l1, i1, h.a(l1), k.a(i1, l1));
            // fall through

        case 3: // '\003'
            return;

        case 1: // '\001'
            w w1 = (w)view.getTag();
            List list = g(i1);
            boolean flag;
            if (i1 == -2 + getCount())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            com.instagram.android.feed.a.b.s.a(w1, list, flag, false, i1, a);
            return;

        case 2: // '\002'
            com.instagram.ui.widget.loadmore.d.a((com.instagram.ui.widget.loadmore.e)view.getTag(), a);
            return;
        }
    }

    public final void a(Bitmap bitmap, l l1, ac ac1)
    {
        if (bitmap != null)
        {
            if (l1.W())
            {
                ac1.c().setVisibility(0);
                if (!h.a(l1) && o() == h.a && l() == 0)
                {
                    h.a(l1.d());
                }
            }
            if (l1.g() && a.ad())
            {
                t();
            }
        }
    }

    public final void a(com.instagram.android.feed.a.f f1)
    {
        s = f1;
    }

    public final void a(com.instagram.android.feed.a.i i1)
    {
        e.add(i1);
    }

    public final void a(l l1)
    {
        a(l1, false);
    }

    public final void a(l l1, int i1, ac ac1)
    {
        if (a.l() != null)
        {
            if (l1.w() == com.instagram.model.a.a.a)
            {
                if (a(l1, ac1))
                {
                    h.a(l1, ac1.b(), ac1.c());
                    return;
                }
            } else
            {
                k.a(i1, l1, ac1);
                return;
            }
        }
    }

    public final void a(l l1, View view, int i1)
    {
        (new x(a, a, this, view, l1, i1)).a();
    }

    public final void a(l l1, boolean flag)
    {
        if (l1 == null)
        {
            return;
        }
        if (flag && l1.g())
        {
            n = 0;
        }
        ArrayList arraylist = new ArrayList(1);
        arraylist.add(l1);
        a(((List) (arraylist)), flag);
    }

    public final void a(com.instagram.feed.survey.i i1)
    {
        f.add(i1);
        i1.b(v);
    }

    public final boolean a(int i1)
    {
        return com.instagram.creation.c.a.b() && i1 != n;
    }

    public boolean areAllItemsEnabled()
    {
        return false;
    }

    public final int b()
    {
        return o() != h.a ? 6 : 3;
    }

    public final void b(l l1, int i1, ac ac1)
    {
        com.instagram.android.feed.e.h.a(d, b, l1, i1, o.a, g.b, a, a);
        if (a(l1, ac1) && ac1.b().getChildCount() > 0)
        {
            h.a(l1, ac1.b(), ac1.c());
        }
        w.postDelayed(new com.instagram.android.feed.a.e(this, l1), 100L);
    }

    public final void b(com.instagram.feed.survey.i i1)
    {
        f.remove(i1);
    }

    public final void b(List list)
    {
        r.b();
        c(list);
    }

    public final boolean b(int i1)
    {
        return getItemViewType(i1) == 0;
    }

    protected boolean b(l l1)
    {
        return l1.C() == 0;
    }

    public final boolean b(String s1)
    {
        return com.instagram.android.feed.a.g.b(r).containsKey(s1);
    }

    public final View c(int i1)
    {
        ListView listview = f();
        if (listview == null)
        {
            return null;
        }
        for (int j1 = 0; j1 < listview.getChildCount(); j1++)
        {
            ConstrainedProgressImageView constrainedprogressimageview = a(listview, j1);
            if (constrainedprogressimageview != null && ((Integer)constrainedprogressimageview.getTag(av.key_list_position)).intValue() == i1)
            {
                return listview.getChildAt(j1);
            }
        }

        return null;
    }

    public final com.instagram.android.fragment.a c()
    {
        return a;
    }

    public final void c(List list)
    {
        a(list, false);
    }

    public final View d(int i1)
    {
        com.instagram.android.fragment.a a1 = a;
        View view = null;
        if (a1 != null)
        {
            View view1 = a.E();
            view = null;
            if (view1 != null)
            {
                view = a.E().findViewById(i1);
            }
        }
        return view;
    }

    public final void d()
    {
        int i1;
        if (u == h.a)
        {
            i1 = com.instagram.android.feed.a.h.b;
        } else
        {
            i1 = h.a;
        }
        u = i1;
        if (i1 == com.instagram.android.feed.a.h.b)
        {
            k.h();
        }
        for (Iterator iterator = e.iterator(); iterator.hasNext(); ((com.instagram.android.feed.a.i)iterator.next()).a(i1)) { }
        com.instagram.android.feed.a.g.a(r);
        notifyDataSetChanged();
    }

    public final com.instagram.android.feed.a.a.b e()
    {
        return j;
    }

    public final void e(int i1)
    {
        if (!com.instagram.creation.c.a.a(d)) goto _L2; else goto _L1
_L1:
        int j1 = i1 + 1;
_L8:
        if (j1 >= getCount() || j1 >= i1 + 21) goto _L2; else goto _L3
_L3:
        if (getItemViewType(j1) != 0) goto _L5; else goto _L4
_L4:
        l l1 = (l)getItem(j1);
        if (!l1.g()) goto _L5; else goto _L6
_L6:
        com.instagram.common.g.c.a.a().a(l1.a(d));
_L2:
        return;
_L5:
        j1++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final ListView f()
    {
        if (l == null)
        {
            l = (ListView)d(0x102000a);
        }
        return l;
    }

    public final StickyHeaderListView g()
    {
        if (m == null)
        {
            m = (StickyHeaderListView)d(av.sticky_header_list);
        }
        return m;
    }

    public final List g(int i1)
    {
        return r.b(j(i1));
    }

    public final int getCount()
    {
        return o;
    }

    public Object getItem(int i1)
    {
        h(i1);
        if (i(i1))
        {
            return a;
        } else
        {
            return r.a(j(i1));
        }
    }

    public long getItemId(int i1)
    {
        return 0L;
    }

    public int getItemViewType(int i1)
    {
        h(i1);
        if (i(i1))
        {
            return 2;
        }
        if (u == h.a)
        {
            return !((l)getItem(i1)).af() ? 0 : 3;
        } else
        {
            return 1;
        }
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = a(d, i1, viewgroup);
        }
        a(d, view, i1);
        return view;
    }

    public int getViewTypeCount()
    {
        return 4;
    }

    public final void h()
    {
        e.clear();
        h.a();
        l = null;
        m = null;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public final void i()
    {
        j.c();
    }

    public final void i_()
    {
        k.d();
    }

    public boolean isEmpty()
    {
        return r.d() && k() == 0;
    }

    public boolean isEnabled(int i1)
    {
        return false;
    }

    public final void j()
    {
        n = -1;
        if (!a.ad())
        {
            ListView listview = f();
            int i1 = f().getFirstVisiblePosition();
            if (f().getLastVisiblePosition() == -1)
            {
                n = i1;
                return;
            }
            int j1 = listview.getChildCount();
            int k1 = 0;
            while (k1 < j1) 
            {
                View view = listview.getChildAt(k1);
                if (a(f(), view))
                {
                    ConstrainedProgressImageView constrainedprogressimageview = a(listview, k1);
                    if (constrainedprogressimageview != null)
                    {
                        n = ((Integer)constrainedprogressimageview.getTag(av.key_list_position)).intValue();
                        String s1 = (String)constrainedprogressimageview.getTag(av.key_media_id);
                        l l1 = ad.a().b(s1);
                        if (l1 != null && l1.g())
                        {
                            ((ac)((ViewGroup)constrainedprogressimageview.getParent()).getTag()).d().setVideoIconState$736bb5a1(com.instagram.android.widget.o.d);
                        }
                    }
                }
                k1++;
            }
        }
    }

    public int k()
    {
        return 0;
    }

    public final int l()
    {
        return v;
    }

    public final boolean m()
    {
        return r.e();
    }

    public final boolean n()
    {
        return q;
    }

    public void notifyDataSetChanged()
    {
        r.a();
        v();
        super.notifyDataSetChanged();
        q = true;
        w.removeMessages(2);
    }

    public void notifyDataSetInvalidated()
    {
        r.a();
        v();
        super.notifyDataSetInvalidated();
        q = true;
        w.removeMessages(2);
    }

    public final int o()
    {
        return u;
    }

    public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
    {
        j.a();
        h.onScroll(abslistview, i1, j1, k1);
        i.onScroll(abslistview, i1, j1, k1);
        if (k.a() || j1 <= 0) goto _L2; else goto _L1
_L1:
        View view = c(k.b());
        if (view != null) goto _L4; else goto _L3
_L3:
        if (!com.instagram.creation.c.a.a())
        {
            k.h();
        }
_L2:
        if (p != null && j1 > 0 && a.y())
        {
            p.onScroll(abslistview, i1, j1, k1);
        }
        StickyHeaderListView stickyheaderlistview = g();
        if (stickyheaderlistview != null && !n())
        {
            stickyheaderlistview.onScroll(abslistview, i1, j1, k1);
        }
        return;
_L4:
        View view1 = view.findViewById(av.media_group);
        if (Math.min((view1.getBottom() + view.getTop()) - view1.getTop(), abslistview.getHeight() - (view1.getTop() + view.getTop())) < (int)(0.29999999999999999D * (double)view1.getHeight()))
        {
            k.h();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void onScrollStateChanged(AbsListView abslistview, int i1)
    {
        v = i1;
        s();
        if (o() == h.a)
        {
            h.onScrollStateChanged(abslistview, i1);
            g.a(abslistview);
        }
        if (i1 == 0)
        {
            w.sendEmptyMessageDelayed(1, 200L);
        } else
        {
            w.removeMessages(1);
        }
        if (n != -1)
        {
            boolean flag = abslistview instanceof ListView;
            int j1 = 0;
            if (flag)
            {
                j1 = ((ListView)abslistview).getHeaderViewsCount();
            }
            int k1 = abslistview.getFirstVisiblePosition() - j1;
            int l1 = abslistview.getLastVisiblePosition() - j1;
            if (n < k1 || n > l1)
            {
                n = -1;
            }
        }
        if (p != null && a.y())
        {
            p.onScrollStateChanged(abslistview, i1);
        }
    }

    public final int p()
    {
        return com.instagram.android.feed.a.g.c(r);
    }

    public final void q()
    {
        k.i();
    }

    public final boolean r()
    {
        return !k.a();
    }
}
