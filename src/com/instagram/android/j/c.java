// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.j;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.instagram.l.b.a;
import java.util.ArrayList;
import java.util.List;

public final class c
{

    private static final ObjectMapper a = new ObjectMapper();

    public static List a()
    {
        String s;
        s = com.instagram.l.b.a.a().f();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        return b(s);
        ArrayList arraylist = new ArrayList();
        return arraylist;
        Exception exception;
        exception;
        com.instagram.l.b.a.a().g();
        return null;
    }

    public static void a(String s)
    {
        List list;
        try
        {
            list = a();
            list.remove(s);
            for (; list.size() >= 15; list.remove(-1 + list.size())) { }
        }
        catch (Exception exception)
        {
            com.instagram.l.b.a.a().g();
            return;
        }
        list.add(0, s);
        com.instagram.l.b.a.a().b(a.writeValueAsString(list));
        return;
    }

    private static ArrayList b(String s)
    {
        com.fasterxml.jackson.databind.type.CollectionType collectiontype = a.getTypeFactory().constructCollectionType(java/util/ArrayList, java/lang/String);
        return (ArrayList)a.readValue(s, collectiontype);
    }

}
