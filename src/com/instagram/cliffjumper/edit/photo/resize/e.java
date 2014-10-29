// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            UnsharpSharpenFilter

final class e
    implements android.os.Parcelable.Creator
{

    e()
    {
    }

    private static UnsharpSharpenFilter a(Parcel parcel)
    {
        return new UnsharpSharpenFilter(parcel);
    }

    private static UnsharpSharpenFilter[] a(int i)
    {
        return new UnsharpSharpenFilter[i];
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
