// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y;

import java.io.File;

final class c
    implements Runnable
{

    final String a;

    c(String s)
    {
        a = s;
        super();
    }

    public final void run()
    {
        if (a != null)
        {
            File file = new File(a);
            if (file.length() == 0L)
            {
                file.delete();
            }
        }
    }
}
