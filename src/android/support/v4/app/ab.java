// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Parcel;

// Referenced classes of package android.support.v4.app:
//            FragmentManagerState

final class ab
    implements android.os.Parcelable.Creator
{

    ab()
    {
    }

    private static FragmentManagerState a(Parcel parcel)
    {
        return new FragmentManagerState(parcel);
    }

    private static FragmentManagerState[] a(int i)
    {
        return new FragmentManagerState[i];
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
