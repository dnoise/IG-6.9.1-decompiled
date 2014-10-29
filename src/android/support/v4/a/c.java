// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Context;
import android.support.v4.c.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.a:
//            d

public class c
{

    int f;
    d g;
    Context h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;

    public c(Context context)
    {
        i = false;
        j = false;
        k = true;
        l = false;
        m = false;
        h = context.getApplicationContext();
    }

    public static String b(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        android.support.v4.c.a.a(obj, stringbuilder);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    protected void a()
    {
    }

    public final void a(int i1, d d1)
    {
        if (g != null)
        {
            throw new IllegalStateException("There is already a listener registered");
        } else
        {
            g = d1;
            f = i1;
            return;
        }
    }

    public final void a(d d1)
    {
        if (g == null)
        {
            throw new IllegalStateException("No listener register");
        }
        if (g != d1)
        {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else
        {
            g = null;
            return;
        }
    }

    public void a(Object obj)
    {
        if (g != null)
        {
            g.a(this, obj);
        }
    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s1);
        printwriter.print("mId=");
        printwriter.print(f);
        printwriter.print(" mListener=");
        printwriter.println(g);
        if (i || l || m)
        {
            printwriter.print(s1);
            printwriter.print("mStarted=");
            printwriter.print(i);
            printwriter.print(" mContentChanged=");
            printwriter.print(l);
            printwriter.print(" mProcessingChange=");
            printwriter.println(m);
        }
        if (j || k)
        {
            printwriter.print(s1);
            printwriter.print("mAbandoned=");
            printwriter.print(j);
            printwriter.print(" mReset=");
            printwriter.println(k);
        }
    }

    public final Context f()
    {
        return h;
    }

    public final int g()
    {
        return f;
    }

    public final boolean h()
    {
        return i;
    }

    public final boolean i()
    {
        return j;
    }

    public final boolean j()
    {
        return k;
    }

    public final void k()
    {
        i = true;
        k = false;
        j = false;
        l();
    }

    protected void l()
    {
    }

    public final void m()
    {
        a();
    }

    public final void n()
    {
        i = false;
        o();
    }

    protected void o()
    {
    }

    public final void p()
    {
        j = true;
    }

    public final void q()
    {
        r();
        k = true;
        i = false;
        j = false;
        l = false;
        m = false;
    }

    protected void r()
    {
    }

    public final void s()
    {
        m = false;
    }

    public final void t()
    {
        if (m)
        {
            l = true;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        android.support.v4.c.a.a(this, stringbuilder);
        stringbuilder.append(" id=");
        stringbuilder.append(f);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
