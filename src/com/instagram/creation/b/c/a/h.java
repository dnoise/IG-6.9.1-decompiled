// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c.a;

import ch.boye.httpclientandroidlib.HttpEntity;
import com.instagram.common.a.c.b;
import java.io.File;

// Referenced classes of package com.instagram.creation.b.c.a:
//            g

public final class h extends b
{

    private final File a;
    private final int b;
    private final int c;

    public h(File file, int i, int j)
    {
        a = file;
        b = i;
        c = j;
    }

    public final HttpEntity d()
    {
        return new g(a, b, c);
    }
}
