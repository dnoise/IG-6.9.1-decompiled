// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.common.ui.widget.imageview.f;

// Referenced classes of package com.instagram.android.directshare.c:
//            s

final class q
    implements f
{

    final s a;

    q(s s1)
    {
        a = s1;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        ImageView imageview = a.h;
        byte byte0;
        if (bitmap == null)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        imageview.setVisibility(byte0);
        a.c.setOnLoadListener(null);
    }
}
