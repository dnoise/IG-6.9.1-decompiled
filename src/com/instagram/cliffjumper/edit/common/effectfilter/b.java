// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            CjFilter

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    private static CjFilter a(Parcel parcel)
    {
        return new CjFilter(parcel, (byte)0);
    }

    private static CjFilter[] a(int i)
    {
        return new CjFilter[i];
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
