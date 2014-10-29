// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import com.instagram.android.feed.a.a;
import com.instagram.android.feed.a.h;
import com.instagram.android.feed.a.k;
import com.instagram.venue.model.Venue;
import com.instagram.venue.model.b;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            h, cq

public final class cp extends com.instagram.android.fragment.h
{

    private Venue ae;

    public cp()
    {
    }

    static Venue a(cp cp1)
    {
        return cp1.ae;
    }

    private k as()
    {
        return new k(this, Y());
    }

    protected final a X()
    {
        return as();
    }

    protected final int Y()
    {
        return h.b;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (bundle != null)
        {
            ae = (Venue)bundle.getParcelable("LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE");
        } else
        {
            ae = (Venue)b.a().get(j().getString("LocationFeedFragment.ARGUMENT_LOCATION_VENUE_ID"));
        }
        ((k)W()).a(ae);
        c(true);
    }

    public final void a(com.instagram.a.b b1)
    {
        super.a(b1);
        b1.a(ae.c());
    }

    public final void a(Map map)
    {
        map.put("src", "location");
    }

    protected final com.instagram.feed.a.h d(boolean flag)
    {
        return new cq(this, af(), flag);
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        bundle.putParcelable("LocationFeedFragment.SAVED_INSTANCE_STATE_VENUE", ae);
    }

    public final String j_()
    {
        return "feed_location";
    }
}
