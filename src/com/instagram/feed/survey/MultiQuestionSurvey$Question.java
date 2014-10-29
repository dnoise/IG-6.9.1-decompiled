// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            c, d

public class <init>
    implements Parcelable
{

    public static final android.os.urvey.Question.d CREATOR = new c();
    String a;
    String b;
    d c;
    int d;
    List e;

    public final String a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final List c()
    {
        return e;
    }

    public final int d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public final void e()
    {
        d = 1 + d;
    }

    public final boolean f()
    {
        return c == d.b;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeTypedList(e);
        parcel.writeInt(d);
    }


    nswer()
    {
    }

    private nswer(Parcel parcel)
    {
        a = parcel.readString();
        e = new ArrayList();
        parcel.readTypedList(e, nswer.CREATOR);
        d = parcel.readInt();
    }

    d(Parcel parcel, byte byte0)
    {
        this(parcel);
    }
}
