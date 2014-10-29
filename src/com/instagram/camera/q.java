// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;


// Referenced classes of package com.instagram.camera:
//            ShutterButton

final class q
    implements Runnable
{

    final boolean a;
    final ShutterButton b;

    q(ShutterButton shutterbutton, boolean flag)
    {
        b = shutterbutton;
        a = flag;
        super();
    }

    public final void run()
    {
        ShutterButton.a(b, a);
    }
}
