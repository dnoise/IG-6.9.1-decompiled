// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.os.Parcel;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            TiltShiftBlurFilter

final class a
    implements android.os.Parcelable.Creator
{

    a()
    {
    }

    private static TiltShiftBlurFilter a(Parcel parcel)
    {
        return new TiltShiftBlurFilter(parcel, (byte)0);
    }

    private static TiltShiftBlurFilter[] a(int i)
    {
        return new TiltShiftBlurFilter[i];
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
