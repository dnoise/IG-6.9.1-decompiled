// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import android.location.Location;
import com.instagram.i.a;
import java.util.Observable;
import java.util.Observer;

// Referenced classes of package com.instagram.android.creation:
//            d

final class e
    implements Observer
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void update(Observable observable, Object obj)
    {
        Location location = (Location)obj;
        if (com.instagram.i.a.b(location))
        {
            com.instagram.android.creation.d.a(a, location);
        }
    }
}
