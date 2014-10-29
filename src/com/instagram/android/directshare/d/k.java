// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.feed.d.b;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class k
    implements android.content.DialogInterface.OnClickListener
{

    final String a[];
    final b b;
    final c c;

    k(c c1, String as[], b b1)
    {
        c = c1;
        a = as;
        b = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        String s = a[i];
        if (s.equals(c.c(az.delete_comment)))
        {
            com.instagram.android.directshare.d.c.a(c, b);
        } else
        {
            if (s.equals(c.c(az.view_profile)))
            {
                f.a().a(c.p(), b.g().g()).a();
                return;
            }
            if (s.equals(c.c(az.copy_text)))
            {
                com.instagram.common.y.a.a.a(c.n(), b.f());
                Toast.makeText(c.n(), az.copied, 0).show();
                return;
            }
        }
    }
}
