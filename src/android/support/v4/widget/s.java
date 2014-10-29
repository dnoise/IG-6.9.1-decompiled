// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.os.Parcel;

final class s
    implements android.os.Parcelable.Creator
{

    s()
    {
    }

    private static SlidingPaneLayout.SavedState a(Parcel parcel)
    {
        return new SlidingPaneLayout.SavedState(parcel, (byte)0);
    }

    private static SlidingPaneLayout.SavedState[] a(int i)
    {
        return new SlidingPaneLayout.SavedState[i];
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
