// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.refresh;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.instagram.ui.widget.refresh:
//            a

class a extends android.view.hButton.SavedState
{

    public static final android.os.eshButton.SavedState.a CREATOR = new a();
    int a;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.ToParcel(parcel, i);
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
