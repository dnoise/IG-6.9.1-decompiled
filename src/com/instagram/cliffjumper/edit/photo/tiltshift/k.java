// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.content.res.Resources;
import com.facebook.au;
import com.facebook.az;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.c;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            b

public final class k extends c
{

    private b a;
    private Resources b;

    public k(Resources resources)
    {
        super(resources.getString(az.tiltshift), au.tool_tilt);
        b = resources;
    }

    public final a d()
    {
        if (a == null)
        {
            a = new b(b);
        }
        return a;
    }
}
