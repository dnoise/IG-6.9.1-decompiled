// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.content.res.Resources;
import com.instagram.cliffjumper.edit.common.filters.b;
import com.instagram.cliffjumper.edit.common.ui.c;
import com.instagram.cliffjumper.edit.photo.straightening.a;
import com.instagram.cliffjumper.edit.photo.straightening.f;
import com.instagram.cliffjumper.edit.photo.tiltshift.k;

public final class af
{

    public static c[] a(Resources resources, float f1)
    {
        a a1 = new a(resources, f1);
        b b1 = new b();
        c ac[] = new c[10];
        ac[0] = new f(resources, a1);
        ac[1] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.a, b1);
        ac[2] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.b, b1);
        ac[3] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.d, b1);
        ac[4] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.c, b1);
        ac[5] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.h, b1);
        ac[6] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.g, b1);
        ac[7] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.e, b1);
        ac[8] = new k(resources);
        ac[9] = new com.instagram.cliffjumper.edit.common.filters.f(resources, com.instagram.cliffjumper.edit.common.filters.a.f, b1);
        return ac;
    }
}
