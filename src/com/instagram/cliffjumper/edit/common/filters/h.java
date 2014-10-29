// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            GaussianBlurFilter

final class h
    implements android.os.Parcelable.Creator
{

    h()
    {
    }

    private static GaussianBlurFilter a(Parcel parcel)
    {
        return new GaussianBlurFilter(parcel);
    }

    private static GaussianBlurFilter[] a(int i)
    {
        return new GaussianBlurFilter[i];
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
