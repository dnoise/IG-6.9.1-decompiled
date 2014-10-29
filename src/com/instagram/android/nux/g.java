// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import com.fasterxml.jackson.a.p;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.instagram.service.b.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
{

    public final int a;
    public final com.instagram.user.c.a b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final List g;

    private g(int i, com.instagram.user.c.a a1, String s, String s1, String s2, String s3, List list)
    {
        a = i;
        b = a1;
        d = s1;
        c = s;
        e = s2;
        f = s3;
        g = list;
    }

    public static g a(JsonNode jsonnode)
    {
        JsonNode jsonnode1 = jsonnode.get("code");
        int i = 0;
        if (jsonnode1 != null)
        {
            i = jsonnode1.asInt();
        }
        JsonNode jsonnode2 = jsonnode.get("email");
        String s;
        JsonNode jsonnode3;
        String s1;
        JsonNode jsonnode4;
        String s2;
        String s3;
        String s4;
        if (jsonnode2 != null)
        {
            s = jsonnode2.asText();
        } else
        {
            s = null;
        }
        jsonnode3 = jsonnode.get("token");
        if (jsonnode3 != null)
        {
            s1 = jsonnode3.asText();
        } else
        {
            s1 = null;
        }
        jsonnode4 = jsonnode.get("fb_me");
        if (jsonnode4 != null)
        {
            JsonNode jsonnode7 = jsonnode4.get("name");
            a a1;
            p p1;
            com.instagram.user.c.a a2;
            ArrayList arraylist;
            JsonNode jsonnode5;
            Iterator iterator;
            JsonNode jsonnode6;
            com.instagram.user.c.a a3;
            JsonNode jsonnode8;
            JsonNode jsonnode9;
            if (jsonnode7 != null)
            {
                s3 = jsonnode7.asText();
            } else
            {
                s3 = null;
            }
            jsonnode8 = jsonnode4.get("email");
            if (jsonnode8 != null)
            {
                s = jsonnode8.asText();
            }
            jsonnode9 = jsonnode4.get("username");
            if (jsonnode9 != null)
            {
                s4 = jsonnode9.asText();
                s2 = s;
            } else
            {
                s2 = s;
                s4 = null;
            }
        } else
        {
            s2 = s;
            s3 = null;
            s4 = null;
        }
        a1 = com.instagram.service.b.a.a();
        jsonnode6 = jsonnode.get("logged_in_user");
        if (jsonnode6 != null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        jsonnode6 = jsonnode.get("user");
        if (jsonnode6 == null) goto _L2; else goto _L1
_L1:
        a3 = (com.instagram.user.c.a)a1.treeToValue(jsonnode6, com/instagram/user/c/a);
_L5:
        a2 = a3;
_L3:
        arraylist = new ArrayList();
        jsonnode5 = jsonnode.get("suggestions");
        if (jsonnode5 != null)
        {
            for (iterator = jsonnode5.iterator(); iterator.hasNext(); arraylist.add(((JsonNode)iterator.next()).asText())) { }
        }
        return new g(i, a2, s3, s4, s2, s1, arraylist);
        p1;
        a2 = null;
        if (true) goto _L3; else goto _L2
_L2:
        a3 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final boolean a()
    {
        return a == 0 || a == 7;
    }

    public final boolean b()
    {
        return a == 1 || a == 7;
    }

    public final boolean c()
    {
        return a == 5;
    }

    public final boolean d()
    {
        return a == 4;
    }
}
