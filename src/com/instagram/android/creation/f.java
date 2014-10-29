// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.instagram.android.a.d;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.creation:
//            d

final class f
    implements android.widget.AdapterView.OnItemClickListener
{

    final com.instagram.android.creation.d a;

    f(com.instagram.android.creation.d d1)
    {
        a = d1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        int j;
        if (d.a(a) != null)
        {
            if ((j = i - d.a(a).getHeaderViewsCount()) >= 0 && j < d.b(a).getCount())
            {
                if (d.b(a).b(j))
                {
                    d.a(a.p(), d.c(a).getSearchString(), com.instagram.android.creation.d.d(a));
                    return;
                }
                if (d.b(a).getCount() > 0)
                {
                    com.instagram.venue.model.Venue venue = d.b(a).a(j);
                    if (venue != null)
                    {
                        d.a(a, venue, i);
                        Intent intent = new Intent("NearbyVenuesFragment.VENUE_SELECTED");
                        intent.putExtra("venueId", venue);
                        intent.putExtra("foursquareRequestId", d.e(a));
                        com.instagram.common.y.d.a(intent);
                        return;
                    }
                }
            }
        }
    }
}
