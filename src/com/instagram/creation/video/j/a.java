// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.z;

// Referenced classes of package com.instagram.creation.video.j:
//            b

public abstract class a extends z
    implements b
{

    protected boolean a;
    private boolean b;

    protected a(j j1)
    {
        super(j1);
    }

    public final void G_()
    {
        l().g();
    }

    protected void a()
    {
    }

    public final boolean b()
    {
        return b;
    }

    public final void c()
    {
        b = true;
        l().e();
        a();
    }

    protected final void h()
    {
        a = true;
    }

    public final boolean i()
    {
        return a && !b;
    }
}
