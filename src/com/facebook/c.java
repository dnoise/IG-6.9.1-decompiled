// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.facebook:
//            bc, aj, z, k, 
//            cg, m, p, q, 
//            v, s, bl, a, 
//            f, g, h, j, 
//            r, az, l, d, 
//            e, u

final class c
    implements Serializable
{

    List a;
    j b;
    transient Context c;
    transient u d;
    transient r e;
    transient l f;
    transient boolean g;
    k h;

    c()
    {
    }

    private int a(String s1)
    {
        return c.checkCallingOrSelfPermission(s1);
    }

    static void a(c c1)
    {
        c1.j();
    }

    private static bc b(String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s1);
        return new bc(null, "me/permissions", bundle, aj.a, null);
    }

    static void b(c c1)
    {
        c1.i();
    }

    private void b(k k1)
    {
        if (k1 != null)
        {
            if (h != null)
            {
                throw new z("Attempted to authorize while a request is pending.");
            }
            if (!k1.i() || f())
            {
                h = k1;
                a = c(k1);
                b();
                return;
            }
        }
    }

    private static bc c(String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id");
        bundle.putString("access_token", s1);
        return new bc(null, "me", bundle, aj.a, null);
    }

    private List c(k k1)
    {
        ArrayList arraylist = new ArrayList();
        cg cg1 = k1.c();
        if (cg1.a())
        {
            if (!k1.g())
            {
                arraylist.add(new m(this));
                arraylist.add(new p(this));
            }
            arraylist.add(new q(this));
        }
        if (cg1.b())
        {
            arraylist.add(new v(this));
        }
        return arraylist;
    }

    private void c(s s1)
    {
        if (s1.b == null)
        {
            throw new z("Can't validate without a token");
        } else
        {
            bl bl1 = d(s1);
            i();
            bl1.h();
            return;
        }
    }

    private bl d(s s1)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        String s2 = s1.b.a();
        f f1 = new f(this, arraylist);
        String s3 = h.h();
        bc bc1 = c(s3);
        bc1.a(f1);
        bc bc2 = c(s2);
        bc2.a(f1);
        bc bc3 = b(s3);
        bc3.a(new g(this, arraylist1));
        bl bl1 = new bl(new bc[] {
            bc1, bc2, bc3
        });
        bl1.a(h.f());
        bl1.a(new h(this, arraylist, s1, arraylist1));
        return bl1;
    }

    private void d()
    {
        if (h == null || b == null)
        {
            throw new z("Attempted to continue authorization without a pending request.");
        }
        if (b.a())
        {
            b.c();
            h();
        }
    }

    private void e(s s1)
    {
        if (e != null)
        {
            e.a(s1);
        }
    }

    private boolean e()
    {
        return h != null && b != null;
    }

    private boolean f()
    {
        if (g)
        {
            return true;
        }
        if (a("android.permission.INTERNET") != 0)
        {
            b(s.a(c.getString(az.com_facebook_internet_permission_error_title), c.getString(az.com_facebook_internet_permission_error_message)));
            return false;
        } else
        {
            g = true;
            return true;
        }
    }

    private void g()
    {
        b(s.a("Login attempt failed.", null));
    }

    private boolean h()
    {
        if (b.b() && !f())
        {
            return false;
        } else
        {
            return b.a(h);
        }
    }

    private void i()
    {
        if (f != null)
        {
            f.a();
        }
    }

    private void j()
    {
        if (f != null)
        {
            f.b();
        }
    }

    final void a()
    {
        if (b != null)
        {
            b.c();
        }
    }

    final void a(Activity activity)
    {
        c = activity;
        d = new d(this, activity);
    }

    final void a(Context context)
    {
        c = context;
        d = null;
    }

    final void a(k k1)
    {
        if (e())
        {
            d();
            return;
        } else
        {
            b(k1);
            return;
        }
    }

    final void a(l l1)
    {
        f = l1;
    }

    final void a(r r1)
    {
        e = r1;
    }

    final void a(s s1)
    {
        if (s1.b != null && h.i())
        {
            c(s1);
            return;
        } else
        {
            b(s1);
            return;
        }
    }

    final boolean a(int i1, int j1, Intent intent)
    {
        if (i1 == h.d())
        {
            return b.a(j1, intent);
        } else
        {
            return false;
        }
    }

    final void b()
    {
_L4:
        if (a == null || a.isEmpty()) goto _L2; else goto _L1
_L1:
        b = (j)a.remove(0);
        if (!h()) goto _L4; else goto _L3
_L3:
        return;
_L2:
        if (h != null)
        {
            g();
            return;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    final void b(s s1)
    {
        a = null;
        b = null;
        h = null;
        e(s1);
    }

    final u c()
    {
        if (d != null)
        {
            return d;
        }
        if (h != null)
        {
            return new e(this);
        } else
        {
            return null;
        }
    }
}
