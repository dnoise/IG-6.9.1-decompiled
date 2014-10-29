// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.login.fragment:
//            by

public class RegisterParameters
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new by();
    private final String a;
    private final List b;
    private final String c;
    private final String d;

    public RegisterParameters()
    {
        a = null;
        b = new ArrayList();
        c = null;
        d = null;
    }

    public RegisterParameters(String s, List list, String s1, String s2)
    {
        a = s;
        b = list;
        c = s1;
        d = s2;
    }

    static RegisterParameters a(Parcel parcel)
    {
        return b(parcel);
    }

    private static RegisterParameters b(Parcel parcel)
    {
        return new RegisterParameters(parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readString());
    }

    public final String a()
    {
        return a;
    }

    public final List b()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeStringList(b);
        parcel.writeString(c);
        parcel.writeString(d);
    }

}
