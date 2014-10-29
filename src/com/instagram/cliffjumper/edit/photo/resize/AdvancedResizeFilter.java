// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.c;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            a

public class AdvancedResizeFilter extends BaseSimpleFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.photo.resize.a();
    private static final Class a = com/instagram/cliffjumper/edit/photo/resize/AdvancedResizeFilter;
    private final FloatBuffer c;
    private final FloatBuffer d;

    public AdvancedResizeFilter()
    {
        c = FloatBuffer.allocate(1);
        d = FloatBuffer.allocate(1);
    }

    private AdvancedResizeFilter(Parcel parcel)
    {
        super(parcel);
        c = FloatBuffer.allocate(1);
        d = FloatBuffer.allocate(1);
    }

    AdvancedResizeFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    protected final void a()
    {
    }

    protected final void a(b b1, a a1, c c1)
    {
        c.put(a1.c());
        c.position(0);
        d.put(c1.c());
        d.position(0);
        b1.a("image", a1.b(), com.instagram.filterkit.b.c.a);
        b1.a("imageSize", c);
        b1.a("outputSize", d);
    }

    protected final b b(com.instagram.filterkit.d.c c1)
    {
        Class _tmp = a;
        int i = ShaderBridge.a("BicubicResize");
        if (i != 0)
        {
            return new b(i);
        }
        Class _tmp1 = a;
        int j = ShaderBridge.a("FixedResize");
        if (j != 0)
        {
            return new b(j);
        } else
        {
            Class _tmp2 = a;
            return null;
        }
    }

}
