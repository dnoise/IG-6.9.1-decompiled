// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.os.Bundle;
import android.view.View;
import com.instagram.cliffjumper.edit.photo.straightening.a;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class h
    implements android.view.View.OnClickListener
{

    final com.instagram.cliffjumper.edit.photo.a.a a;

    h(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        a a1 = new a(a.o(), a.j().getFloat("straighteningAngle", 0.0F));
        a1.a(com.instagram.cliffjumper.edit.photo.a.a.m(a), com.instagram.cliffjumper.edit.photo.a.a.h(a), com.instagram.cliffjumper.edit.photo.a.a.i(a), com.instagram.cliffjumper.edit.photo.a.a.f(a), com.instagram.cliffjumper.edit.photo.a.a.j(a));
        com.instagram.cliffjumper.edit.photo.a.a.a(a, a1);
    }
}
