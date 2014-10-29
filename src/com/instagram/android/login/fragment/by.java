// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Parcel;

// Referenced classes of package com.instagram.android.login.fragment:
//            RegisterParameters

final class by
    implements android.os.Parcelable.Creator
{

    by()
    {
    }

    private static RegisterParameters a(Parcel parcel)
    {
        return RegisterParameters.a(parcel);
    }

    private static RegisterParameters[] a(int i)
    {
        return new RegisterParameters[i];
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public final Object[] newArray(int i)
    {
        return a(i);
    }
}
