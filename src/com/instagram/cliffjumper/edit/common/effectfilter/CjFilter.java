// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.os.Parcel;
import com.instagram.cliffjumper.bridge.ShaderBridge;
import com.instagram.cliffjumper.edit.common.basefilter.BaseSimpleFilter;
import com.instagram.cliffjumper.util.Matrix3;
import com.instagram.cliffjumper.util.a.d;
import com.instagram.cliffjumper.util.c;
import com.instagram.filterkit.b.b;
import com.instagram.filterkit.e.a;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            b, TextureInfo

public class CjFilter extends BaseSimpleFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new com.instagram.cliffjumper.edit.common.effectfilter.b();
    private static final Class c = com/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    protected boolean a;
    private final IntBuffer d;
    private final IntBuffer e;
    private final IntBuffer f;
    private final FloatBuffer g;
    private final int h;
    private final String i;
    private final List j;
    private final Matrix3 k;
    private boolean l;
    private int m;
    private int n;
    private float o;
    private int p;
    private com.instagram.cliffjumper.edit.photo.lux.a q;
    private FloatBuffer r;
    private FloatBuffer s;
    private boolean t;

    public CjFilter(int i1, String s1, List list)
    {
        d = IntBuffer.allocate(1);
        e = IntBuffer.allocate(1);
        f = IntBuffer.allocate(1);
        g = FloatBuffer.allocate(1);
        k = new Matrix3();
        q = null;
        r = FloatBuffer.allocate(1);
        s = FloatBuffer.allocate(1);
        t = false;
        h = i1;
        j = list;
        i = s1;
        c(100);
        b(false);
        d.put(0, 1);
    }

    private CjFilter(Parcel parcel)
    {
        super(parcel);
        d = IntBuffer.allocate(1);
        e = IntBuffer.allocate(1);
        f = IntBuffer.allocate(1);
        g = FloatBuffer.allocate(1);
        k = new Matrix3();
        q = null;
        r = FloatBuffer.allocate(1);
        s = FloatBuffer.allocate(1);
        t = false;
        h = parcel.readInt();
        j = new LinkedList();
        parcel.readTypedList(j, TextureInfo.CREATOR);
        i = parcel.readString();
        c(parcel.readInt());
        a(parcel.readInt());
        b(parcel.readInt());
        a(parcel.readFloat());
        boolean flag;
        boolean flag1;
        if (parcel.readInt() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b(flag);
        if (parcel.readInt() == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        a_(flag1);
        d.put(0, 1);
    }

    CjFilter(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public final void A_()
    {
        b((-90 + n) % 360);
    }

    public final void a(float f1)
    {
        o = f1;
        l = true;
        n();
    }

    public final void a(int i1)
    {
        m = i1;
        l = true;
        b(a);
        n();
    }

    public final void a(com.instagram.cliffjumper.edit.photo.lux.a a1)
    {
        q = a1;
    }

    protected final void a(b b1, a a1, com.instagram.filterkit.e.c c1)
    {
        if (l)
        {
            l = false;
            com.instagram.cliffjumper.util.c.a((float)(m + n) + o, k);
        }
        b1.a("u_enableTextureTransform", d);
        b1.a("u_textureTransform", k.b());
        b1.a("u_filterStrength", g);
        b1.a("u_mirrored", e);
        b1.a("u_flipped", f);
        b1.a("image", a1.b());
        if (com.instagram.cliffjumper.util.a.c.a().d)
        {
            return;
        }
        float f1;
        float f2;
        if (t && q != null)
        {
            float f5 = q.a();
            f2 = q.b();
            float f3;
            float f4;
            if (f5 == -1F || f2 == -1F)
            {
                f2 = 0.0F;
                f1 = 1.0F;
            } else
            {
                f1 = f5;
            }
        } else
        {
            f1 = 1.0F;
            f2 = 0.0F;
        }
        f3 = Math.min(1.0F / (f1 - f2), 3F);
        r.put(0, f3);
        f4 = 1.0F - f1 * f3;
        s.put(0, f4);
        Class _tmp = c;
        Float.valueOf(f3);
        Class _tmp1 = c;
        Float.valueOf(f4);
        Class _tmp2 = c;
        Float.valueOf(f1);
        Class _tmp3 = c;
        Float.valueOf(f2);
        b1.a("brightness_correction_mult", r);
        b1.a("brightness_correction_add", s);
    }

    public final void a_(boolean flag)
    {
        t = flag;
    }

    protected final b b(com.instagram.filterkit.d.c c1)
    {
        int i1 = ShaderBridge.a(i);
        if (i1 == 0)
        {
            return null;
        }
        b b1 = new b(i1);
        TextureInfo textureinfo;
        for (Iterator iterator = j.iterator(); iterator.hasNext(); b1.a(textureinfo.a, c1.a(this, textureinfo.b).b()))
        {
            textureinfo = (TextureInfo)iterator.next();
        }

        b1.a("noop", c1.a(this, "shared/noop.png").b());
        return b1;
    }

    public final void b(int i1)
    {
        n = i1;
        l = true;
        n();
    }

    public final void b(boolean flag)
    {
        int i1 = 1;
        a = flag;
        int j1;
        if (a)
        {
            if (m == 90 || m == 270)
            {
                j1 = 0;
            } else
            {
                j1 = i1;
                i1 = 0;
            }
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        e.put(0, j1);
        f.put(0, i1);
    }

    public final void c(int i1)
    {
        p = i1;
        g.put(0, (float)i1 / 100F);
        n();
    }

    public final int f()
    {
        return m;
    }

    public final int g()
    {
        return n;
    }

    public final float h()
    {
        return o;
    }

    public final boolean i()
    {
        return t;
    }

    public final boolean j()
    {
        return a;
    }

    public final int k()
    {
        return p;
    }

    public final boolean l()
    {
        return p != 0 && p != 100;
    }

    public final int m()
    {
        return h;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        int j1 = 1;
        super.writeToParcel(parcel, i1);
        parcel.writeInt(h);
        parcel.writeTypedList(j);
        parcel.writeString(i);
        parcel.writeInt(p);
        parcel.writeInt(m);
        parcel.writeInt(n);
        parcel.writeFloat(o);
        int k1;
        if (a)
        {
            k1 = j1;
        } else
        {
            k1 = 0;
        }
        parcel.writeInt(k1);
        if (!t)
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
    }

    protected final boolean z_()
    {
        return true;
    }

}
