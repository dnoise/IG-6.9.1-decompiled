// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.g.b;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.e.a;
import com.instagram.android.maps.ui.a.c;
import com.instagram.android.maps.ui.ah;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class i
    implements c
{

    final ah a;
    final PhotoMapsActivity b;

    i(PhotoMapsActivity photomapsactivity, ah ah1)
    {
        b = photomapsactivity;
        a = ah1;
        super();
    }

    public final boolean a(f f1)
    {
        boolean flag1;
        if (com.instagram.android.maps.e.a.a().b())
        {
            if (a.a().g().size() == 1)
            {
                com.instagram.android.maps.e.a.a().a((b)a.a().g().get(0));
            } else
            {
                com.instagram.android.maps.d.a.a(f1.g(), b.c());
            }
            flag1 = true;
        } else
        {
            com.instagram.android.maps.PhotoMapsActivity.f(b).getMapCenter();
            boolean flag = b.a(f1);
            flag1 = false;
            if (!flag)
            {
                return com.instagram.android.maps.PhotoMapsActivity.a(b, f1, a);
            }
        }
        return flag1;
    }
}
