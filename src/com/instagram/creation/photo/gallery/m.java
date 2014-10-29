// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.os.Parcel;

final class m
    implements android.os.Parcelable.Creator
{

    m()
    {
    }

    private static ImageManager.ImageListParam a(Parcel parcel)
    {
        return new ImageManager.ImageListParam(parcel, (byte)0);
    }

    private static ImageManager.ImageListParam[] a(int i)
    {
        return new ImageManager.ImageListParam[i];
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
