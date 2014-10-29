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
import com.instagram.filterkit.e.d;
import com.instagram.filterkit.filter.BaseCachingFilter;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            e, GaussianBlurFilter, i

public class BasicAdjustFilter extends BaseCachingFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.common.filters.e();
    private static final Class a = com/instagram/cliffjumper/edit/common/filters/BasicAdjustFilter;
    private static final com.instagram.cliffjumper.util.a c = com.instagram.cliffjumper.util.e.a();
    private static final float d[] = {
        0.0F, 0.0F, 0.0612549F, 0.185368F, 0.16381F, 0.365771F, 0.320955F, 0.527539F, 0.496851F, 0.659237F, 
        0.709977F, 0.79987F, 1.0F, 1.0F
    };
    private static final float e[];
    private com.instagram.filterkit.e.b A;
    private a B;
    private boolean C;
    private final FloatBuffer f;
    private final FloatBuffer g;
    private final FloatBuffer h;
    private final FloatBuffer i;
    private final FloatBuffer j;
    private final FloatBuffer k;
    private final FloatBuffer l;
    private final FloatBuffer m;
    private final FloatBuffer n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private b w;
    private GaussianBlurFilter x;
    private GaussianBlurFilter y;
    private com.instagram.filterkit.e.b z;

    public BasicAdjustFilter()
    {
        f = FloatBuffer.allocate(1);
        g = FloatBuffer.allocate(1);
        h = FloatBuffer.allocate(1);
        i = FloatBuffer.allocate(1);
        j = FloatBuffer.allocate(1);
        k = FloatBuffer.allocate(1);
        l = FloatBuffer.allocate(1);
        m = FloatBuffer.allocate(1);
        n = FloatBuffer.allocate(1);
        x = new GaussianBlurFilter();
        y = new GaussianBlurFilter();
        n.put(0, 0.009F);
        x.a(0.8F);
    }

    private BasicAdjustFilter(Parcel parcel)
    {
        boolean flag = true;
        super(parcel);
        f = FloatBuffer.allocate(flag);
        g = FloatBuffer.allocate(flag);
        h = FloatBuffer.allocate(flag);
        i = FloatBuffer.allocate(flag);
        j = FloatBuffer.allocate(flag);
        k = FloatBuffer.allocate(flag);
        l = FloatBuffer.allocate(flag);
        m = FloatBuffer.allocate(flag);
        n = FloatBuffer.allocate(flag);
        x = new GaussianBlurFilter();
        y = new GaussianBlurFilter();
        n.put(0, 0.009F);
        x.a(0.8F);
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        b_(flag);
        a(parcel.readInt());
        b(parcel.readInt());
        c(parcel.readInt());
        d(parcel.readInt());
        e(parcel.readInt());
        f(parcel.readInt());
        g(parcel.readInt());
        h(parcel.readInt());
    }

    BasicAdjustFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    private void a(b b1, c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        b1.a("brightness", f);
        b1.a("contrast", g);
        b1.a("saturation", h);
        b1.a("temperature", i);
        b1.a("vignette", j);
        b1.a("highlights", k);
        b1.a("shadows", l);
        b1.a("sharpen", m);
        b1.a("TOOL_ON_EPSILON", n);
        b1.a("image", a1.b());
        if (a1 instanceof com.instagram.filterkit.e.b)
        {
            c1.a((com.instagram.filterkit.e.b)a1, this);
        }
        z = b(c1, a1, c2);
        b1.a("sharpenBlur", z.b(), com.instagram.filterkit.b.c.a);
        if ((float)Math.abs(u) > 0.009F || (float)Math.abs(t) > 0.009F)
        {
            A = c(c1, a1, c2);
            b1.a("shadowsBlur", A.b(), com.instagram.filterkit.b.c.a);
            b1.a("splines", l());
        }
        if (a1 instanceof com.instagram.filterkit.e.b)
        {
            c1.b((com.instagram.filterkit.e.b)a1, this);
        }
    }

    private com.instagram.filterkit.e.b b(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        com.instagram.filterkit.e.b b1 = x.c();
        if (b1 == null || b1.c() != c2.c())
        {
            com.instagram.filterkit.e.c c3 = com.instagram.filterkit.e.d.b(c2.c());
            b1 = (com.instagram.filterkit.e.b)x.a(c1, a1, c3);
        }
        return b1;
    }

    private com.instagram.filterkit.e.b c(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        com.instagram.filterkit.e.b b1 = y.c();
        if (b1 != null && (!y.D_() || b1.c() != c2.c()))
        {
            y.a_(c1);
            b1 = null;
        }
        if (b1 == null || y.E_())
        {
            com.instagram.filterkit.e.c c3 = com.instagram.filterkit.e.d.b(c2.c());
            y.a((1.2F * (float)c2.c()) / (float)com.instagram.creation.a.a.a());
            b1 = (com.instagram.filterkit.e.b)y.a(c1, a1, c3);
        }
        return b1;
    }

    private int l()
    {
        if (B == null)
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate(512);
            (new i(d)).a(bytebuffer, 0);
            (new i(e)).a(bytebuffer, 256);
            new com.instagram.filterkit.d.b();
            B = com.instagram.filterkit.d.b.a(bytebuffer);
        }
        return B.b();
    }

    public final void B_()
    {
        super.B_();
        x.B_();
        y.B_();
    }

    public final int C_()
    {
        return q;
    }

    public final int a()
    {
        return o;
    }

    public final com.instagram.filterkit.e.c a(c c1, a a1, com.instagram.filterkit.e.c c2)
    {
        if (!c1.a(this))
        {
            int i1 = ShaderBridge.a("BasicAdjust");
            if (i1 == 0)
            {
                throw new IllegalStateException("Could not compile Basic Adjust program.");
            }
            w = new b(i1);
            c1.b(this);
        }
        a(w, c1, a1, c2);
        c1.a("BasicAdjustFilter.render:setFilterParams");
        w.a("position", c.a);
        w.a("transformedTextureCoordinate", c.b);
        w.a("staticTextureCoordinate", c.b);
        c1.a("BasicAdjustFilter.render:setCoordinates");
        com.instagram.filterkit.e.c c3 = a(c1, c2);
        GLES20.glViewport(0, 0, c3.c(), c3.d());
        c1.a("BasicAdjustFilter.render:glViewport");
        GLES20.glBindFramebuffer(36160, c3.a());
        c1.a("BasicAdjustFilter.render:glBindFramebuffer");
        w.b();
        c1.a("BasicAdjustFilter.render:prepareToRender");
        GLES20.glDrawArrays(5, 0, 4);
        c1.a("BasicAdjustFilter.render:glDrawArrays");
        c1.a(z, this);
        c1.a(A, this);
        z = null;
        A = null;
        c1.a(a1, null);
        return c3;
    }

    public final void a(int i1)
    {
        o = i1;
        f.put(0, (float)i1 / 100F);
        n();
    }

    public final void a(c c1)
    {
        super.a(c1);
        if (w != null)
        {
            c1.a();
            com.instagram.filterkit.d.b.c(w.a());
            w = null;
        }
        if (B != null)
        {
            new com.instagram.filterkit.d.b();
            com.instagram.filterkit.d.b.a(B.b());
            B = null;
        }
    }

    public final int b()
    {
        return p;
    }

    public final void b(int i1)
    {
        p = i1;
        g.put(0, (float)i1 / 100F);
        n();
    }

    public final void b_(boolean flag)
    {
        C = flag;
        x.a(flag);
        y.a(flag);
    }

    public final void c(int i1)
    {
        q = i1;
        h.put(0, (float)i1 / 100F);
        n();
    }

    public final void d(int i1)
    {
        r = i1;
        i.put(0, (float)i1 / 100F);
        n();
    }

    public final int e()
    {
        return r;
    }

    public final void e(int i1)
    {
        s = i1;
        j.put(0, (float)i1 / 100F);
        n();
    }

    public final int f()
    {
        return s;
    }

    public final void f(int i1)
    {
        t = i1;
        k.put(0, (float)i1 / 100F);
        n();
    }

    public final int g()
    {
        return t;
    }

    public final void g(int i1)
    {
        u = i1;
        l.put(0, (float)i1 / 100F);
        n();
    }

    public final int h()
    {
        return u;
    }

    public final void h(int i1)
    {
        v = i1;
        m.put(0, (float)i1 / 100F);
        n();
    }

    public final int i()
    {
        return v;
    }

    public final boolean j()
    {
        return o != 0 || p != 0 || q != 0 || r != 0 || s != 0 || t != 0 || u != 0 || v != 0;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        super.writeToParcel(parcel, i1);
        int j1;
        if (C)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
        parcel.writeInt(o);
        parcel.writeInt(p);
        parcel.writeInt(q);
        parcel.writeInt(r);
        parcel.writeInt(s);
        parcel.writeInt(t);
        parcel.writeInt(u);
        parcel.writeInt(v);
    }

    static 
    {
        e = new float[14];
        for (int i1 = 0; i1 < 7; i1++)
        {
            e[i1 * 2] = d[1 + i1 * 2];
            e[1 + i1 * 2] = d[i1 * 2];
        }

    }
}
