// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            BasicAdjustFilter

final class e
    implements android.os.Parcelable.Creator
{

    e()
    {
    }

    private static BasicAdjustFilter a(Parcel parcel)
    {
        return new BasicAdjustFilter(parcel, (byte)0);
    }

    private static BasicAdjustFilter[] a(int i)
    {
        return new BasicAdjustFilter[i];
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
