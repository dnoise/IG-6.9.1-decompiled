// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.e;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.y.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.instagram.android.e:
//            c

public final class b extends ArrayAdapter
{

    private final Context a;
    private final List b;
    private final ArrayList c = new ArrayList();

    public b(Context context, List list)
    {
        super(context, aw.row_menu_item, list);
        a = context;
        b = list;
        c.addAll(b);
    }

    public final void a(String s)
    {
        String s1 = s.toLowerCase(Locale.getDefault());
        b.clear();
        if (e.c(s1))
        {
            b.addAll(c);
        } else
        {
            Iterator iterator = c.iterator();
            while (iterator.hasNext()) 
            {
                c c1 = (c)iterator.next();
                if (e.a(c1.b(), s1, 0) || e.a(c1.a(), s1, 0) || e.a((new StringBuilder("+")).append(c1.a()).toString(), s1, 0))
                {
                    b.add(c1);
                }
            }
        }
        notifyDataSetChanged();
    }

    public final View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = LayoutInflater.from(a).inflate(aw.row_menu_item, null);
            view.setPadding(0, 0, 0, 0);
        }
        ((TextView)view.findViewById(av.row_simple_text_textview)).setText(((c)getItem(i)).b());
        return view;
    }
}
