// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import java.util.List;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity, ab

final class aa extends f
{

    final PhotoMapsActivity a;

    aa(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    private void a(List list)
    {
        PhotoMapsActivity.a(a, list);
        PhotoMapsActivity.h(a);
    }

    public final void a()
    {
        PhotoMapsActivity.b(a, true);
        com.instagram.android.maps.PhotoMapsActivity.j(a).b(true);
        super.a();
    }

    protected final void a(j j1)
    {
        if (j1 != null && j1.d() != null && j1.d().equals(Integer.valueOf(400)) && PhotoMapsActivity.i(a))
        {
            PhotoMapsActivity.g(a).post(new ab(this));
        } else
        {
            Toast.makeText(a, a.getString(az.could_not_load_photo_map_information), 0).show();
        }
        super.a(j1);
    }

    protected final volatile void a(Object obj)
    {
        a((List)obj);
    }

    public final void b()
    {
        PhotoMapsActivity.b(a, false);
        com.instagram.android.maps.PhotoMapsActivity.j(a).b(false);
        super.b();
    }
}
