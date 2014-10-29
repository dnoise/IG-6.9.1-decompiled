// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.os.Parcel;

final class e
    implements android.os.Parcelable.Creator
{

    e()
    {
    }

    private static EffectPicker.SavedState a(Parcel parcel)
    {
        return new EffectPicker.SavedState(parcel);
    }

    private static EffectPicker.SavedState[] a(int i)
    {
        return new EffectPicker.SavedState[i];
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
