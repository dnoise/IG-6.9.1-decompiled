// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.refresh;

import android.os.Parcel;

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static RefreshButton.SavedState a(Parcel parcel)
    {
        return new RefreshButton.SavedState(parcel);
    }

    private static RefreshButton.SavedState[] a(int i)
    {
        return new RefreshButton.SavedState[i];
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
