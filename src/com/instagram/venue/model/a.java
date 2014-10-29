// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.venue.model;

import android.os.Parcel;

// Referenced classes of package com.instagram.venue.model:
//            Venue

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static Venue a(Parcel parcel)
    {
        return new Venue(parcel, (byte)0);
    }

    private static Venue[] a(int i)
    {
        return new Venue[i];
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
