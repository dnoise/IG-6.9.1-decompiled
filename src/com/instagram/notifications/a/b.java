// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.a;

import android.content.Intent;
import com.instagram.common.l.a.d;
import com.instagram.common.u.c.a;
import java.io.IOException;

// Referenced classes of package com.instagram.notifications.a:
//            a, c

public class b
    implements a
{

    private static final Class l = com/instagram/notifications/a/b;
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    String j;
    String k;

    public b()
    {
    }

    public static b a(Intent intent)
    {
        b b1 = a(intent.getStringExtra("data"));
        String s = intent.getStringExtra("collapse_key");
        if (s == null)
        {
            s = a.l;
        }
        b1.e = s;
        return b1;
    }

    public static b a(String s)
    {
        b b1;
        try
        {
            b1 = com.instagram.notifications.a.c.a(s);
        }
        catch (IOException ioexception)
        {
            Class _tmp = l;
            return null;
        }
        return b1;
    }

    public final String a()
    {
        return i;
    }

    public final String b()
    {
        return e;
    }

    public final void b(String s)
    {
        d = s;
    }

    public final String c()
    {
        if (a == null)
        {
            return "Instagram";
        } else
        {
            return a;
        }
    }

    public final String d()
    {
        return b;
    }

    public final String e()
    {
        if (c == null)
        {
            return d();
        } else
        {
            return c;
        }
    }

    public boolean equals(Object obj)
    {
        b b1;
        if (obj instanceof b)
        {
            if (com.instagram.common.l.a.d.a(c(), (b1 = (b)obj).c()) && com.instagram.common.l.a.d.a(b, b1.b) && com.instagram.common.l.a.d.a(e(), b1.e()) && com.instagram.common.l.a.d.a(f(), b1.f()) && com.instagram.common.l.a.d.a(f, b1.f) && com.instagram.common.l.a.d.a(g, b1.g) && com.instagram.common.l.a.d.a(e, b1.e) && com.instagram.common.l.a.d.a(h, b1.h) && com.instagram.common.l.a.d.a(i, b1.i) && com.instagram.common.l.a.d.a(j, b1.j))
            {
                return true;
            }
        }
        return false;
    }

    public final String f()
    {
        if (k != null)
        {
            return k;
        } else
        {
            return d;
        }
    }

    public final String g()
    {
        return f;
    }

    public final String h()
    {
        return g;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[11];
        aobj[0] = a;
        aobj[1] = b;
        aobj[2] = c;
        aobj[3] = d;
        aobj[4] = k;
        aobj[5] = f;
        aobj[6] = g;
        aobj[7] = e;
        aobj[8] = h;
        aobj[9] = i;
        aobj[10] = j;
        return com.instagram.common.l.a.d.a(aobj);
    }

    public final String i()
    {
        return j;
    }

    public final String j()
    {
        return h;
    }

    public final String k()
    {
        return i;
    }

    public final String l()
    {
        String s;
        try
        {
            s = com.instagram.notifications.a.c.a(this);
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a(com/instagram/notifications/a/b, "Unexpected IO exception", ioexception);
            return "";
        }
        return s;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("IgNotification{");
        stringbuilder.append("mTitle='").append(a).append('\'');
        stringbuilder.append(", mMessage='").append(b).append('\'');
        stringbuilder.append(", mTickerText='").append(c).append('\'');
        stringbuilder.append(", mIgAction='").append(d).append('\'');
        stringbuilder.append(", mIgActionOverride='").append(k).append('\'');
        stringbuilder.append(", mOptionalImage='").append(f).append('\'');
        stringbuilder.append(", mOptionalAvatarUrl='").append(g).append('\'');
        stringbuilder.append(", mCollapseKey='").append(e).append('\'');
        stringbuilder.append(", mSound='").append(h).append('\'');
        stringbuilder.append(", mPushId='").append(i).append('\'');
        stringbuilder.append(", mIntendedRecipientUserid='").append(j).append('\'');
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
