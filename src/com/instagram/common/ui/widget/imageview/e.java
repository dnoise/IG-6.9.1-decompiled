// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.graphics.Bitmap;
import com.instagram.common.g.b.k;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            IgImageView, f, g

final class e
    implements k
{

    final IgImageView a;

    e(IgImageView igimageview)
    {
        a = igimageview;
        super();
    }

    public final void a()
    {
        a.a = true;
        if (IgImageView.b(a) != null)
        {
            IgImageView.b(a).a(null);
        }
    }

    public final void a(String s, int i)
    {
        if (!a.a && IgImageView.a(a).equals(s))
        {
            a.setImageDrawable(IgImageView.c(a));
            if (IgImageView.d(a) != null)
            {
                IgImageView.d(a).a(i);
            }
        }
    }

    public final void a(String s, Bitmap bitmap)
    {
        if (IgImageView.a(a).equals(s))
        {
            a.a = true;
            a.setImageBitmap(bitmap);
            if (IgImageView.b(a) != null)
            {
                IgImageView.b(a).a(bitmap);
            }
        }
    }
}
