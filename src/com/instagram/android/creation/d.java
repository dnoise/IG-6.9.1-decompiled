// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ListView;
import android.widget.TextView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.android.foursquare.NearbyVenuesService;
import com.instagram.base.a.b;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.t.a;
import com.instagram.common.y.e;
import com.instagram.common.y.f;
import com.instagram.ui.widget.refresh.RefreshButton;
import com.instagram.ui.widget.searchedittext.SearchEditText;
import com.instagram.venue.model.Venue;
import java.util.Observer;

// Referenced classes of package com.instagram.android.creation:
//            e, f, j, g, 
//            h, i

public final class d extends b
    implements a
{

    private final String a = "NearbyVenuesFragment";
    private com.instagram.i.a aa;
    private Observer ab;
    private android.widget.AdapterView.OnItemClickListener ac;
    private String b;
    private String c;
    private com.instagram.android.a.d d;
    private RefreshButton e;
    private ListView f;
    private SearchEditText g;
    private String h;
    private h i;

    public d()
    {
        ab = new com.instagram.android.creation.e(this);
        ac = new com.instagram.android.creation.f(this);
    }

    private void V()
    {
        if (e != null)
        {
            e.setDisplayedChild(0);
        }
        aa.b(ab);
    }

    private void W()
    {
        e.setDisplayedChild(1);
        aa.a(ab);
    }

    private void X()
    {
        if (E() != null)
        {
            com.instagram.common.y.f.a(l(), E());
        }
        l().getWindow().setSoftInputMode(3);
    }

    static ListView a(d d1)
    {
        return d1.f;
    }

    static String a(d d1, String s)
    {
        d1.b = s;
        return s;
    }

    private void a(Location location)
    {
        V();
        d.a(location);
        a(location, c);
    }

    private void a(Location location, String s)
    {
        e.setDisplayedChild(1);
        Intent intent = new Intent(l(), com/instagram/android/foursquare/NearbyVenuesService);
        intent.putExtra("location", location);
        intent.putExtra("searchString", s);
        l().startService(intent);
    }

    public static void a(s s, String s1, Location location)
    {
        Bundle bundle = new Bundle();
        bundle.putString("searchString", s1);
        if (location != null)
        {
            bundle.putParcelable("INTENT_EXTRA_PHOTO_LOCATION", location);
        }
        com.instagram.base.a.a.a a1 = (new com.instagram.base.a.a.a(s)).a(new d(), bundle);
        String s2;
        if (s1 == null)
        {
            s2 = "NearbyVenuesFragment";
        } else
        {
            s2 = null;
        }
        a1.c(s2).a();
    }

    private void a(LayoutInflater layoutinflater)
    {
        View view = layoutinflater.inflate(aw.row_search_venue_edit, null);
        g = (SearchEditText)view.findViewById(av.row_search_edit_text);
        g.setOnFilterTextListener(new com.instagram.android.creation.j(this));
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(n().getResources().getColor(as.grey_light));
        g.setClearButtonColorFilter(colorfilter);
        g.getCompoundDrawables()[0].mutate().setColorFilter(colorfilter);
        com.instagram.common.analytics.a.a().a(g);
        f.addHeaderView(view);
    }

    static void a(d d1, Intent intent)
    {
        d1.b(intent);
    }

    static void a(d d1, Location location)
    {
        d1.a(location);
    }

    static void a(d d1, Location location, String s)
    {
        d1.a(location, s);
    }

    static void a(d d1, Venue venue, int l)
    {
        d1.a(venue, l);
    }

    private void a(Venue venue, int l)
    {
        if (venue.f() == "foursquare")
        {
            com.instagram.common.analytics.b b1 = new com.instagram.common.analytics.b("foursquare_venue_select", this);
            Location location = d.a();
            if (location != null)
            {
                Object aobj[] = new Object[1];
                aobj[0] = Double.valueOf(location.getLatitude());
                b1.a("lat", com.instagram.common.y.e.a("%.8f", aobj));
                Object aobj1[] = new Object[1];
                aobj1[0] = Double.valueOf(location.getLongitude());
                b1.a("lng", com.instagram.common.y.e.a("%.8f", aobj1));
                if (c != null)
                {
                    b1.a("query", c);
                }
                b1.a("index", l);
                b1.a("place_name", venue.c());
                b1.a("place_id", venue.e());
                com.instagram.common.analytics.a.a().a(b1);
                return;
            }
        }
    }

    static com.instagram.android.a.d b(d d1)
    {
        return d1.d;
    }

    private void b(Intent intent)
    {
        if (e != null)
        {
            e.setDisplayedChild(0);
        }
        if (intent.hasExtra("requestId"))
        {
            h = intent.getStringExtra("requestId");
        }
        if (intent.hasExtra("venues"))
        {
            java.util.ArrayList arraylist = intent.getParcelableArrayListExtra("venues");
            d.a(arraylist, intent.getBooleanExtra("isFoursquareLocation", false));
            return;
        } else
        {
            d.b();
            return;
        }
    }

    private Location c()
    {
        if (j().containsKey("INTENT_EXTRA_PHOTO_LOCATION"))
        {
            return (Location)j().getParcelable("INTENT_EXTRA_PHOTO_LOCATION");
        } else
        {
            return aa.a();
        }
    }

    static SearchEditText c(d d1)
    {
        return d1.g;
    }

    private Location d()
    {
        if (j().containsKey("INTENT_EXTRA_PHOTO_LOCATION"))
        {
            return (Location)j().getParcelable("INTENT_EXTRA_PHOTO_LOCATION");
        } else
        {
            return null;
        }
    }

    static Location d(d d1)
    {
        return d1.d();
    }

    static String e(d d1)
    {
        return d1.h;
    }

    static com.instagram.i.a f(d d1)
    {
        return d1.aa;
    }

    static String g(d d1)
    {
        return d1.c;
    }

    static void h(d d1)
    {
        d1.W();
    }

    static String i(d d1)
    {
        return d1.b;
    }

    public final void H()
    {
        super.H();
        i.c();
        V();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.fragment_nearby_venues, null);
        f = (ListView)view.findViewById(0x102000a);
        f.setOnItemClickListener(ac);
        int l = o().getDimensionPixelSize(at.row_text_padding);
        f.setPadding(0, l, 0, l);
        f.setClipToPadding(false);
        View view1;
        if (c == null)
        {
            a(layoutinflater);
        } else
        {
            String s = (new StringBuilder("\u201C")).append(c).append("\u201D").toString();
            ((TextView)view.findViewById(av.action_bar_textview_title)).setText(s);
        }
        view1 = view.findViewById(av.action_bar_button_back);
        view1.setBackgroundDrawable(new com.instagram.a.d(o(), com.instagram.a.e.a, 5));
        view1.setOnClickListener(new com.instagram.android.creation.g(this));
        e = (RefreshButton)view.findViewById(av.action_bar_button_refresh);
        e.setOnClickListener(new com.instagram.android.creation.h(this));
        e.setBackgroundResource(au.action_bar_dark_button_background);
        f.setAdapter(d);
        if (g != null && b != null)
        {
            g.setText(b);
        }
        return view;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c = j().getString("searchString");
        aa = com.instagram.i.a.b();
        j j1 = new j(n());
        d = new com.instagram.android.a.d(n());
        i = j1.a().a("com.instagram.android.creation.NearbyVenuesFragment.venuesFetched", new i(this)).a();
        i.b();
        if (c == null && bundle != null)
        {
            b = bundle.getString("currentSearch");
        }
    }

    public final boolean b()
    {
        if (c == null)
        {
            com.instagram.common.y.d.a("NearbyVenuesFragment.VENUE_CLEARED");
        }
        return false;
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        bundle.putString("currentSearch", b);
    }

    public final String j_()
    {
        return "nearby_venues";
    }

    public final void k_()
    {
        super.k_();
        Location location = c();
        if (location != null && aa.a(location))
        {
            d.a(location);
        } else
        {
            W();
        }
        a(location, c);
    }

    public final void l_()
    {
        super.l_();
        V();
        X();
    }

    public final void m_()
    {
        super.m_();
        if (g != null)
        {
            com.instagram.common.analytics.a.a().b(g);
        }
        f = null;
        c = null;
        e = null;
        g = null;
    }
}
