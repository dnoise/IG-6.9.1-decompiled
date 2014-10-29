// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;


// Referenced classes of package com.instagram.android.people.widget:
//            PhotoScrollView

final class n
    implements Runnable
{

    final PhotoScrollView a;

    n(PhotoScrollView photoscrollview)
    {
        a = photoscrollview;
        super();
    }

    public final void run()
    {
        PhotoScrollView.a(a, PhotoScrollView.a(a));
    }
}
