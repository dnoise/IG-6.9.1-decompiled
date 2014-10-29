// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.sharelater;

import android.os.Parcel;

// Referenced classes of package com.instagram.sharelater:
//            ShareLaterMedia

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static ShareLaterMedia a(Parcel parcel)
    {
        return new ShareLaterMedia(parcel, (byte)0);
    }

    private static ShareLaterMedia[] a(int i)
    {
        return new ShareLaterMedia[i];
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
