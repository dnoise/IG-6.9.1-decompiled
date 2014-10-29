// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a;

import android.content.Context;
import android.support.v4.app.an;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.az;
import com.instagram.j.a.a.b;
import com.instagram.j.a.a.e;
import com.instagram.j.a.a.h;
import com.instagram.j.a.a.i;
import com.instagram.j.a.a.l;
import com.instagram.j.a.a.m;
import com.instagram.j.a.a.p;
import com.instagram.j.a.a.q;
import com.instagram.j.a.a.s;
import com.instagram.j.a.a.t;
import com.instagram.j.a.a.u;
import com.instagram.j.d.c;
import com.instagram.j.d.g;
import com.instagram.ui.menu.d;
import com.instagram.ui.menu.n;
import java.util.List;

// Referenced classes of package com.instagram.j.a:
//            b

public final class a extends com.instagram.ui.d.a
{

    private final d a;
    private final d b;
    private final d c;
    private an d;
    private com.instagram.j.a.a.a e;

    public a(Context context, an an, com.instagram.j.a.a.a a1)
    {
        super(context);
        a = new d(az.newsfeed_activity_header);
        b = new d(az.newsfeed_new_activity_header);
        c = new d(az.newsfeed_older_header);
        d = an;
        e = a1;
    }

    protected final View a(Context context, int j, ViewGroup viewgroup)
    {
        switch (getItemViewType(j))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 6: // '\006'
            return n.a(context, viewgroup);

        case 0: // '\0'
            return t.a(context);

        case 1: // '\001'
            return i.a(context);

        case 2: // '\002'
            return com.instagram.j.a.a.e.a(context);

        case 3: // '\003'
            return m.a(context);

        case 4: // '\004'
            return q.a(context);

        case 5: // '\005'
            return com.instagram.j.a.a.b.a(context);
        }
    }

    protected final void a(View view, Context context, int j)
    {
        Object obj = getItem(j);
        switch (getItemViewType(j))
        {
        default:
            throw new IndexOutOfBoundsException("Unhandled view type");

        case 6: // '\006'
            n.a(view, (d)getItem(j), true, false);
            return;

        case 0: // '\0'
            t.a((u)view.getTag(), (c)obj);
            return;

        case 1: // '\001'
            i.a(context, (l)view.getTag(), (c)obj, e);
            return;

        case 2: // '\002'
            com.instagram.j.a.a.e.a(context, (h)view.getTag(), (c)obj, e);
            return;

        case 3: // '\003'
            m.a(context, d, (p)view.getTag(), (c)obj, e);
            return;

        case 4: // '\004'
            q.a(context, (s)view.getTag(), (c)obj, e);
            return;

        case 5: // '\005'
            com.instagram.j.a.a.b.a((com.instagram.j.a.a.d)view.getTag(), (c)obj, e);
            return;
        }
    }

    public final void a(List list)
    {
        k.clear();
        k.addAll(list);
        notifyDataSetChanged();
    }

    public final void a(List list, List list1, List list2, List list3)
    {
        boolean flag2;
        boolean flag = true;
        k.clear();
        boolean flag1;
        boolean flag3;
        if (list != null && !list.isEmpty())
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (list1 != null && !list1.isEmpty())
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        if (list2 != null && !list2.isEmpty())
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        if (list3 == null || list3.isEmpty())
        {
            flag = false;
        }
        if (flag1)
        {
            k.addAll(list);
        }
        if (flag2)
        {
            k.addAll(list1);
        }
        if (flag3)
        {
            k.add(b);
            k.addAll(list2);
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!flag3) goto _L4; else goto _L3
_L3:
        k.add(c);
_L6:
        k.addAll(list3);
_L2:
        notifyDataSetChanged();
        return;
_L4:
        if (flag2)
        {
            k.add(a);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final Object getItem(int j)
    {
        if (j >= 0 && j < getCount())
        {
            return k.get(j);
        } else
        {
            throw new IndexOutOfBoundsException();
        }
    }

    public final int getItemViewType(int j)
    {
        if (j >= getCount())
        {
            throw new IndexOutOfBoundsException("Unsupported item view type");
        }
        Object obj = getItem(j);
        if (obj instanceof d)
        {
            return 6;
        }
        if (obj instanceof c)
        {
            switch (b.a[((c)obj).a().ordinal()])
            {
            default:
                throw new IndexOutOfBoundsException("Unsupported item view type");

            case 1: // '\001'
                return 0;

            case 2: // '\002'
                return 1;

            case 3: // '\003'
                return 2;

            case 4: // '\004'
                return 3;

            case 5: // '\005'
                return 4;

            case 6: // '\006'
                return 5;
            }
        } else
        {
            throw new IndexOutOfBoundsException("Unsupported item view type");
        }
    }

    public final int getViewTypeCount()
    {
        return 7;
    }

    public final boolean isEnabled(int j)
    {
        return !(getItem(j) instanceof d);
    }
}
