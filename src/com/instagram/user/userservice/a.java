// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice;

import android.content.SharedPreferences;
import com.instagram.common.a.a.f;
import java.io.IOException;
import java.util.Collection;

// Referenced classes of package com.instagram.user.userservice:
//            b

public abstract class a
{

    public a()
    {
    }

    static void a(a a1)
    {
        a1.h();
    }

    private void e()
    {
        if (f())
        {
            i();
            return;
        } else
        {
            h();
            return;
        }
    }

    private boolean f()
    {
        return g() < System.currentTimeMillis();
    }

    private long g()
    {
        return c().getLong("EXPIRES_DATE", -1L);
    }

    private void h()
    {
        a(false);
        try
        {
            b();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    private void i()
    {
        (new f()).a(d().a(new b(this, (byte)0)));
    }

    public final void a()
    {
        try
        {
            e();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("UserServiceHelper", "An exception occurred fetching users");
        }
    }

    public final void a(long l)
    {
        c().edit().putLong("EXPIRES_DATE", l).commit();
    }

    protected abstract void a(com.instagram.user.c.a a1);

    protected abstract void a(Collection collection);

    public abstract void a(boolean flag);

    protected abstract void b();

    protected abstract SharedPreferences c();

    protected abstract com.instagram.api.k.a.a d();
}
