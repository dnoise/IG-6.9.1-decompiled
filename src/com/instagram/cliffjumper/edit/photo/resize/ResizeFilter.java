// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;
import com.instagram.filterkit.e.c;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.l.a.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            d, IdentityFilter, LanczosFilter

public class ResizeFilter
    implements g, IgFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.photo.resize.d();
    private static final Class a = com/instagram/cliffjumper/edit/photo/resize/ResizeFilter;
    private boolean b;
    private IgFilter c;
    private IgFilter d;

    public ResizeFilter()
    {
        c = new IdentityFilter();
        d = new LanczosFilter();
        b = com.instagram.l.a.b.a().g();
    }

    private ResizeFilter(boolean flag)
    {
        c = new IdentityFilter();
        d = new LanczosFilter();
        b = flag;
    }

    ResizeFilter(boolean flag, byte byte0)
    {
        this(flag);
    }

    private void a(String s)
    {
        com.instagram.common.analytics.a.a().a((new com.instagram.common.analytics.b("resize", this)).a("type", s));
    }

    private c b(com.instagram.filterkit.d.c c1, com.instagram.filterkit.e.a a1, c c2)
    {
_L2:
        int k;
        while (k > 1) 
        {
            c c4 = com.instagram.filterkit.e.d.b((int)((float)a1.c() / 1.9F));
            com.instagram.filterkit.e.b b1 = (com.instagram.filterkit.e.b)c.a(c1, a1, c4);
            c1.a(a1, null);
            k--;
            a1 = b1;
        }
        c c3;
        if (!com.instagram.filterkit.e.d.a(c2))
        {
            c2 = com.instagram.filterkit.e.d.b(c2.c());
        }
        c3 = c.a(c1, a1, c2);
        c1.a(a1, null);
        return c3;
        int i = (int)(1.9F * (float)c2.c());
        int j = 1;
        for (; a1.c() > i; i = (int)(1.9F * (float)i))
        {
            j++;
        }

        k = j;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void B_()
    {
        d.B_();
        c.B_();
    }

    public final boolean D_()
    {
        return c.D_();
    }

    public final boolean E_()
    {
        if (b)
        {
            return d.E_();
        } else
        {
            return c.E_();
        }
    }

    public final c a(com.instagram.filterkit.d.c c1, com.instagram.filterkit.e.a a1, c c2)
    {
        if (!b)
        {
            a("identity_preference");
            return b(c1, a1, c2);
        }
        c c3 = d.a(c1, a1, c2);
        if (c3 != null)
        {
            a("advanced");
            return c3;
        } else
        {
            com.facebook.e.a.a.a(a, "Advanced resize failed");
            b = false;
            d.a(c1);
            com.instagram.l.a.b.a().d(false);
            a("identity_fallback");
            return b(c1, a1, c2);
        }
    }

    public final void a(com.instagram.filterkit.d.c c1)
    {
    }

    public final void a(boolean flag)
    {
        d.a(flag);
        c.a(flag);
    }

    public final void a_(com.instagram.filterkit.d.c c1)
    {
        d.a_(c1);
        c.a_(c1);
    }

    public final com.instagram.filterkit.e.b c()
    {
        if (b)
        {
            return d.c();
        } else
        {
            return c.c();
        }
    }

    public final boolean d()
    {
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String j_()
    {
        return "ig_filter";
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        int j;
        if (b)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        parcel.writeInt(j);
    }

}
