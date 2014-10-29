// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import android.graphics.PointF;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.model.people.PeopleTag;

public final class n extends StdDeserializer
{

    public n()
    {
        super(com/instagram/model/people/PeopleTag);
    }

    private static PeopleTag a(l l1)
    {
        String s = null;
        PeopleTag peopletag = new PeopleTag();
        String s1 = null;
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s2 = l1.getCurrentName();
            if ("username".equals(s2))
            {
                l1.nextToken();
                s1 = l1.getText();
            } else
            if ("user_id".equals(s2))
            {
                l1.nextToken();
                s = l1.getText();
            } else
            if ("position".equals(s2))
            {
                l1.nextToken();
                l1.nextToken();
                float f = l1.getFloatValue();
                l1.nextToken();
                peopletag.a(new PointF(f, l1.getFloatValue()));
                l1.nextToken();
            } else
            if (s2 != null)
            {
                l1.skipChildren();
            }
        } while (true);
        if (s1 != null && s != null)
        {
            peopletag.a(s1);
            peopletag.b(s);
        }
        return peopletag;
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
