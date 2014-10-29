// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a;

import android.os.Bundle;
import android.view.View;
import com.instagram.a.c;

// Referenced classes of package com.instagram.base.a:
//            b, e, j

public abstract class i extends b
    implements c, e
{

    private int a;

    public i()
    {
    }

    private void W()
    {
        d().c();
    }

    public final int V()
    {
        return a;
    }

    public final void a(int k)
    {
        a = k;
        d().b(k);
    }

    protected abstract void a(View view);

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        a = c();
        b(view);
        W();
        a(view);
        d().a(a);
    }

    public abstract void b(View view);

    protected abstract int c();

    public abstract j d();
}
