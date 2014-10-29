// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.venue.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.a.l;

// Referenced classes of package com.instagram.venue.model:
//            a, c, b

public class Venue
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    Double g;
    Double h;
    private boolean i;

    public Venue()
    {
    }

    private Venue(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readString();
        c = parcel.readString();
        d = parcel.readString();
        f = parcel.readString();
        g = (Double)parcel.readValue(null);
        h = (Double)parcel.readValue(null);
    }

    Venue(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public static Venue a(l l, boolean flag)
    {
        Venue venue = com.instagram.venue.model.c.a(l);
        if (flag)
        {
            Venue venue1 = (Venue)com.instagram.venue.model.b.a().get(venue.b());
            if (venue1 != null)
            {
                venue1.a(venue);
                return venue1;
            } else
            {
                com.instagram.venue.model.b.a().put(venue.b(), venue);
                return venue;
            }
        } else
        {
            return venue;
        }
    }

    private void a(Venue venue)
    {
        if (venue.a != null)
        {
            a = venue.a;
        }
        if (venue.b != null)
        {
            b = venue.b;
        }
        if (venue.c != null)
        {
            c = venue.c;
        }
        if (venue.d != null)
        {
            d = venue.d;
        }
        if (venue.f != null)
        {
            f = venue.f;
        }
        if (venue.g != null)
        {
            g = venue.g;
        }
        if (venue.h != null)
        {
            h = venue.h;
        }
    }

    public static String f(String s)
    {
        return s.replace("&apos;", "'").replace("&quot;", "\"").replace("&amp;", "&").replace("&gt;", ">").replace("&lt;", "<");
    }

    final Venue a()
    {
        if (e != null)
        {
            d = e;
        }
        return this;
    }

    public final void a(Double double1)
    {
        g = double1;
    }

    public final void a(String s)
    {
        a = s;
    }

    public final String b()
    {
        return a;
    }

    public final void b(Double double1)
    {
        h = double1;
    }

    public final void b(String s)
    {
        b = s;
    }

    public final String c()
    {
        return b;
    }

    public final void c(String s)
    {
        c = s;
    }

    public final String d()
    {
        return c;
    }

    public final void d(String s)
    {
        d = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public final String e()
    {
        return d;
    }

    public final void e(String s)
    {
        f = s;
    }

    public final String f()
    {
        return f;
    }

    public final Double g()
    {
        return g;
    }

    public final Double h()
    {
        return h;
    }

    public final boolean i()
    {
        return i;
    }

    public final void j()
    {
        i = true;
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        parcel.writeString(a);
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeString(f);
        parcel.writeValue(g);
        parcel.writeValue(h);
    }

}
