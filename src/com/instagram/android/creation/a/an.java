// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.location.Location;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ac;
import android.support.v4.app.s;

// Referenced classes of package com.instagram.android.creation.a:
//            ah, t, d

final class an extends ac
{

    final ah a;
    private final Bundle b = new Bundle();

    public an(ah ah1, s s)
    {
        a = ah1;
        super(s);
        b.putString("pendingMediaKey", ah1.j().getString("pendingMediaKey"));
        boolean flag = ah1.j().containsKey("latitude");
        Location location = null;
        if (flag)
        {
            boolean flag1 = ah1.j().containsKey("longitude");
            location = null;
            if (flag1)
            {
                location = new Location("photo");
                location.setLatitude(ah1.j().getDouble("latitude"));
                location.setLongitude(ah1.j().getDouble("longitude"));
            }
        }
        b.putParcelable("location", location);
    }

    public final Fragment a(int i)
    {
        if (i == 0)
        {
            t t1 = new t();
            t1.g(b);
            return t1;
        }
        if (i == 1)
        {
            d d1 = new d();
            d1.g(b);
            return d1;
        } else
        {
            throw new IllegalArgumentException("Invalid position");
        }
    }

    public final int c()
    {
        return 2;
    }
}
