// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UnwrappedPropertyHandler
{

    protected final List _properties;

    public UnwrappedPropertyHandler()
    {
        _properties = new ArrayList();
    }

    protected UnwrappedPropertyHandler(List list)
    {
        _properties = list;
    }

    public void addProperty(SettableBeanProperty settablebeanproperty)
    {
        _properties.add(settablebeanproperty);
    }

    public Object processUnwrapped(l l1, DeserializationContext deserializationcontext, Object obj, TokenBuffer tokenbuffer)
    {
        int i = _properties.size();
        for (int j = 0; j < i; j++)
        {
            SettableBeanProperty settablebeanproperty = (SettableBeanProperty)_properties.get(j);
            l l2 = tokenbuffer.asParser();
            l2.nextToken();
            settablebeanproperty.deserializeAndSet(l2, deserializationcontext, obj);
        }

        return obj;
    }

    public UnwrappedPropertyHandler renameAll(NameTransformer nametransformer)
    {
        ArrayList arraylist = new ArrayList(_properties.size());
        SettableBeanProperty settablebeanproperty1;
        for (Iterator iterator = _properties.iterator(); iterator.hasNext(); arraylist.add(settablebeanproperty1))
        {
            SettableBeanProperty settablebeanproperty = (SettableBeanProperty)iterator.next();
            settablebeanproperty1 = settablebeanproperty.withName(nametransformer.transform(settablebeanproperty.getName()));
            JsonDeserializer jsondeserializer = settablebeanproperty1.getValueDeserializer();
            if (jsondeserializer == null)
            {
                continue;
            }
            JsonDeserializer jsondeserializer1 = jsondeserializer.unwrappingDeserializer(nametransformer);
            if (jsondeserializer1 != jsondeserializer)
            {
                settablebeanproperty1 = settablebeanproperty1.withValueDeserializer(jsondeserializer1);
            }
        }

        return new UnwrappedPropertyHandler(arraylist);
    }
}
