// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            j

public class TextureInfo
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new j();
    public final String a;
    public final String b;

    private TextureInfo(Parcel parcel)
    {
        a = parcel.readString();
        b = parcel.readString();
    }

    TextureInfo(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public TextureInfo(String s, String s1)
    {
        a = s;
        b = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(a);
        parcel.writeString(b);
    }

}
