// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


// Referenced classes of package com.instagram.creation.video.gl:
//            j, p

final class l
    implements Runnable
{

    final int a = 640;
    final j b;

    l(j j1, int i)
    {
        b = j1;
        super();
    }

    public final void run()
    {
        if (a != j.a(b))
        {
            j.a(b, a);
            j.b(b).b(a);
        }
    }
}
