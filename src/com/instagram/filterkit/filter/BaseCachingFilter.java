// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.filter;

import android.os.Parcel;
import com.instagram.filterkit.e.b;
import com.instagram.filterkit.e.c;
import com.instagram.filterkit.e.d;

// Referenced classes of package com.instagram.filterkit.filter:
//            IgFilter

public abstract class BaseCachingFilter
    implements IgFilter
{

    private b a;
    protected boolean b;
    private boolean c;

    protected BaseCachingFilter()
    {
        b = true;
    }

    protected BaseCachingFilter(Parcel parcel)
    {
        boolean flag = true;
        super();
        b = flag;
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        c = flag;
    }

    public void B_()
    {
        n();
    }

    public final boolean D_()
    {
        return c;
    }

    public final boolean E_()
    {
        return b;
    }

    protected final c a(com.instagram.filterkit.d.c c1, c c2)
    {
        if (com.instagram.filterkit.e.d.a(c2))
        {
            if (d())
            {
                throw new IllegalArgumentException("Passing in a null output surface to an overlay filter");
            }
            b b1;
            if (c)
            {
                if (a != null && c2.c() != a.c())
                {
                    a_(c1);
                }
                if (a == null)
                {
                    a = c1.a(c2.c(), this);
                }
                b1 = a;
            } else
            {
                if (a != null)
                {
                    a_(c1);
                }
                b1 = c1.a(c2.c());
            }
            b = false;
            return b1;
        } else
        {
            return c2;
        }
    }

    public void a(com.instagram.filterkit.d.c c1)
    {
        if (a != null)
        {
            c1.c(a, this);
            a = null;
        }
    }

    public final void a(boolean flag)
    {
        c = flag;
    }

    public final void a_(com.instagram.filterkit.d.c c1)
    {
        c1.a(a, this);
        a = null;
    }

    public final b c()
    {
        if (b || !c)
        {
            return null;
        } else
        {
            return a;
        }
    }

    public boolean d()
    {
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    protected final void n()
    {
        b = true;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j;
        if (c)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }
}
