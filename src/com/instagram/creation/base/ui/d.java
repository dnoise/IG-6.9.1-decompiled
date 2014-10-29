// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;


// Referenced classes of package com.instagram.creation.base.ui:
//            FilterPicker

final class d
    implements Runnable
{

    final int a;
    final FilterPicker b;

    d(FilterPicker filterpicker, int i)
    {
        b = filterpicker;
        a = i;
        super();
    }

    public final void run()
    {
        b.scrollTo(a, 0);
    }
}
