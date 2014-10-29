// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;


// Referenced classes of package com.instagram.creation.video.gl:
//            GLRootView

final class s
    implements Runnable
{

    final GLRootView a;

    s(GLRootView glrootview)
    {
        a = glrootview;
        super();
    }

    public final void run()
    {
        GLRootView.a(a);
    }
}
