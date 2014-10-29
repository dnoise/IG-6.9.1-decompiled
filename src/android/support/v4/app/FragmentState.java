// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.app:
//            ad, Fragment, r, u

final class FragmentState
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new ad();
    final String a;
    final int b;
    final int c;
    final boolean d;
    final int e;
    final int f;
    final String g;
    final boolean h;
    final boolean i;
    final Bundle j;
    Bundle k;
    Fragment l;

    public FragmentState(Parcel parcel)
    {
        boolean flag = true;
        super();
        a = parcel.readString();
        b = parcel.readInt();
        c = parcel.readInt();
        boolean flag1;
        boolean flag2;
        if (parcel.readInt() != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        d = flag1;
        e = parcel.readInt();
        f = parcel.readInt();
        g = parcel.readString();
        if (parcel.readInt() != 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        h = flag2;
        if (parcel.readInt() == 0)
        {
            flag = false;
        }
        i = flag;
        j = parcel.readBundle();
        k = parcel.readBundle();
    }

    public FragmentState(Fragment fragment)
    {
        a = fragment.getClass().getName();
        b = fragment.o;
        c = fragment.p;
        d = fragment.y;
        e = fragment.G;
        f = fragment.H;
        g = fragment.I;
        h = fragment.L;
        i = fragment.K;
        j = fragment.r;
    }

    public final Fragment a(r r1, Fragment fragment)
    {
        if (l != null)
        {
            return l;
        }
        if (j != null)
        {
            j.setClassLoader(r1.a().getClassLoader());
        }
        l = Fragment.a(r1.a(), a, j);
        if (k != null)
        {
            k.setClassLoader(r1.a().getClassLoader());
            l.m = k;
        }
        l.a(b, fragment);
        l.p = c;
        l.y = d;
        l.A = true;
        l.G = e;
        l.H = f;
        l.I = g;
        l.L = h;
        l.K = i;
        l.C = r1.g();
        if (u.a)
        {
            (new StringBuilder("Instantiated fragment ")).append(l);
        }
        return l;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        int j1 = 1;
        parcel.writeString(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        int k1;
        int l1;
        if (d)
        {
            k1 = j1;
        } else
        {
            k1 = 0;
        }
        parcel.writeInt(k1);
        parcel.writeInt(e);
        parcel.writeInt(f);
        parcel.writeString(g);
        if (h)
        {
            l1 = j1;
        } else
        {
            l1 = 0;
        }
        parcel.writeInt(l1);
        if (!i)
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
        parcel.writeBundle(j);
        parcel.writeBundle(k);
    }

}
