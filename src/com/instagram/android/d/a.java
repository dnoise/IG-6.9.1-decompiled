// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.instagram.android.login.fragment.an;

// Referenced classes of package com.instagram.android.d:
//            f, b

public final class a extends f
{

    private Bitmap c;
    private an d;

    public a(an an1, Bundle bundle)
    {
        super(an1, bundle);
        d = an1;
        if (bundle != null && bundle.containsKey("AddAvatarHelper.BITMAP_KEY"))
        {
            c = (Bitmap)bundle.getParcelable("AddAvatarHelper.BITMAP_KEY");
        }
    }

    static Bitmap a(a a1, Bitmap bitmap)
    {
        a1.c = bitmap;
        return bitmap;
    }

    static an a(a a1)
    {
        return a1.d;
    }

    public final void a()
    {
        if (c != null)
        {
            d.a(c);
        }
    }

    protected final void a(Uri uri)
    {
        (new b(this, 2, uri)).execute(new Void[0]);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (c != null)
        {
            bundle.putParcelable("AddAvatarHelper.BITMAP_KEY", c);
        }
    }

    protected final void b()
    {
    }

    protected final void c()
    {
        d.d();
    }

    public final void d()
    {
        c = null;
        d = null;
        super.b = null;
    }

    protected final void e()
    {
        (new b(this, 1, null)).execute(new Void[0]);
    }

    protected final void f()
    {
        (new b(this, 0, null)).execute(new Void[0]);
    }

    public final void g()
    {
        f();
    }

    public final Bitmap h()
    {
        return c;
    }

    protected final boolean i()
    {
        return true;
    }
}
