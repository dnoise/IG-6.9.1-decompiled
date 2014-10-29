// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            LuxFilter

final class f
    implements android.os.Parcelable.Creator
{

    f()
    {
    }

    private static LuxFilter a(Parcel parcel)
    {
        return new LuxFilter(parcel);
    }

    private static LuxFilter[] a(int i)
    {
        return new LuxFilter[i];
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
