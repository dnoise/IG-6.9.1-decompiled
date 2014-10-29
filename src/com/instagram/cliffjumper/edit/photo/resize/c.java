// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            LanczosFilter

final class c
    implements android.os.Parcelable.Creator
{

    c()
    {
    }

    private static LanczosFilter a()
    {
        return new LanczosFilter();
    }

    private static LanczosFilter[] a(int i)
    {
        return new LanczosFilter[i];
    }

    public final Object createFromParcel(Parcel parcel)
    {
        return a();
    }

    public final Object[] newArray(int i)
    {
        return a(i);
    }
}
