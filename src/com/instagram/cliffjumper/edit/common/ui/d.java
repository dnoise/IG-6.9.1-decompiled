// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;


// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            EffectPicker

final class d
    implements Runnable
{

    final int a;
    final EffectPicker b;

    d(EffectPicker effectpicker, int i)
    {
        b = effectpicker;
        a = i;
        super();
    }

    public final void run()
    {
        b.scrollTo(a, 0);
    }
}
