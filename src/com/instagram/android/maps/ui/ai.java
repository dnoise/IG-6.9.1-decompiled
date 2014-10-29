// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.graphics.Bitmap;
import com.instagram.common.ui.widget.imageview.f;

// Referenced classes of package com.instagram.android.maps.ui:
//            ah, i

final class ai
    implements f
{

    final ah a;

    ai(ah ah1)
    {
        a = ah1;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        ah.a(a, bitmap);
        ah.a(a).invalidate();
    }
}
