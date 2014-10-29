// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.instagram.feed.survey:
//            b

public class <init>
    implements Parcelable
{

    public static final android.os.PossibleAnswer.c CREATOR = new b();
    String a;
    String b;
    int c;
    private boolean d;

    public final String a()
    {
        return a;
    }

    public final void a(boolean flag)
    {
        d = flag;
    }

    public final String b()
    {
        return b;
    }

    public final int c()
    {
        return c;
    }

    public final void d()
    {
        c = 1 + c;
    }

    public int describeContents()
    {
        return 0;
    }

    public final boolean e()
    {
        return d;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(b);
        parcel.writeString(a);
        parcel.writeInt(c);
    }


    ()
    {
    }

    private (Parcel parcel)
    {
        b = parcel.readString();
        a = parcel.readString();
        c = parcel.readInt();
    }

    c(Parcel parcel, byte byte0)
    {
        this(parcel);
    }
}
