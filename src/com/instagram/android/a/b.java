// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.a.b.o;
import com.instagram.android.a.b.p;
import com.instagram.ui.d.c;
import java.util.List;

// Referenced classes of package com.instagram.android.a:
//            c

public final class b extends c
    implements Filterable
{

    private Filter a;

    public b(Context context)
    {
        super(context);
    }

    protected final View a()
    {
        View view = LayoutInflater.from(g()).inflate(aw.row_no_results, null);
        ((TextView)view.findViewById(av.row_no_results_textview)).setText(az.no_tags_found);
        return view;
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        return o.a(context);
    }

    protected final void a(View view, Context context, int i)
    {
        o.a((p)view.getTag(), (com.instagram.android.g.c)getItem(i), context);
    }

    public final List b()
    {
        return k;
    }

    public final Filter getFilter()
    {
        if (a == null)
        {
            a = new com.instagram.android.a.c(this);
        }
        return a;
    }
}
