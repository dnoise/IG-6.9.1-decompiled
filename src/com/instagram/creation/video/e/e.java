// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.e;

import android.content.Context;
import com.facebook.au;
import com.instagram.creation.video.j.l;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.creation.video.e:
//            c, d

public final class e
{

    private static final float a[][] = {
        {
            0.0F, 1.0F, 1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 0.0F
        }, {
            1.0F, 1.0F, 1.0F, 0.0F, 0.0F, 1.0F, 0.0F, 0.0F
        }, {
            1.0F, 0.0F, 0.0F, 0.0F, 1.0F, 1.0F, 0.0F, 1.0F
        }, {
            0.0F, 0.0F, 0.0F, 1.0F, 1.0F, 0.0F, 1.0F, 1.0F
        }, {
            0.0F, 0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F
        }, {
            0.0F, 1.0F, 0.0F, 0.0F, 1.0F, 1.0F, 1.0F, 0.0F
        }, {
            1.0F, 1.0F, 0.0F, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F
        }, {
            1.0F, 0.0F, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F, 1.0F
        }
    };

    public static int a(c ac[], int i)
    {
        for (int j = 0; j < ac.length; j++)
        {
            if (ac[j].b() == i)
            {
                return j;
            }
        }

        throw new IllegalArgumentException("Filter not found");
    }

    public static c a()
    {
        return com.instagram.creation.video.e.c.f().a(0).b("Normal").b(au.filter_normal).a("Nofilter").a();
    }

    public static c a(Context context, int i)
    {
        c ac[] = a(context);
        for (int j = 0; j < 14; j++)
        {
            c c1 = ac[j];
            if (c1.b() == i)
            {
                return c1;
            }
        }

        return null;
    }

    private static FloatBuffer a(float af[])
    {
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(4 * af.length);
        bytebuffer.order(ByteOrder.nativeOrder());
        FloatBuffer floatbuffer = bytebuffer.asFloatBuffer();
        floatbuffer.put(af);
        floatbuffer.position(0);
        return floatbuffer;
    }

    public static final float[] a(float f, float f1)
    {
        boolean flag;
        float f2;
        float f3;
        float f4;
        if (f < 1.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            f = 1.0F / f;
        }
        f2 = 2.0F * (f - 1.0F);
        f3 = 1.0F + f1 * f2;
        f4 = 1.0F + f2 * (1.0F - f1);
        if (flag)
        {
            float af1[] = new float[8];
            af1[0] = -1F;
            af1[1] = f3;
            af1[2] = 1.0F;
            af1[3] = f3;
            af1[4] = -1F;
            af1[5] = -f4;
            af1[6] = 1.0F;
            af1[7] = -f4;
            return af1;
        } else
        {
            float af[] = new float[8];
            af[0] = -f3;
            af[1] = 1.0F;
            af[2] = f4;
            af[3] = 1.0F;
            af[4] = -f3;
            af[5] = -1F;
            af[6] = f4;
            af[7] = -1F;
            return af;
        }
    }

    public static final float[] a(int i)
    {
        return a[i % 8];
    }

    public static c[] a(Context context)
    {
        c ac[] = new c[14];
        ac[0] = a();
        ac[1] = com.instagram.creation.video.e.c.f().a(context).a(109).b("Stinson").b(au.filter_stinson).a("Stinson").a("map", "video/stinson/curves.png").a();
        ac[2] = com.instagram.creation.video.e.c.f().a(context).a(106).b("Vesper").b(au.filter_vesper).a("Vesper").a("map", "video/vesper/map.png").a();
        ac[3] = com.instagram.creation.video.e.c.f().a(context).a(112).b("Clarendon").b(au.filter_clarendon).a("Clarendon").a("map", "video/clarendon/Glacial1.png").a("map2", "video/clarendon/Glacial2.png").a();
        ac[4] = com.instagram.creation.video.e.c.f().a(context).a(118).b("Maven").b(au.filter_maven).a("Maven").a("map1", "video/maven/Lansdowne1.png").a("map2", "video/maven/Lansdowne2.png").a();
        ac[5] = com.instagram.creation.video.e.c.f().a(context).a(114).b("Gingham").b(au.filter_gingham).a("Gingham").a("map", "video/gingham/curves1.png").a("mapLgg", "video/gingham/curves_lgg.png").a();
        ac[6] = com.instagram.creation.video.e.c.f().a(context).a(107).b("Ginza").b(au.filter_ginza).a("Ginza").a("map1", "video/ginza/curves1.png").a("map2", "video/ginza/curves2.png").a();
        ac[7] = com.instagram.creation.video.e.c.f().a(context).a(113).b("Skyline").b(au.filter_skyline).a("Skyline").a("map", "video/skyline/curves.png").a();
        ac[8] = com.instagram.creation.video.e.c.f().a(context).a(105).b("Dogpatch").b(au.filter_dogpatch).a("Dogpatch").a("map1", "video/dogpatch/curves1.png").a("mapLgg", "video/dogpatch/curves_lgg.png").a();
        ac[9] = com.instagram.creation.video.e.c.f().a(context).a(115).b("Brooklyn").b(au.filter_brooklyn).a("Brooklyn").a("map", "video/brooklyn/curves.png").a();
        ac[10] = com.instagram.creation.video.e.c.f().a(context).a(111).b("Moon").b(au.filter_moon).a("Moon").a("map1", "video/moon/curves1.png").a("map2", "video/moon/curves2.png").a();
        ac[11] = com.instagram.creation.video.e.c.f().a(context).a(117).b("Helena").b(au.filter_helena).a("Helena").a("map1", "video/helena/epic_1.png").a("map2", "video/helena/epic_2.png").a();
        ac[12] = com.instagram.creation.video.e.c.f().a(context).a(116).b("Ashby").b(au.filter_ashby).a("Ashby").a("tonemap", "video/ashby/tonemap.png").a("levels", "video/ashby/levels.png").a();
        ac[13] = com.instagram.creation.video.e.c.f().a(context).a(108).b("Charmes").b(au.filter_charmes).a("Charmes").a("map", "video/charmes/map.png").a();
        return ac;
    }

    public static c b()
    {
        return com.instagram.creation.video.e.c.f().a(-1).b("YUV").b(0).a("YUV").a();
    }

    public static final l c()
    {
        return new l(a(a(1.0F, 0.0F)), a(a(0)));
    }

    public static final l d()
    {
        return new l(a(a(1.0F, 0.0F)), a(a(4)));
    }

}
