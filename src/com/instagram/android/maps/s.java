// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.g.b;
import com.instagram.common.j.a;
import com.instagram.common.j.d;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.d.t;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class s
    implements d
{

    final PhotoMapsActivity a;

    s(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    private boolean a(t t1)
    {
        return com.instagram.android.maps.PhotoMapsActivity.b(a).contains(t1.a);
    }

    private void b(t t1)
    {
        if (ad.a().b(t1.a).C() != 0)
        {
            Iterator iterator = PhotoMapsActivity.c(a).iterator();
            while (iterator.hasNext()) 
            {
                if (((b)iterator.next()).f().compareTo(t1.a) == 0)
                {
                    iterator.remove();
                    com.instagram.android.maps.PhotoMapsActivity.d(a);
                    return;
                }
            }
        }
    }

    public final volatile boolean a(a a1)
    {
        return a((t)a1);
    }

    public final volatile void b(a a1)
    {
        b((t)a1);
    }
}
