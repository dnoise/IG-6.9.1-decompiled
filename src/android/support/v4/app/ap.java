// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.c;
import android.support.v4.c.a;
import android.support.v4.c.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.app:
//            an, aq, ao, r, 
//            u

final class ap extends an
{

    static boolean a = false;
    final d b = new d();
    final d c = new d();
    final String d;
    r e;
    boolean f;
    boolean g;
    boolean h;

    ap(String s, r r1, boolean flag)
    {
        d = s;
        e = r1;
        f = flag;
    }

    private aq b(int i, Bundle bundle, ao ao1)
    {
        aq aq1 = new aq(this, i, bundle, ao1);
        aq1.d = ao1.a(bundle);
        return aq1;
    }

    private aq c(int i, Bundle bundle, ao ao1)
    {
        aq aq1;
        h = true;
        aq1 = b(i, bundle, ao1);
        a(aq1);
        h = false;
        return aq1;
        Exception exception;
        exception;
        h = false;
        throw exception;
    }

    public final c a(int i, Bundle bundle, ao ao1)
    {
        if (h)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        aq aq1 = (aq)b.a(i);
        if (a)
        {
            (new StringBuilder("initLoader in ")).append(this).append(": args=").append(bundle);
        }
        if (aq1 == null)
        {
            aq1 = c(i, bundle, ao1);
            if (a)
            {
                (new StringBuilder("  Created new loader ")).append(aq1);
            }
        } else
        {
            if (a)
            {
                (new StringBuilder("  Re-using existing loader ")).append(aq1);
            }
            aq1.c = ao1;
        }
        if (aq1.e && f)
        {
            aq1.b(aq1.d, aq1.g);
        }
        return aq1.d;
    }

    public final c a(int i, ao ao1)
    {
        aq aq1;
        if (h)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        aq1 = (aq)b.a(i);
        if (a)
        {
            (new StringBuilder("restartLoader in ")).append(this).append(": args=").append(null);
        }
        if (aq1 == null) goto _L2; else goto _L1
_L1:
        aq aq2 = (aq)c.a(i);
        if (aq2 == null) goto _L4; else goto _L3
_L3:
        if (!aq1.e) goto _L6; else goto _L5
_L5:
        if (a)
        {
            (new StringBuilder("  Removing last inactive loader: ")).append(aq1);
        }
        aq2.f = false;
        aq2.f();
_L9:
        aq1.d.p();
        c.a(i, aq1);
_L2:
        return c(i, null, ao1).d;
_L6:
        if (aq1.h)
        {
            break; /* Loop/switch isn't completed */
        }
        a;
        b.a(i, null);
        aq1.f();
        if (true) goto _L2; else goto _L7
_L7:
        if (aq1.n != null)
        {
            if (a)
            {
                (new StringBuilder("  Removing pending loader: ")).append(aq1.n);
            }
            aq1.n.f();
            aq1.n = null;
        }
        a;
        aq1.n = b(i, null, ao1);
        return aq1.n.d;
_L4:
        if (a)
        {
            (new StringBuilder("  Making last loader inactive: ")).append(aq1);
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final void a(int i)
    {
        if (h)
        {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (a)
        {
            (new StringBuilder("destroyLoader in ")).append(this).append(" of ").append(i);
        }
        int j = b.f(i);
        if (j >= 0)
        {
            aq aq2 = (aq)b.e(j);
            b.c(j);
            aq2.f();
        }
        int k = c.f(i);
        if (k >= 0)
        {
            aq aq1 = (aq)c.e(k);
            c.c(k);
            aq1.f();
        }
        if (e != null && !a())
        {
            e.g().h();
        }
    }

    final void a(aq aq1)
    {
        b.a(aq1.a, aq1);
        if (f)
        {
            aq1.a();
        }
    }

    final void a(r r1)
    {
        e = r1;
    }

    public final void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        int i = 0;
        if (b.a() > 0)
        {
            printwriter.print(s);
            printwriter.println("Active Loaders:");
            String s2 = (new StringBuilder()).append(s).append("    ").toString();
            for (int j = 0; j < b.a(); j++)
            {
                aq aq2 = (aq)b.e(j);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(b.d(j));
                printwriter.print(": ");
                printwriter.println(aq2.toString());
                aq2.a(s2, filedescriptor, printwriter, as);
            }

        }
        if (c.a() > 0)
        {
            printwriter.print(s);
            printwriter.println("Inactive Loaders:");
            String s1 = (new StringBuilder()).append(s).append("    ").toString();
            for (; i < c.a(); i++)
            {
                aq aq1 = (aq)c.e(i);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(c.d(i));
                printwriter.print(": ");
                printwriter.println(aq1.toString());
                aq1.a(s1, filedescriptor, printwriter, as);
            }

        }
    }

    public final boolean a()
    {
        int i = b.a();
        int j = 0;
        boolean flag = false;
        while (j < i) 
        {
            aq aq1 = (aq)b.e(j);
            boolean flag1;
            if (aq1.h && !aq1.f)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag |= flag1;
            j++;
        }
        return flag;
    }

    final void b()
    {
        if (a)
        {
            (new StringBuilder("Starting in ")).append(this);
        }
        if (f)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doStart when already started: ")).append(this);
        } else
        {
            f = true;
            int i = -1 + b.a();
            while (i >= 0) 
            {
                ((aq)b.e(i)).a();
                i--;
            }
        }
    }

    final void c()
    {
        if (a)
        {
            (new StringBuilder("Stopping in ")).append(this);
        }
        if (!f)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doStop when not started: ")).append(this);
            return;
        }
        for (int i = -1 + b.a(); i >= 0; i--)
        {
            ((aq)b.e(i)).e();
        }

        f = false;
    }

    final void d()
    {
        if (a)
        {
            (new StringBuilder("Retaining in ")).append(this);
        }
        if (!f)
        {
            (new RuntimeException("here")).fillInStackTrace();
            (new StringBuilder("Called doRetain when not started: ")).append(this);
        } else
        {
            g = true;
            f = false;
            int i = -1 + b.a();
            while (i >= 0) 
            {
                ((aq)b.e(i)).b();
                i--;
            }
        }
    }

    final void e()
    {
        if (g)
        {
            if (a)
            {
                (new StringBuilder("Finished Retaining in ")).append(this);
            }
            g = false;
            for (int i = -1 + b.a(); i >= 0; i--)
            {
                ((aq)b.e(i)).c();
            }

        }
    }

    final void f()
    {
        for (int i = -1 + b.a(); i >= 0; i--)
        {
            ((aq)b.e(i)).k = true;
        }

    }

    final void g()
    {
        for (int i = -1 + b.a(); i >= 0; i--)
        {
            ((aq)b.e(i)).d();
        }

    }

    final void h()
    {
        if (!g)
        {
            if (a)
            {
                (new StringBuilder("Destroying Active in ")).append(this);
            }
            for (int j = -1 + b.a(); j >= 0; j--)
            {
                ((aq)b.e(j)).f();
            }

            b.b();
        }
        if (a)
        {
            (new StringBuilder("Destroying Inactive in ")).append(this);
        }
        for (int i = -1 + c.a(); i >= 0; i--)
        {
            ((aq)c.e(i)).f();
        }

        c.b();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        android.support.v4.c.a.a(e, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

}
