// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import android.opengl.GLES20;
import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.util.e;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.d.c;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.filter.BaseCachingFilter;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            h

public class GaussianBlurFilter extends BaseCachingFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    private static final com.instagram.cliffjumper.util.a a = com.instagram.cliffjumper.util.e.a();
    private final FloatBuffer c;
    private final FloatBuffer d;
    private final IntBuffer e;
    private final IntBuffer f;
    private final IntBuffer g;
    private b h;
    private float i;

    public GaussianBlurFilter()
    {
        c = FloatBuffer.allocate(1);
        d = FloatBuffer.allocate(3);
        e = IntBuffer.allocate(1);
        f = IntBuffer.allocate(1);
        g = IntBuffer.allocate(1);
    }

    public GaussianBlurFilter(Parcel parcel)
    {
        super(parcel);
        c = FloatBuffer.allocate(1);
        d = FloatBuffer.allocate(3);
        e = IntBuffer.allocate(1);
        f = IntBuffer.allocate(1);
        g = IntBuffer.allocate(1);
        a(parcel.readFloat());
    }

    public final com.instagram.filterkit.e.c a(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        if (!c1.a(this))
        {
            int j = ShaderBridge.a("GaussianBlur");
            if (j == 0)
            {
                j = ShaderBridge.a("GaussianBlurFixed");
            }
            if (j == 0)
            {
                return null;
            }
            h = new b(j);
            c1.b(this);
        }
        h.a("kernelSize", c);
        h.a("initialGaussian", d);
        f.put(0, a1.c());
        h.a("width", f);
        g.put(0, a1.d());
        h.a("height", g);
        h.a("position", a.a);
        h.a("transformedTextureCoordinate", a.b);
        h.a("staticTextureCoordinate", a.b);
        c1.a("GaussianBlurFilter.blurX:setCoordinates");
        h.a("image", a1.b(), com.instagram.filterkit.b.c.a);
        e.put(0, 1);
        h.a("blurAlongX", e);
        com.instagram.filterkit.e.b b1 = c1.a(c2.c());
        GLES20.glViewport(0, 0, b1.c(), b1.d());
        c1.a("GaussianBlurFilter.blurX:glViewport");
        GLES20.glBindFramebuffer(36160, b1.a());
        c1.a("GaussianBlurFilter.blurX:glBindFramebuffer");
        h.b();
        c1.a("GaussianBlurFilter.blurX:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("GaussianBlurFilter.blurX:glDrawArrays");
        h.a("image", b1.b(), com.instagram.filterkit.b.c.a);
        e.put(0, 0);
        h.a("blurAlongX", e);
        com.instagram.filterkit.e.c c3 = a(c1, c2);
        GLES20.glViewport(0, 0, c3.c(), c3.d());
        c1.a("GaussianBlurFilter.blur:glViewport");
        GLES20.glBindFramebuffer(36160, c3.a());
        c1.a("GaussianBlurFilter.blur:glBindFramebuffer");
        h.b();
        c1.a("GaussianBlurFilter.blur:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("GaussianBlurFilter.blur:glDrawArrays");
        c1.a(b1, null);
        c1.a(a1, null);
        b = false;
        return c3;
    }

    public final void a(float f1)
    {
        i = f1;
        double d1 = Math.exp(-0.5D / (double)(i * i));
        d.put((float)((1.0D / Math.sqrt(6.2831853071795862D)) * (double)i));
        d.put((float)d1);
        d.put((float)(d1 * d1));
        d.position(0);
        c.put(0, 3F * i);
        B_();
    }

    public final void a(c c1)
    {
        super.a(c1);
        if (h != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(h.a());
            h = null;
        }
    }

    public final boolean d()
    {
        return false;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        parcel.writeFloat(i);
    }

}
