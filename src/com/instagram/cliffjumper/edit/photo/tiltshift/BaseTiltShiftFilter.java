// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.graphics.PointF;
import android.os.Parcel;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.a;
import com.instagram.filterkit.e.c;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            l

public abstract class BaseTiltShiftFilter extends BaseSimpleFilter
{

    private l a;
    private PointF c;
    private float d;
    private PointF e;
    private float f;
    private float g;
    private IntBuffer h;
    private FloatBuffer i;
    private FloatBuffer j;
    private FloatBuffer k;

    public BaseTiltShiftFilter()
    {
        c = new PointF();
        e = new PointF();
        h = IntBuffer.allocate(1);
        i = FloatBuffer.allocate(2);
        j = FloatBuffer.allocate(1);
        k = FloatBuffer.allocate(1);
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.b);
        a(0.5F, 0.5F);
        d(0.5F);
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.c);
        a(0.5F, 0.5F);
        d(0.5F);
        c(0.0F);
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.a);
    }

    protected BaseTiltShiftFilter(Parcel parcel)
    {
        super(parcel);
        c = new PointF();
        e = new PointF();
        h = IntBuffer.allocate(1);
        i = FloatBuffer.allocate(2);
        j = FloatBuffer.allocate(1);
        k = FloatBuffer.allocate(1);
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.b);
        a(parcel.readFloat(), parcel.readFloat());
        d(parcel.readFloat());
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.c);
        a(parcel.readFloat(), parcel.readFloat());
        d(parcel.readFloat());
        c(parcel.readFloat());
        a(com.instagram.cliffjumper.edit.photo.tiltshift.l.a(parcel.readInt()));
    }

    protected static float c(float f1, float f2)
    {
        return Math.max(f2, Math.min(1.0F, f1));
    }

    private void c(float f1)
    {
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            f = f1;
            k.put(f1);
            k.position(0);
            n();
        }
    }

    private void d(float f1)
    {
        float f2 = c(f1, 0.1F);
        if (a != com.instagram.cliffjumper.edit.photo.tiltshift.l.b) goto _L2; else goto _L1
_L1:
        d = f2;
_L6:
        j.put(f2 * 1.5F);
        j.position(0);
        n();
_L4:
        return;
_L2:
        if (a != com.instagram.cliffjumper.edit.photo.tiltshift.l.c) goto _L4; else goto _L3
_L3:
        g = f2;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void a(float f1)
    {
        c(f1 + f);
    }

    public final void a(float f1, float f2)
    {
        if (a != com.instagram.cliffjumper.edit.photo.tiltshift.l.b) goto _L2; else goto _L1
_L1:
        c.x = c(f1, 0.0F);
        c.y = c(f2, 0.0F);
_L6:
        i.put(f1);
        i.put(f2);
        i.position(0);
        n();
_L4:
        return;
_L2:
        if (a != com.instagram.cliffjumper.edit.photo.tiltshift.l.c) goto _L4; else goto _L3
_L3:
        e.x = c(f1, 0.0F);
        e.y = c(f2, 0.0F);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void a(l l1)
    {
        a = l1;
        h.put(l1.a());
        h.position(0);
        if (a != com.instagram.cliffjumper.edit.photo.tiltshift.l.b) goto _L2; else goto _L1
_L1:
        a(c.x, c.y);
        d(d);
_L4:
        n();
        return;
_L2:
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            a(e.x, e.y);
            d(g);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(b b1, a a1, c c1)
    {
        b1.a("image", a1.b());
        b1.a("blurMode", h);
        b1.a("origin", i);
        b1.a("outerRadius", j);
        b1.a("theta", k);
        a(b1, c1);
    }

    protected abstract void a(b b1, c c1);

    protected abstract b b(com.instagram.filterkit.d.c c1);

    public final void b(float f1)
    {
        float f2;
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.b)
        {
            f2 = d;
        } else
        {
            f2 = g;
        }
        d(f2 * f1);
    }

    public final void b(float f1, float f2)
    {
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.b)
        {
            a(f1 + c.x, f2 + c.y);
        } else
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            a(f1 + e.x, f2 + e.y);
            return;
        }
    }

    public final boolean d()
    {
        return false;
    }

    public final l f()
    {
        return a;
    }

    public final PointF g()
    {
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.b)
        {
            return c;
        }
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            return e;
        } else
        {
            return null;
        }
    }

    public final float h()
    {
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            return f;
        } else
        {
            return -1F;
        }
    }

    public final float i()
    {
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.b)
        {
            return d;
        }
        if (a == com.instagram.cliffjumper.edit.photo.tiltshift.l.c)
        {
            return g;
        } else
        {
            return -1F;
        }
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        super.writeToParcel(parcel, i1);
        parcel.writeFloat(c.x);
        parcel.writeFloat(c.y);
        parcel.writeFloat(d);
        parcel.writeFloat(e.x);
        parcel.writeFloat(e.y);
        parcel.writeFloat(g);
        parcel.writeFloat(f);
        parcel.writeInt(a.a());
    }
}
