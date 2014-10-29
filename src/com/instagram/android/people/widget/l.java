// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;


// Referenced classes of package com.instagram.android.people.widget:
//            k, PeopleTagsLayout

final class l
    implements Runnable
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void run()
    {
        a.b.removeView(a.a);
    }
}
