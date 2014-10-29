// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Parcel;

// Referenced classes of package android.support.v4.app:
//            BackStackState

final class d
    implements android.os.Parcelable.Creator
{

    d()
    {
    }

    private static BackStackState a(Parcel parcel)
    {
        return new BackStackState(parcel);
    }

    private static BackStackState[] a(int i)
    {
        return new BackStackState[i];
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
