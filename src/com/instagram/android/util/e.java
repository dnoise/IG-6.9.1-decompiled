// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.os.Parcel;

final class e
    implements android.os.Parcelable.Creator
{

    e()
    {
    }

    private static ReportMediaUtil.ReportMediaDelegate a(Parcel parcel)
    {
        return new ReportMediaUtil.ReportMediaDelegate(parcel, (byte)0);
    }

    private static ReportMediaUtil.ReportMediaDelegate[] a(int i)
    {
        return new ReportMediaUtil.ReportMediaDelegate[i];
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
