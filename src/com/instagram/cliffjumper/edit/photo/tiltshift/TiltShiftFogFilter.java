// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.c;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            BaseTiltShiftFilter, j

public class TiltShiftFogFilter extends BaseTiltShiftFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new j();
    private float a;
    private FloatBuffer c;

    public TiltShiftFogFilter()
    {
        c = FloatBuffer.allocate(1);
        c(0.0F);
    }

    private TiltShiftFogFilter(Parcel parcel)
    {
        super(parcel);
        c = FloatBuffer.allocate(1);
        c(parcel.readFloat());
    }

    TiltShiftFogFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    protected final void a(b b1, c c1)
    {
        b1.a("dimFactor", c);
    }

    protected final b b(com.instagram.filterkit.d.c c1)
    {
        int i = ShaderBridge.a("BlurComposite");
        if (i == 0)
        {
            return null;
        } else
        {
            return new b(i);
        }
    }

    public final void c(float f)
    {
        a = f;
        c.put(f);
        c.position(0);
        n();
    }

    public final float j()
    {
        return a;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(a);
    }

}
