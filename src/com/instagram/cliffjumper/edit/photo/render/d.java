// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;


// Referenced classes of package com.instagram.cliffjumper.edit.photo.render:
//            c, g, a

final class d
    implements Runnable
{

    final a a;
    final c b;

    d(c c1, a a1)
    {
        b = c1;
        a = a1;
        super();
    }

    public final void run()
    {
        c.a(b).a(a);
    }
}
