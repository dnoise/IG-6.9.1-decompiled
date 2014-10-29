// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.loadmore;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.ui.widget.loadmore:
//            e, LoadMoreButton, c

public final class d
{

    public static View a(Context context, ViewGroup viewgroup)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_load_more, viewgroup, false);
        e e1 = new e();
        e.a(e1, (LoadMoreButton)view.findViewById(av.row_load_more_button));
        view.setTag(e1);
        return view;
    }

    public static void a(e e1, c c)
    {
        e.a(e1).a(c);
    }
}
