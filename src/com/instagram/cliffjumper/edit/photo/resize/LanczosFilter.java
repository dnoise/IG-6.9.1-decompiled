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
import java.nio.IntBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.resize:
//            c

public class LanczosFilter extends BaseCachingFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.photo.resize.c();
    private static final com.instagram.cliffjumper.util.a a = com.instagram.cliffjumper.util.e.a();
    private final FloatBuffer c = FloatBuffer.allocate(1);
    private final FloatBuffer d = FloatBuffer.allocate(1);
    private final FloatBuffer e = FloatBuffer.allocate(1);
    private final FloatBuffer f = FloatBuffer.allocate(1);
    private final FloatBuffer g = FloatBuffer.allocate(1);
    private final FloatBuffer h = FloatBuffer.allocate(1);
    private final IntBuffer i = IntBuffer.allocate(1);
    private final IntBuffer j = IntBuffer.allocate(1);
    private b k;
    private b l;

    public LanczosFilter()
    {
    }

    public final com.instagram.filterkit.e.c a(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        boolean flag = true;
        GLES20.glFlush();
        if (!c1.a(this))
        {
            int i2 = ShaderBridge.a("LanczosX");
            int i1;
            int j1;
            int k1;
            int l1;
            float f1;
            com.instagram.filterkit.e.b b1;
            boolean flag1;
            boolean flag2;
            boolean flag3;
            boolean flag4;
            float f2;
            com.instagram.filterkit.e.c c3;
            boolean flag5;
            boolean flag6;
            boolean flag7;
            int j2;
            int k2;
            if (i2 == 0)
            {
                j2 = ShaderBridge.a("LanczosXFixed");
            } else
            {
                j2 = i2;
            }
            if (j2 == 0)
            {
                return null;
            }
            k2 = ShaderBridge.a("LanczosY");
            if (k2 == 0)
            {
                k2 = ShaderBridge.a("LanczosYFixed");
            }
            if (k2 == 0)
            {
                return null;
            }
            k = new b(j2);
            l = new b(k2);
            c1.b(this);
        }
        i1 = a1.d();
        j1 = a1.c();
        k1 = c2.d();
        l1 = c2.c();
        i.put(0, j1);
        k.a("srcWidth", i);
        f1 = (float)j1 / (float)l1;
        c.put(0, f1);
        k.a("scale", c);
        d.put(0, 2.0F);
        k.a("lanczosFactor", d);
        e.put(0, f1 * 2.0F);
        k.a("srcLanczosFactor", e);
        k.a("position", a.a);
        k.a("transformedTextureCoordinate", a.b);
        k.a("staticTextureCoordinate", a.b);
        k.a("image", a1.b(), com.instagram.filterkit.b.c.a);
        b1 = c1.a(l1, i1);
        GLES20.glViewport(0, 0, b1.c(), b1.d());
        flag1 = c1.a("LanczosFilter.resizeX:glViewport");
        GLES20.glBindFramebuffer(36160, b1.a());
        if (flag1 || c1.a("LanczosFilter.resizeX:glBindFramebuffer"))
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        k.b();
        if (flag2 || c1.a("LanczosFilter.resizeX:prepareToRender"))
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        GLES20.glDrawArrays(5, 0, 4);
        if (flag3 || c1.a("LanczosFilter.resizeX:glDrawArrays"))
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        if (flag4)
        {
            GLES20.glBindTexture(3553, a1.b());
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            com.instagram.filterkit.d.c.a(b1);
            c1.c(this);
            return null;
        }
        GLES20.glFlush();
        j.put(0, i1);
        l.a("srcHeight", j);
        f2 = (float)i1 / (float)k1;
        f.put(0, f2);
        l.a("scale", f);
        g.put(0, 2.0F);
        l.a("lanczosFactor", g);
        h.put(0, f2 * 2.0F);
        l.a("srcLanczosFactor", h);
        l.a("position", a.a);
        l.a("transformedTextureCoordinate", a.b);
        l.a("staticTextureCoordinate", a.b);
        l.a("image", b1.b(), com.instagram.filterkit.b.c.a);
        GLES20.glBindTexture(3553, b1.b());
        GLES20.glTexParameteri(3553, 10241, 9728);
        GLES20.glTexParameteri(3553, 10240, 9728);
        c3 = a(c1, c2);
        GLES20.glViewport(0, 0, c3.c(), c3.d());
        if (c1.a("LanczosFilter.resizeY:glViewport"))
        {
            flag5 = flag;
        } else
        {
            flag5 = false;
        }
        GLES20.glBindFramebuffer(36160, c3.a());
        if (flag5 || c1.a("LanczosFilter.resizeY:glBindFramebuffer"))
        {
            flag6 = flag;
        } else
        {
            flag6 = false;
        }
        l.b();
        if (flag6 || c1.a("LanczosFilter.resizeY:prepareToRender"))
        {
            flag7 = flag;
        } else
        {
            flag7 = false;
        }
        GLES20.glDrawArrays(5, 0, 4);
        if (!flag7 && !c1.a("LanczosFilter.resizeY:glDrawArrays"))
        {
            flag = false;
        }
        com.instagram.filterkit.d.c.a(b1);
        c1.a(a1, null);
        if (flag)
        {
            c1.a(c3, null);
            c1.c(this);
            return null;
        } else
        {
            b = false;
            return c3;
        }
    }

    public final void a(c c1)
    {
        if (k != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(k.a());
            k = null;
        }
        if (l != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(l.a());
            l = null;
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

    public void writeToParcel(Parcel parcel, int i1)
    {
    }

}
