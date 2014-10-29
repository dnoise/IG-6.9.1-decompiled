// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


// Referenced classes of package com.instagram.creation.video.gl:
//            j, i

final class m
    implements Runnable
{

    final i a;
    final j b;

    m(j j1, i i)
    {
        b = j1;
        a = i;
        super();
    }

    public final void run()
    {
        j.a(b, a);
    }
}
