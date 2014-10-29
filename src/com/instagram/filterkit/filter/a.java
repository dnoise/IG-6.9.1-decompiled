// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.filter;

import android.os.Parcel;

// Referenced classes of package com.instagram.filterkit.filter:
//            IgFilterGroup

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static IgFilterGroup a(Parcel parcel)
    {
        return new IgFilterGroup(parcel, (byte)0);
    }

    private static IgFilterGroup[] a(int i)
    {
        return new IgFilterGroup[i];
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
