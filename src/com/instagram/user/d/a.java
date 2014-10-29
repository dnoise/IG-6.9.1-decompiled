// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.d;

import com.facebook.au;
import com.fasterxml.jackson.a.l;
import com.instagram.user.c.c;
import com.instagram.user.c.f;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.instagram.user.d:
//            c

public final class a
{

    private static final HashMap g;
    com.instagram.user.c.a a;
    String b;
    String c;
    List d;
    String e;
    List f;

    public a()
    {
    }

    public static a a(l l)
    {
        return com.instagram.user.d.c.a(l);
    }

    public final com.instagram.user.c.a a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final List c()
    {
        return d;
    }

    public final String d()
    {
        return c;
    }

    public final String e()
    {
        return e;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (a == null ? a1.a != null : !a.equals(a1.a))
            {
                return false;
            }
        }
        return true;
    }

    public final List f()
    {
        return f;
    }

    public final int g()
    {
        if (g.containsKey(c))
        {
            return ((Integer)g.get(c)).intValue();
        } else
        {
            return au.people_context_suggested;
        }
    }

    final a h()
    {
        a.a(c.c);
        a.a(f.b);
        return this;
    }

    public final int hashCode()
    {
        if (a != null)
        {
            return a.hashCode();
        } else
        {
            return 0;
        }
    }

    static 
    {
        HashMap hashmap = new HashMap();
        g = hashmap;
        hashmap.put("frequency_algorithm", Integer.valueOf(au.people_context_likes));
        g.put("mutual_friends_algorithm", Integer.valueOf(au.people_context_follows));
        g.put("chaining_algorithm", Integer.valueOf(au.people_context_follows));
        g.put("curated_algorithm", Integer.valueOf(au.people_context_suggested));
        g.put("facebook_friends_algorithm", Integer.valueOf(au.people_context_fb));
        g.put("pages_algorithm", Integer.valueOf(au.people_context_fb));
        g.put("popular_content_accounts_algorithm", Integer.valueOf(au.people_context_likes));
        g.put("follow_graph_algorithm", Integer.valueOf(au.people_context_follow));
        g.put("followers_algorithm", Integer.valueOf(au.people_context_follow));
        g.put("super_users_algorithm", Integer.valueOf(au.people_context_location));
        g.put("contact_importer_algorithm", Integer.valueOf(au.people_context_ci));
    }
}
