// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import android.content.res.Resources;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.c;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            a

public final class f extends c
{

    private final a a;
    private final com.instagram.cliffjumper.edit.common.filters.a b;

    public f(Resources resources, com.instagram.cliffjumper.edit.common.filters.a a1, a a2)
    {
        super(resources.getString(a1.b()), a1.a());
        b = a1;
        a = a2;
    }

    public final com.instagram.cliffjumper.edit.common.filters.a a()
    {
        return b;
    }

    public final a d()
    {
        return a;
    }
}
