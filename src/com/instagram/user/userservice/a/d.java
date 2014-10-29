// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import android.content.SharedPreferences;
import com.instagram.common.y.c.e;
import com.instagram.user.b.b;
import com.instagram.user.userservice.a;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.user.userservice.a:
//            a, h

public final class d extends a
{

    private static final com.instagram.common.y.c.d a = com.instagram.common.y.c.e.a().a("autocomplete").c();

    public d()
    {
    }

    static com.instagram.common.y.c.d e()
    {
        return a;
    }

    private static com.instagram.user.userservice.a.a f()
    {
        return new com.instagram.user.userservice.a.a();
    }

    protected final void a(com.instagram.user.c.a a1)
    {
        com.instagram.user.userservice.a.h.a(a1);
        com.instagram.f.d.a.a().a(a1);
    }

    protected final void a(Collection collection)
    {
        android.content.SharedPreferences.Editor editor = c().edit();
        for (Iterator iterator = collection.iterator(); iterator.hasNext();)
        {
            com.instagram.user.c.a a1 = (com.instagram.user.c.a)iterator.next();
            try
            {
                editor.putString(a1.g(), com.instagram.user.b.b.a(a1));
                a(a1);
            }
            catch (IOException ioexception) { }
        }

        editor.commit();
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            c().edit().clear().commit();
        }
        com.instagram.user.userservice.a.h.a();
        com.instagram.f.d.a.a().c();
    }

    protected final void b()
    {
        Iterator iterator = c().getAll().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (!((String)entry.getKey()).equals("EXPIRES_DATE"))
            {
                a(com.instagram.user.b.b.a((String)entry.getValue()));
            }
        } while (true);
    }

    protected final SharedPreferences c()
    {
        return com.instagram.l.b.a.a.a("autoCompleteUserStoreV2");
    }

    protected final com.instagram.api.k.a.a d()
    {
        return f();
    }

}
