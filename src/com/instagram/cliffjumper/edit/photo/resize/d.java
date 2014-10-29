// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            ResizeFilter

final class d
    implements android.os.Parcelable.Creator
{

    d()
    {
    }

    private static ResizeFilter a(Parcel parcel)
    {
        boolean flag = true;
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        return new ResizeFilter(flag, (byte)0);
    }

    private static ResizeFilter[] a(int i)
    {
        return new ResizeFilter[i];
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
