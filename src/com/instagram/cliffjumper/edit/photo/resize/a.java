// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            AdvancedResizeFilter

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static AdvancedResizeFilter a(Parcel parcel)
    {
        return new AdvancedResizeFilter(parcel, (byte)0);
    }

    private static AdvancedResizeFilter[] a(int i)
    {
        return new AdvancedResizeFilter[i];
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
