// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.util;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.cliffjumper.util:
//            a

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

    public static final a a()
    {
        return new a(a(b()), a(a(0)), a(a(4)));
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

    private static float[] a(int i)
    {
        return a[i % 8];
    }

    private static float[] b()
    {
        return (new float[] {
            -1F, 1.0F, 1.0F, 1.0F, -1F, -1F, 1.0F, -1F
        });
    }

}
