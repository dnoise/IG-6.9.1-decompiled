// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.entity.HttpEntityWrapper;
import java.io.InputStream;

// Referenced classes of package com.instagram.api.g:
//            l, j, i

final class k extends HttpEntityWrapper
{

    final j a;
    private final i b;
    private boolean c;
    private InputStream d;

    public k(j j, HttpEntity httpentity, i i)
    {
        a = j;
        super(httpentity);
        b = i;
        c = false;
    }

    static i a(k k1)
    {
        return k1.b;
    }

    public final InputStream getContent()
    {
        if (!c)
        {
            InputStream inputstream = super.getContent();
            if (inputstream != null)
            {
                d = new l(this, inputstream);
            }
            c = true;
        }
        return d;
    }
}
