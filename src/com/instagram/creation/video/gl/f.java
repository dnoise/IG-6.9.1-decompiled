// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import com.instagram.creation.video.l.j;
import javax.microedition.khronos.opengles.GL11;

final class f
{

    private final GL11 a;
    private int b;
    private float c;
    private int d;
    private boolean e;
    private float f;
    private boolean g;

    public f(GL11 gl11)
    {
        b = 7681;
        c = 1.0F;
        d = 3553;
        e = true;
        f = 1.0F;
        g = false;
        a = gl11;
        gl11.glDisable(2896);
        gl11.glEnable(3024);
        gl11.glEnableClientState(32884);
        gl11.glEnableClientState(32888);
        gl11.glEnable(3553);
        gl11.glTexEnvf(8960, 8704, 7681F);
        gl11.glClearColor(0.0F, 0.5F, 0.0F, 0.0F);
        gl11.glClearStencil(0);
        gl11.glEnable(3042);
        gl11.glBlendFunc(1, 771);
        gl11.glPixelStorei(3317, 2);
    }

    private void b(int i)
    {
        if (b == i)
        {
            return;
        } else
        {
            b = i;
            a.glTexEnvf(8960, 8704, i);
            return;
        }
    }

    public final void a(float f1)
    {
        if (c == f1)
        {
            return;
        }
        c = f1;
        if (f1 >= 0.95F)
        {
            a.glColor4f(1.0F, 1.0F, 1.0F, 1.0F);
            b(7681);
            return;
        } else
        {
            a.glColor4f(f1, f1, f1, f1);
            b(8448);
            return;
        }
    }

    public final void a(int i)
    {
        if (d != i)
        {
            if (d != 0)
            {
                a.glDisable(d);
            }
            d = i;
            if (d != 0)
            {
                a.glEnable(d);
                return;
            }
        }
    }

    public final void a(int i, float f1)
    {
        boolean flag;
        float f2;
        if (!j.a(0xff000000) || f1 < 0.95F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
        c = -1F;
        a(0);
        f2 = (65535F * (255F * f1)) / 255F / 255F;
        a.glColor4x(Math.round(0.0F * f2), Math.round(0.0F * f2), Math.round(0.0F * f2), Math.round(f2 * 255F));
    }

    public final void a(boolean flag)
    {
        if (e == flag)
        {
            return;
        }
        e = flag;
        if (flag)
        {
            a.glEnable(3042);
            return;
        } else
        {
            a.glDisable(3042);
            return;
        }
    }
}
