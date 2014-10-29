// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.View;
import com.instagram.android.directshare.widget.RecipientView;
import com.instagram.model.b.a;
import java.util.List;

// Referenced classes of package com.instagram.android.directshare.d:
//            am

final class al
    implements android.view.View.OnClickListener
{

    final am a;
    final List b;
    final int c;
    final RecipientView d;

    al(am am1, List list, int i, RecipientView recipientview)
    {
        a = am1;
        b = list;
        c = i;
        d = recipientview;
        super();
    }

    public final void onClick(View view)
    {
        a.a((a)b.get(c), d);
    }
}
