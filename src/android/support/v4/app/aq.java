// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.a.c;
import android.support.v4.a.d;
import android.support.v4.c.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

// Referenced classes of package android.support.v4.app:
//            ap, ao, r, u

final class aq
    implements d
{

    final int a;
    final Bundle b;
    ao c;
    c d;
    boolean e;
    boolean f;
    Object g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    aq n;
    final ap o;

    public aq(ap ap1, int i1, Bundle bundle, ao ao1)
    {
        o = ap1;
        super();
        a = i1;
        b = bundle;
        c = ao1;
    }

    final void a()
    {
        if (i && j)
        {
            h = true;
        } else
        if (!h)
        {
            h = true;
            if (android.support.v4.app.ap.a)
            {
                (new StringBuilder("  Starting: ")).append(this);
            }
            if (d == null && c != null)
            {
                ao ao1 = c;
                int _tmp = a;
                d = ao1.a(b);
            }
            if (d != null)
            {
                if (d.getClass().isMemberClass() && !Modifier.isStatic(d.getClass().getModifiers()))
                {
                    throw new IllegalArgumentException((new StringBuilder("Object returned from onCreateLoader must not be a non-static inner member class: ")).append(d).toString());
                }
                if (!m)
                {
                    d.a(a, this);
                    m = true;
                }
                d.k();
                return;
            }
        }
    }

    public final void a(c c1, Object obj)
    {
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("onLoadComplete: ")).append(this);
        }
        if (l)
        {
            boolean _tmp = android.support.v4.app.ap.a;
        } else
        {
            if (o.b.a(a) != this)
            {
                boolean _tmp1 = android.support.v4.app.ap.a;
                return;
            }
            aq aq1 = n;
            if (aq1 != null)
            {
                if (android.support.v4.app.ap.a)
                {
                    (new StringBuilder("  Switching to pending loader: ")).append(aq1);
                }
                n = null;
                o.b.a(a, null);
                f();
                o.a(aq1);
                return;
            }
            if (g != obj || !e)
            {
                g = obj;
                e = true;
                if (h)
                {
                    b(c1, obj);
                }
            }
            aq aq2 = (aq)o.c.a(a);
            if (aq2 != null && aq2 != this)
            {
                aq2.f = false;
                aq2.f();
                o.c.b(a);
            }
            if (o.e != null && !o.a())
            {
                o.e.g().h();
                return;
            }
        }
    }

    public final void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mId=");
        printwriter.print(a);
        printwriter.print(" mArgs=");
        printwriter.println(b);
        printwriter.print(s);
        printwriter.print("mCallbacks=");
        printwriter.println(c);
        printwriter.print(s);
        printwriter.print("mLoader=");
        printwriter.println(d);
        if (d != null)
        {
            d.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (e || f)
        {
            printwriter.print(s);
            printwriter.print("mHaveData=");
            printwriter.print(e);
            printwriter.print("  mDeliveredData=");
            printwriter.println(f);
            printwriter.print(s);
            printwriter.print("mData=");
            printwriter.println(g);
        }
        printwriter.print(s);
        printwriter.print("mStarted=");
        printwriter.print(h);
        printwriter.print(" mReportNextStart=");
        printwriter.print(k);
        printwriter.print(" mDestroyed=");
        printwriter.println(l);
        printwriter.print(s);
        printwriter.print("mRetaining=");
        printwriter.print(i);
        printwriter.print(" mRetainingStarted=");
        printwriter.print(j);
        printwriter.print(" mListenerRegistered=");
        printwriter.println(m);
        if (n != null)
        {
            printwriter.print(s);
            printwriter.println("Pending Loader ");
            printwriter.print(n);
            printwriter.println(":");
            n.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    final void b()
    {
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("  Retaining: ")).append(this);
        }
        i = true;
        j = h;
        h = false;
        c = null;
    }

    final void b(c c1, Object obj)
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        String s;
        Exception exception;
        if (o.e != null)
        {
            String s1 = o.e.g().u;
            o.e.g().u = "onLoadFinished";
            s = s1;
        } else
        {
            s = null;
        }
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("  onLoadFinished in ")).append(c1).append(": ").append(android.support.v4.a.c.b(obj));
        }
        c.a(c1, obj);
        if (o.e != null)
        {
            o.e.g().u = s;
        }
        f = true;
        return;
        exception;
        if (o.e != null)
        {
            o.e.g().u = s;
        }
        throw exception;
    }

    final void c()
    {
        if (i)
        {
            if (android.support.v4.app.ap.a)
            {
                (new StringBuilder("  Finished Retaining: ")).append(this);
            }
            i = false;
            if (h != j && !h)
            {
                e();
            }
        }
        if (h && e && !k)
        {
            b(d, g);
        }
    }

    final void d()
    {
        if (h && k)
        {
            k = false;
            if (e)
            {
                b(d, g);
            }
        }
    }

    final void e()
    {
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("  Stopping: ")).append(this);
        }
        h = false;
        if (!i && d != null && m)
        {
            m = false;
            d.a(this);
            d.n();
        }
    }

    final void f()
    {
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("  Destroying: ")).append(this);
        }
        l = true;
        boolean flag = f;
        f = false;
        if (c == null || d == null || !e || !flag)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (android.support.v4.app.ap.a)
        {
            (new StringBuilder("  Reseting: ")).append(this);
        }
        String s;
        Exception exception;
        if (o.e != null)
        {
            String s1 = o.e.g().u;
            o.e.g().u = "onLoaderReset";
            s = s1;
        } else
        {
            s = null;
        }
        c;
        d;
        if (o.e != null)
        {
            o.e.g().u = s;
        }
        c = null;
        g = null;
        e = false;
        if (d != null)
        {
            if (m)
            {
                m = false;
                d.a(this);
            }
            d.q();
        }
        if (n != null)
        {
            n.f();
        }
        return;
        exception;
        if (o.e != null)
        {
            o.e.g().u = s;
        }
        throw exception;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        stringbuilder.append("LoaderInfo{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" #");
        stringbuilder.append(a);
        stringbuilder.append(" : ");
        android.support.v4.c.a.a(d, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }
}
