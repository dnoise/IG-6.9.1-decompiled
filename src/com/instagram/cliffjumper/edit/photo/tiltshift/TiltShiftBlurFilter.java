// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.graphics.PointF;
import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.c;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            BaseTiltShiftFilter, a

public class TiltShiftBlurFilter extends BaseTiltShiftFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    private PointF a;
    private FloatBuffer c;
    private FloatBuffer d;

    public TiltShiftBlurFilter(float f, float f1)
    {
        a = new PointF();
        c = FloatBuffer.allocate(2);
        d = FloatBuffer.allocate(1);
        d(f, f1);
    }

    private TiltShiftBlurFilter(Parcel parcel)
    {
        super(parcel);
        a = new PointF();
        c = FloatBuffer.allocate(2);
        d = FloatBuffer.allocate(1);
        d(parcel.readFloat(), parcel.readFloat());
    }

    TiltShiftBlurFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    private void d(float f, float f1)
    {
        a.x = c(f, 0.0F);
        a.y = c(f1, 0.0F);
        c.put(f);
        c.put(f1);
        c.position(0);
    }

    protected final void a(b b1, c c1)
    {
        d.put(c1.c());
        d.position(0);
        b1.a("blurVector", c);
        b1.a("dimension", d);
    }

    protected final b b(com.instagram.filterkit.d.c c1)
    {
        int i = ShaderBridge.a("BlurDynamic");
        if (i == 0)
        {
            i = ShaderBridge.a("BlurDynamicFixedLoop");
            if (i == 0)
            {
                return null;
            }
        }
        return new b(i);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(a.x);
        parcel.writeFloat(a.y);
    }

}
