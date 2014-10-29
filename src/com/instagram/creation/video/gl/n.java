// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


// Referenced classes of package com.instagram.creation.video.gl:
//            i, j

final class n
    implements Runnable
{

    final j a;

    n(j j1)
    {
        a = j1;
        super();
    }

    public final void run()
    {
        j.a(a, new i(j.a(a)));
    }
}
