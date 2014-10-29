// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.util:
//            Matrix3

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    private static Matrix3 a(Parcel parcel)
    {
        return new Matrix3(parcel);
    }

    private static Matrix3[] a(int i)
    {
        return new Matrix3[i];
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
