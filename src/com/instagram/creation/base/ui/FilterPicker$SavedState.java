// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.instagram.creation.base.ui:
//            f

class a extends android.view.Picker.SavedState
{

    public static final android.os.erPicker.SavedState.a CREATOR = new f();
    public int a;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.eToParcel(parcel, i);
        parcel.writeInt(a);
    }


    public (Parcel parcel)
    {
        super(parcel);
        a = parcel.readInt();
    }

    public a(Parcelable parcelable)
    {
        super(parcelable);
    }
}
