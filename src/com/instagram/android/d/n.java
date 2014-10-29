// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.az;
import com.instagram.service.a.a;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.d:
//            f, o, j

public final class n extends f
{

    public n(Fragment fragment, Bundle bundle)
    {
        super(fragment, bundle);
    }

    private o a()
    {
        return new o(b.l(), b.z(), new j(this));
    }

    protected final void a(Uri uri)
    {
        o o1 = a();
        o1.a(uri);
        o1.a(2);
        a = null;
    }

    protected final void b()
    {
        a().e();
        a = null;
    }

    public final CharSequence[] b(Context context)
    {
        if (a == null)
        {
            ArrayList arraylist = new ArrayList();
            com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
            if (a1 != null && !a1.e())
            {
                arraylist.add(context.getString(az.remove_current_picture));
            }
            arraylist.add(context.getString(az.take_picture));
            arraylist.add(context.getString(az.choose_from_library));
            arraylist.add(context.getString(az.import_from_facebook));
            arraylist.add(context.getString(az.import_from_twitter));
            a = (CharSequence[])arraylist.toArray(new CharSequence[arraylist.size()]);
        }
        return a;
    }

    protected final void e()
    {
        a().a(1);
        a = null;
    }

    protected final void f()
    {
        a().a(0);
        a = null;
    }

    protected final boolean i()
    {
        return false;
    }
}
