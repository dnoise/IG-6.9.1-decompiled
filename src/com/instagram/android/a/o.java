// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.support.v4.app.k;
import android.view.View;
import android.view.ViewGroup;
import com.instagram.android.a.b.ah;
import com.instagram.android.a.b.aj;
import com.instagram.android.a.b.ak;
import com.instagram.android.a.b.am;
import com.instagram.android.a.b.an;
import com.instagram.android.a.b.ap;
import com.instagram.android.feed.a.b.s;
import com.instagram.android.feed.a.b.w;
import com.instagram.android.maps.b.f;
import com.instagram.ui.d.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.a:
//            q, r, p

public final class o extends a
{

    private final android.support.v4.app.s a;

    public o(k k1)
    {
        super(k1);
        a = k1.d();
    }

    private static ArrayList a(int i, List list)
    {
        ArrayList arraylist = new ArrayList();
        int j = i * 4;
        for (int l = 0; l < 4; l++)
        {
            int i1 = j + l;
            if (i1 < list.size())
            {
                arraylist.add(list.get(i1));
            }
        }

        return arraylist;
    }

    private boolean a(int i)
    {
        return -1 + k.size() == i || getItemViewType(i + 1) != 3;
    }

    protected final View a(Context context, int i, ViewGroup viewgroup)
    {
        switch (getItemViewType(i))
        {
        default:
            return null;

        case 0: // '\0'
            return ah.a(context);

        case 1: // '\001'
            return an.a(context);

        case 2: // '\002'
            return ak.a(context);

        case 3: // '\003'
            return s.a(context, 4);
        }
    }

    protected final void a(View view, Context context, int i)
    {
        switch (getItemViewType(i))
        {
        default:
            return;

        case 0: // '\0'
            ah.a(context, (aj)view.getTag());
            return;

        case 1: // '\001'
            an.a(context, (ap)view.getTag(), (q)getItem(i));
            return;

        case 2: // '\002'
            ak.a(context, (am)view.getTag(), (r)getItem(i));
            return;

        case 3: // '\003'
            s.a((w)view.getTag(), (List)getItem(i), a(i), i);
            break;
        }
    }

    public final void a(ArrayList arraylist)
    {
        k.add(new p(this, (byte)0));
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext();)
        {
            f f1 = (f)iterator.next();
            ArrayList arraylist1;
            int i;
            int j;
            if (f1.h())
            {
                k.add(new q(this, f1, f1.c().size(), f1.i(), (byte)0));
            } else
            {
                k.add(new r(this, f1, f1.f(), f1.c().size(), (byte)0));
            }
            arraylist1 = f1.g();
            i = (int)Math.ceil((double)arraylist1.size() / 4D);
            j = 0;
            while (j < i) 
            {
                k.add(a(j, ((List) (arraylist1))));
                j++;
            }
        }

        notifyDataSetChanged();
    }

    public final int getCount()
    {
        return k.size();
    }

    public final int getItemViewType(int i)
    {
        if (getItem(i) instanceof p)
        {
            return 0;
        }
        if (getItem(i) instanceof q)
        {
            return 1;
        }
        return !(getItem(i) instanceof r) ? 3 : 2;
    }

    public final int getViewTypeCount()
    {
        return 4;
    }

    public final boolean isEnabled(int i)
    {
        return false;
    }
}
