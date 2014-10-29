// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import android.content.Context;
import android.support.v4.app.an;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.instagram.api.j.g;
import com.instagram.api.j.p;
import com.instagram.common.a.c.b;
import com.instagram.common.d.j;
import com.instagram.common.y.e.a;
import com.instagram.model.people.PeopleTag;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class y extends g
{

    private final String a;
    private final List d;
    private final List e;
    private String f;

    public y(Context context, an an, String s, List list, List list1, com.instagram.api.j.a a1)
    {
        super(context, an, com.instagram.common.y.e.a.a(), a1);
        a = s;
        d = list;
        e = list1;
    }

    private String o()
    {
        if (f == null)
        {
            ObjectMapper objectmapper = new ObjectMapper(com.instagram.common.n.a.a);
            SimpleModule simplemodule = new SimpleModule(w.a());
            simplemodule.addSerializer(com/instagram/model/people/PeopleTag, new com.instagram.model.people.a.a());
            objectmapper.registerModule(simplemodule);
            StringWriter stringwriter = new StringWriter();
            h h1 = com.instagram.common.n.a.a.createGenerator(stringwriter);
            h1.writeStartObject();
            h1.writeFieldName("in");
            objectmapper.writeValue(h1, e);
            if (d != null)
            {
                ArrayList arraylist = new ArrayList(d);
                arraylist.removeAll(e);
                if (arraylist.size() > 0)
                {
                    h1.writeFieldName("removed");
                    h1.writeStartArray();
                    for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); h1.writeString(((PeopleTag)iterator.next()).d())) { }
                    h1.writeEndArray();
                }
            }
            h1.writeEndObject();
            h1.close();
            f = stringwriter.toString();
        }
        return f;
    }

    protected final void a(b b1)
    {
        try
        {
            b1.a("usertags", o());
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public final boolean a(String s, l l1, p p1)
    {
        if ("media".equals(s))
        {
            l1.nextToken();
            com.instagram.feed.d.l l2 = com.instagram.feed.d.l.a(l1);
            p1.a(l2);
            com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
            com.instagram.model.people.b b1;
            if (d == null)
            {
                b1 = new com.instagram.model.people.b();
            } else
            {
                b1 = new com.instagram.model.people.b(d);
            }
            if (!b1.a(a1) && l2.a(a1) && l2.Y())
            {
                (new j(k())).a("com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED");
            }
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean b()
    {
        return true;
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.a;
    }

    protected final String c_()
    {
        return (new StringBuilder("usertags/")).append(a).append("/update/").toString();
    }
}
