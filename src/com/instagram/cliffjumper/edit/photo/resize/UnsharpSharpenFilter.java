// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.resize;

import android.opengl.GLES20;
import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.util.e;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.d.c;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.filter.BaseCachingFilter;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            e

public class UnsharpSharpenFilter extends BaseCachingFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.photo.resize.e();
    private static final com.instagram.cliffjumper.util.a a = com.instagram.cliffjumper.util.e.a();
    private static final FloatBuffer c;
    private static final FloatBuffer d;
    private static final FloatBuffer e;
    private final FloatBuffer f;
    private b g;
    private b h;

    public UnsharpSharpenFilter()
    {
        f = FloatBuffer.allocate(1);
    }

    public UnsharpSharpenFilter(Parcel parcel)
    {
        super(parcel);
        f = FloatBuffer.allocate(1);
    }

    public final com.instagram.filterkit.e.c a(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        if (!c1.a(this))
        {
            int i = ShaderBridge.a("GaussianBlur");
            int j = ShaderBridge.a("UnsharpSharpen");
            if (i == 0 || j == 0)
            {
                return null;
            }
            g = new b(i);
            h = new b(j);
            c1.b(this);
        }
        f.put(1.0F / (float)a1.c());
        f.position(0);
        g.a("pixelWidth", f);
        g.a("initialGaussian", c);
        g.a("position", a.a);
        g.a("transformedTextureCoordinate", a.b);
        g.a("staticTextureCoordinate", a.b);
        c1.a("UnsharpSharpenFilter.blurX:setCoordinates");
        g.a("image", a1.b(), com.instagram.filterkit.b.c.a);
        g.a("blurVector", d);
        com.instagram.filterkit.e.b b1 = c1.a(c2.c());
        GLES20.glViewport(0, 0, b1.c(), b1.d());
        c1.a("UnsharpSharpenFilter.blurX:glViewport");
        GLES20.glBindFramebuffer(36160, b1.a());
        c1.a("UnsharpSharpenFilter.blurX:glBindFramebuffer");
        g.b();
        c1.a("UnsharpSharpenFilter.blurX:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("UnsharpSharpenFilter.blurX:glDrawArrays");
        g.a("image", b1.b(), com.instagram.filterkit.b.c.a);
        g.a("blurVector", e);
        com.instagram.filterkit.e.b b2 = c1.a(c2.c());
        GLES20.glViewport(0, 0, b2.c(), b2.d());
        c1.a("UnsharpSharpenFilter.blur:glViewport");
        GLES20.glBindFramebuffer(36160, b2.a());
        c1.a("UnsharpSharpenFilter.blur:glBindFramebuffer");
        g.b();
        c1.a("UnsharpSharpenFilter.blur:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("UnsharpSharpenFilter.blur:glDrawArrays");
        c1.a(b1, null);
        h.a("original", a1.b());
        h.a("blurred", b2.b());
        h.a("position", a.a);
        h.a("transformedTextureCoordinate", a.b);
        h.a("staticTextureCoordinate", a.b);
        c1.a("UnsharpSharpenFilter.mask:setCoordinates");
        com.instagram.filterkit.e.c c3 = a(c1, c2);
        GLES20.glViewport(0, 0, c3.c(), c3.d());
        c1.a("UnsharpSharpenFilter.blur:glViewport");
        GLES20.glBindFramebuffer(36160, c3.a());
        c1.a("UnsharpSharpenFilter.blur:glBindFramebuffer");
        h.b();
        c1.a("UnsharpSharpenFilter.mask:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("UnsharpSharpenFilter.blur:glDrawArrays");
        c1.a(b2, null);
        c1.a(a1, null);
        b = false;
        return c3;
    }

    public final void a(c c1)
    {
        if (g != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(g.a());
            g = null;
        }
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

    static 
    {
        c = FloatBuffer.allocate(3);
        d = FloatBuffer.allocate(2);
        e = FloatBuffer.allocate(2);
        double d1 = Math.exp(-0.78124994470272602D);
        c.put((float)(0.80000001192092896D * (1.0D / Math.sqrt(6.2831853071795862D))));
        c.put((float)d1);
        c.put((float)(d1 * d1));
        c.position(0);
        d.put(1.0F);
        d.put(0.0F);
        d.position(0);
        e.put(0.0F);
        e.put(1.0F);
        e.position(0);
    }
}
