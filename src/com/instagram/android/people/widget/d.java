// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Filter;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.k.a.a;
import com.instagram.android.k.a.f;
import com.instagram.model.people.b;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.android.people.widget:
//            a

public final class d extends a
{

    private b o;

    private d(Context context, an an, s s, boolean flag, boolean flag1, b b1, h h)
    {
        super(context, an, s, flag, flag1, h);
        o = b1;
    }

    d(Context context, an an, s s, boolean flag, boolean flag1, b b1, h h, 
            byte byte0)
    {
        this(context, an, s, flag, flag1, b1, h);
    }

    protected final View a()
    {
        View view = LayoutInflater.from(g()).inflate(aw.row_no_results_dark, null);
        ((TextView)view.findViewById(av.row_no_results_textview)).setText(az.no_users_found);
        return view;
    }

    public final f b()
    {
        if (h == null)
        {
            h = new com.instagram.android.people.d.a();
        }
        return h;
    }

    public final Filter getFilter()
    {
        if (g == null)
        {
            g = new com.instagram.android.people.widget.a(this, o);
        }
        return g;
    }
}
