// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.os.Parcel;

final class f
    implements android.os.Parcelable.Creator
{

    f()
    {
    }

    private static FilterPicker.SavedState a(Parcel parcel)
    {
        return new FilterPicker.SavedState(parcel);
    }

    private static FilterPicker.SavedState[] a(int i)
    {
        return new FilterPicker.SavedState[i];
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
