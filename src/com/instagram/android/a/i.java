// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;

// Referenced classes of package com.instagram.android.a:
//            j

public final class i
{

    public static View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        View view = layoutinflater.inflate(aw.row_no_results, viewgroup, false);
        j j1 = new j();
        view.setTag(j1);
        j1.a = (TextView)view.findViewById(av.row_no_results_textview);
        return view;
    }

    public static void a(j j1)
    {
        j1.a.setText(az.no_locations_found);
    }
}
