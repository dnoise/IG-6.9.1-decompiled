// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            IdentityFilter

final class b
    implements android.os.Parcelable.Creator
{

    b()
    {
    }

    private static IdentityFilter a(Parcel parcel)
    {
        return new IdentityFilter(parcel, (byte)0);
    }

    private static IdentityFilter[] a(int i)
    {
        return new IdentityFilter[i];
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
