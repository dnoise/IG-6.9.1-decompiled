// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.g.t;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.facebook:
//            b, cm, ak, cj

public final class a
    implements Serializable
{

    static final boolean a;
    private static final Date b;
    private static final Date c;
    private static final Date d;
    private static final Date e = new Date();
    private static final b f;
    private static final Date g;
    private final Date h;
    private final List i;
    private final String j;
    private final b k;
    private final Date l;

    private a(String s, Date date, List list, b b1, Date date1)
    {
        if (list == null)
        {
            list = Collections.emptyList();
        }
        h = date;
        i = Collections.unmodifiableList(list);
        j = s;
        k = b1;
        l = date1;
    }

    static a a(Bundle bundle)
    {
        ArrayList arraylist = bundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
        List list;
        if (arraylist == null)
        {
            list = Collections.emptyList();
        } else
        {
            list = Collections.unmodifiableList(new ArrayList(arraylist));
        }
        return new a(bundle.getString("com.facebook.TokenCachingStrategy.Token"), cm.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), list, cm.c(bundle), cm.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    }

    static a a(Bundle bundle, b b1)
    {
        Date date = a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        return a(((List) (bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS"))), bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), date, b1);
    }

    static a a(a a1, Bundle bundle)
    {
        if (!a && a1.k != b.b && a1.k != b.c && a1.k != b.d)
        {
            throw new AssertionError();
        } else
        {
            Date date = a(bundle, "expires_in", new Date(0L));
            String s = bundle.getString("access_token");
            return a(a1.c(), s, date, a1.k);
        }
    }

    static a a(a a1, List list)
    {
        return new a(a1.j, a1.h, list, a1.k, a1.l);
    }

    static a a(List list)
    {
        return new a("", g, list, b.a, e);
    }

    static a a(List list, Bundle bundle, b b1)
    {
        Date date = a(bundle, "expires_in", new Date());
        return a(list, bundle.getString("access_token"), date, b1);
    }

    private static a a(List list, String s, Date date, b b1)
    {
        if (t.a(s) || date == null)
        {
            return a(list);
        } else
        {
            return new a(s, date, list, b1, new Date());
        }
    }

    private static Date a(Bundle bundle, String s, Date date)
    {
        if (bundle == null)
        {
            return null;
        }
        Object obj = bundle.get(s);
        long l2;
        if (obj instanceof Long)
        {
            l2 = ((Long)obj).longValue();
        } else
        if (obj instanceof String)
        {
            long l1;
            try
            {
                l1 = Long.parseLong((String)obj);
            }
            catch (NumberFormatException numberformatexception)
            {
                return null;
            }
            l2 = l1;
        } else
        {
            return null;
        }
        if (l2 == 0L)
        {
            return new Date(0x7fffffffffffffffL);
        } else
        {
            return new Date(date.getTime() + l2 * 1000L);
        }
    }

    private void a(StringBuilder stringbuilder)
    {
        stringbuilder.append(" permissions:");
        if (i == null)
        {
            stringbuilder.append("null");
            return;
        } else
        {
            stringbuilder.append("[");
            stringbuilder.append(TextUtils.join(", ", i));
            stringbuilder.append("]");
            return;
        }
    }

    private String h()
    {
        if (j == null)
        {
            return "null";
        }
        if (cj.a(ak.b))
        {
            return j;
        } else
        {
            return "ACCESS_TOKEN_REMOVED";
        }
    }

    public final String a()
    {
        return j;
    }

    public final Date b()
    {
        return h;
    }

    public final List c()
    {
        return i;
    }

    public final b d()
    {
        return k;
    }

    public final Date e()
    {
        return l;
    }

    final Bundle f()
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.TokenCachingStrategy.Token", j);
        cm.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate", h);
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList(i));
        bundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", k);
        cm.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", l);
        return bundle;
    }

    final boolean g()
    {
        return t.a(j) || (new Date()).after(h);
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("{AccessToken");
        stringbuilder.append(" token:").append(h());
        a(stringbuilder);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        Date date;
        if (!com/facebook/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        b = new Date(0x8000000000000000L);
        date = new Date(0x7fffffffffffffffL);
        c = date;
        d = date;
        f = b.b;
        g = b;
    }
}
