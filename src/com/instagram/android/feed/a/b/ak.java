// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

// Referenced classes of package com.instagram.android.feed.a.b:
//            as

final class ak
    implements android.view.View.OnClickListener
{

    final as a;

    ak(as as1)
    {
        a = as1;
        super();
    }

    public final void onClick(View view)
    {
        ((ListView)a.a.getParent()).smoothScrollBy(a.p.getTop() + a.a.getTop(), 200);
    }
}
