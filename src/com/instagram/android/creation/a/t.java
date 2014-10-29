// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.people.activity.PeopleTagActivity;
import com.instagram.android.widget.IgAutoCompleteTextView;
import com.instagram.android.widget.r;
import com.instagram.android.widget.s;
import com.instagram.android.widget.v;
import com.instagram.android.widget.x;
import com.instagram.base.a.b;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.y.d;
import com.instagram.common.y.f;
import com.instagram.creation.b.a.e;
import com.instagram.creation.b.d.c;
import com.instagram.i.a;
import com.instagram.model.people.PeopleTag;
import com.instagram.venue.model.Venue;
import java.io.File;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Observer;

// Referenced classes of package com.instagram.android.creation.a:
//            af, ag, u, w, 
//            x, v, ab, ac, 
//            ad, ae, a, y, 
//            aa

public final class t extends b
    implements v
{

    Observer a;
    private View aa;
    private View ab;
    private IgAutoCompleteTextView ac;
    private com.instagram.android.creation.a.a ad;
    private com.instagram.creation.b.a.b ae;
    private Location af;
    private Venue ag;
    private Location ah;
    private boolean ai;
    private List aj;
    private boolean ak;
    private h al;
    private af am;
    private ag an;
    private com.facebook.b.e ao;
    private final Handler ap = new w(this);
    private com.instagram.android.creation.a aq;
    BroadcastReceiver b;
    private a c;
    private CompoundButton d;
    private s e;
    private View f;
    private CompoundButton g;
    private TextView h;
    private TextView i;

    public t()
    {
        am = new af(this, (byte)0);
        an = new ag(this, (byte)0);
        a = new u(this);
        b = new com.instagram.android.creation.a.x(this);
    }

    private void V()
    {
        ai = false;
        c.b(a);
        ap.removeMessages(0);
    }

    private void W()
    {
        if (X())
        {
            return;
        }
        ap.sendEmptyMessageDelayed(0, 10000L);
        Location location = c.a();
        if (location != null && c.a(location))
        {
            a(location);
            return;
        } else
        {
            h.setText(az.locating);
            h.setTextColor(o().getColor(as.grey_light));
            c.a(a);
            ai = true;
            return;
        }
    }

    private boolean X()
    {
        if (Y())
        {
            a(Z());
            return true;
        } else
        {
            return false;
        }
    }

    private boolean Y()
    {
        return af != null;
    }

    private Location Z()
    {
        return af;
    }

    static com.facebook.b.e a(t t1, com.facebook.b.e e1)
    {
        t1.ao = e1;
        return e1;
    }

    static com.instagram.creation.b.a.b a(t t1, com.instagram.creation.b.a.b b1)
    {
        t1.ae = b1;
        return b1;
    }

    static Venue a(t t1, Venue venue)
    {
        t1.ag = venue;
        return venue;
    }

    static List a(t t1, List list)
    {
        t1.aj = list;
        return list;
    }

    private void a(Location location)
    {
        ah = location;
        V();
        if (ah == null)
        {
            ae.g();
            return;
        } else
        {
            f.setOnClickListener(new com.instagram.android.creation.a.v(this));
            h.setText(az.name_this_location);
            h.setTextColor(o().getColor(as.grey_light));
            ae.a(location.getLatitude());
            ae.b(location.getLongitude());
            return;
        }
    }

    private void a(View view)
    {
        int k = o().getDimensionPixelSize(at.autocomplete_list_item_height);
        ac.setDropDownMaxNumberItemsDisplayed$2549578(k);
        aq = new com.instagram.android.creation.a(ae, view, this);
        aq.a();
        view.findViewById(av.caption_text_view).setOnFocusChangeListener(new ab(this));
        e = new s(n(), aj);
        e.setOnSharingToggleListener(this);
        int l = o().getDimensionPixelSize(at.row_padding);
        e.setPadding(l, 0, l, 0);
        e.a(ae);
        ((ViewGroup)view.findViewById(av.followers_share_content)).addView(e);
        a(ah);
        d.setOnCheckedChangeListener(new ac(this));
        CompoundButton compoundbutton = d;
        boolean flag;
        if (com.instagram.android.maps.f.a.a() && com.instagram.l.b.a.a().i() && com.instagram.l.b.a.a().n())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        compoundbutton.setChecked(flag);
        if (!com.instagram.android.maps.f.a.a())
        {
            aa.setVisibility(8);
        }
        d();
        aa.setOnClickListener(new ad(this));
        if (ae.n() == com.instagram.model.a.a.a)
        {
            view.findViewById(av.metadata_row_people).setOnClickListener(new ae(this));
            i = (TextView)view.findViewById(av.metadata_textview_people);
            ac();
        } else
        {
            view.findViewById(av.metadata_row_people).setVisibility(8);
        }
        a(ag);
        if (com.instagram.common.y.f.d(n()))
        {
            ad = new com.instagram.android.creation.a.a(view);
            ad.a(0);
            ad.a();
            view.findViewById(av.tab_shadow).setVisibility(0);
            return;
        } else
        {
            ab.setVisibility(8);
            return;
        }
    }

    static void a(t t1, Intent intent)
    {
        t1.b(intent);
    }

    static void a(t t1, Location location)
    {
        t1.a(location);
    }

    static void a(t t1, View view)
    {
        t1.a(view);
    }

    private void a(Venue venue)
    {
        if (ag == null)
        {
            if (!ai)
            {
                g.setChecked(false);
                h.setText(az.name_this_location);
                h.setTextColor(o().getColor(as.grey_light));
            }
            return;
        } else
        {
            g.setChecked(true);
            h.setText(venue.c());
            h.setTextColor(o().getColor(as.accent_blue_medium));
            return;
        }
    }

    static boolean a(t t1)
    {
        t1.ai = false;
        return false;
    }

    private boolean aa()
    {
        return ah != null;
    }

    private void ab()
    {
        Bundle bundle = new Bundle();
        bundle.putString("media_url", (new File(ae.k())).toURI().toString());
        bundle.putParcelableArrayList("people_tags", ae.E());
        Intent intent = new Intent(l(), com/instagram/android/people/activity/PeopleTagActivity);
        intent.putExtras(bundle);
        a(intent, 1000);
    }

    private void ac()
    {
        if (ae.F())
        {
            i.setVisibility(0);
            if (ae.E().size() == 1)
            {
                i.setText(((PeopleTag)ae.E().get(0)).c());
                return;
            } else
            {
                TextView textview = i;
                int k = az.people_tagging_x_people;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(ae.E().size());
                textview.setText(a(k, aobj));
                return;
            }
        } else
        {
            i.setVisibility(8);
            return;
        }
    }

    private void ad()
    {
        c();
        com.instagram.b.c.a.a().a(l(), "next");
    }

    static Location b(t t1, Location location)
    {
        t1.af = location;
        return location;
    }

    static CompoundButton b(t t1)
    {
        return t1.d;
    }

    private void b(Intent intent)
    {
        ak = intent.getBooleanExtra("MetadataFragment.IS_FOLLOWERS_SHARE_SELECTED", false);
    }

    static Location c(t t1, Location location)
    {
        t1.ah = location;
        return location;
    }

    private void c()
    {
        com.instagram.common.analytics.b b1 = com.instagram.p.a.c.b();
        Iterator iterator = aj.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            x x1 = (x)iterator.next();
            if (x1.e() != null)
            {
                String s1 = (new StringBuilder()).append(x1.e()).append("_button_state").toString();
                int k;
                if (x1.a(ae))
                {
                    k = 1;
                } else
                {
                    k = 0;
                }
                b1.a(s1, k);
            }
        } while (true);
        b1.a();
    }

    static void c(t t1)
    {
        t1.ad();
    }

    static com.instagram.creation.b.a.b d(t t1)
    {
        return t1.ae;
    }

    private void d()
    {
        View view = f;
        int k;
        if (d.isChecked())
        {
            k = 0;
        } else
        {
            k = 8;
        }
        view.setVisibility(k);
    }

    static s e(t t1)
    {
        return t1.e;
    }

    static boolean f(t t1)
    {
        t1.ak = true;
        return true;
    }

    static boolean g(t t1)
    {
        return t1.aa();
    }

    static void h(t t1)
    {
        t1.W();
    }

    static void i(t t1)
    {
        t1.d();
    }

    static void j(t t1)
    {
        t1.ab();
    }

    public final void G()
    {
        super.G();
        if (ak)
        {
            ae.d(aq.b());
        }
        com.instagram.creation.b.d.c.a().b();
    }

    public final void H()
    {
        super.H();
        com.instagram.common.y.d.a(b);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_followers_share_metadata, viewgroup, false);
        h = (TextView)view.findViewById(av.geotagTextView);
        d = (CompoundButton)view.findViewById(av.geotagCheckBox);
        f = view.findViewById(av.metadata_row_location);
        g = (CompoundButton)view.findViewById(av.nameLocationCheckBox);
        aa = view.findViewById(av.metadata_row_add_to_your_your_photomap);
        ab = view.findViewById(av.view_switcher_buttons);
        ac = (IgAutoCompleteTextView)view.findViewById(av.caption_text_view);
        return view;
    }

    public final void a(int k, int l, Intent intent)
    {
        if (k == 1000)
        {
            if (l == -1)
            {
                java.util.ArrayList arraylist = intent.getParcelableArrayListExtra("people_tags");
                ae.a(arraylist);
                ac();
            }
        } else
        {
            r.a(k, l, intent, ao, ae);
            if (e != null)
            {
                e.a(ae);
                return;
            }
        }
    }

    public final void a(Context context)
    {
        super.a(context);
        al = (new j(l())).a().a("FollowersShareFragment.INTENT_ACTION_SHARE_EVENT", am).a("MetadataFragment.INTENT_ACTION_SHARE_MODE_NOTIFY", an).a();
        al.b();
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c = com.instagram.i.a.b();
        ((e)l()).a(new y(this));
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ((e)l()).a(new aa(this, bundle, view));
    }

    public final void a(x x1)
    {
        x1.a(ae, this, ao);
        e.a(ae);
    }

    public final void a(Venue venue, String s1)
    {
        ag = venue;
        ae.a(venue);
        ae.j(s1);
        if (ag == null)
        {
            ae.c(false);
        }
        com.instagram.creation.b.d.c.a().b();
        if (E() != null)
        {
            a(venue);
            e.a(ae);
        }
    }

    public final void b()
    {
        Location location;
        if (Y())
        {
            location = Z();
        } else
        {
            location = null;
        }
        com.instagram.android.creation.d.a(r().p(), null, location);
    }

    public final void e(Bundle bundle)
    {
        bundle.putParcelable("location", ah);
        super.e(bundle);
    }

    public final void h(Bundle bundle)
    {
        super.h(bundle);
        if (ae != null)
        {
            a(ag);
        }
    }

    public final String j_()
    {
        return "metadata_followers_share";
    }

    public final void l_()
    {
        V();
        super.l_();
    }

    public final void m_()
    {
        super.m_();
        V();
        e = null;
        if (d != null)
        {
            d.setOnCheckedChangeListener(null);
            d = null;
        }
        f = null;
        g = null;
        h = null;
        aa = null;
        i = null;
        aq = null;
        ac = null;
        ad = null;
    }

    public final void r_()
    {
        super.r_();
        al.c();
    }
}
