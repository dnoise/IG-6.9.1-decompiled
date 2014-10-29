// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.opengl.GLES20;
import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.d.c;
import com.instagram.filterkit.e.a;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            a

public class BorderFilter extends BaseSimpleFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.common.effectfilter.a();
    private final String a;

    private BorderFilter(Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
    }

    BorderFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public BorderFilter(String s)
    {
        a = s;
    }

    protected final void a(b b1, a a1, com.instagram.filterkit.e.c c1)
    {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(1, 771);
    }

    protected final b b(c c1)
    {
        int i = ShaderBridge.a("Identity");
        if (i == 0)
        {
            return null;
        } else
        {
            b b1 = new b(i);
            b1.a("image", c1.a(this, a).b());
            return b1;
        }
    }

    public final boolean d()
    {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(a);
    }

    protected final void y_()
    {
        GLES20.glDisable(3042);
    }

    protected final boolean z_()
    {
        return true;
    }

}
