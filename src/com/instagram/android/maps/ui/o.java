// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import com.instagram.android.g.b;
import com.instagram.common.ui.b.a;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;

// Referenced classes of package com.instagram.android.maps.ui:
//            m

final class o
    implements a
{

    final ConstrainedImageView a;
    final b b;
    final m c;

    o(m m, ConstrainedImageView constrainedimageview, b b1)
    {
        c = m;
        a = constrainedimageview;
        b = b1;
        super();
    }

    public final void a(int i)
    {
        a.setUrl(b.a(i));
    }
}
