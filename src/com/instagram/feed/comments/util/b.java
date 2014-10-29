// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.util;

import android.os.Parcel;

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    private static ReportCommentUtil.ReportCommentDelegate a(Parcel parcel)
    {
        return new ReportCommentUtil.ReportCommentDelegate(parcel, (byte)0);
    }

    private static ReportCommentUtil.ReportCommentDelegate[] a(int i)
    {
        return new ReportCommentUtil.ReportCommentDelegate[i];
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
