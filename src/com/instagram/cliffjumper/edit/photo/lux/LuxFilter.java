// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.b.c;
import com.instagram.filterkit.e.a;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            c, f, a

public class LuxFilter extends BaseSimpleFilter
    implements com.instagram.cliffjumper.edit.photo.lux.c
{

    public static final android.os.Parcelable.Creator CREATOR = new f();
    private final FloatBuffer a;
    private int c;
    private com.instagram.cliffjumper.edit.photo.lux.a d;

    public LuxFilter()
    {
        a = FloatBuffer.allocate(1);
        c = -1;
    }

    public LuxFilter(Parcel parcel)
    {
        super(parcel);
        a = FloatBuffer.allocate(1);
        c = -1;
        a(parcel.readInt());
    }

    public final void a(int i)
    {
        c = i;
        a.put(0, (float)i / 100F);
        n();
    }

    public final void a(com.instagram.cliffjumper.edit.photo.lux.a a1)
    {
        d = a1;
    }

    protected final void a(b b1, a a1, com.instagram.filterkit.e.c c1)
    {
        b1.a("u_strength", a);
        b1.a("cdf", d.b(this));
        b1.a("image", a1.b(), c.a);
    }

    public final void a(com.instagram.filterkit.d.c c1)
    {
        super.a(c1);
        com.instagram.cliffjumper.edit.photo.lux.a a1 = d;
        c1.a();
        a1.a(this);
    }

    protected final b b(com.instagram.filterkit.d.c c1)
    {
        int i = ShaderBridge.a("StarLight");
        if (i == 0)
        {
            return null;
        } else
        {
            return new b(i);
        }
    }

    public final int e()
    {
        return c;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeInt(c);
    }

}
