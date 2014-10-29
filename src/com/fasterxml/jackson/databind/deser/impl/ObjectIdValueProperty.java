// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.lang.annotation.Annotation;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            ObjectIdReader, ReadableObjectId

public final class ObjectIdValueProperty extends SettableBeanProperty
{

    private static final long serialVersionUID = 1L;
    protected final ObjectIdReader _objectIdReader;

    public ObjectIdValueProperty(ObjectIdReader objectidreader)
    {
        this(objectidreader, true);
    }

    public ObjectIdValueProperty(ObjectIdReader objectidreader, boolean flag)
    {
        super(objectidreader.propertyName, objectidreader.idType, null, null, null, flag);
        _objectIdReader = objectidreader;
        _valueDeserializer = objectidreader.deserializer;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectidvalueproperty, JsonDeserializer jsondeserializer)
    {
        super(objectidvalueproperty, jsondeserializer);
        _objectIdReader = objectidvalueproperty._objectIdReader;
    }

    protected ObjectIdValueProperty(ObjectIdValueProperty objectidvalueproperty, String s)
    {
        super(objectidvalueproperty, s);
        _objectIdReader = objectidvalueproperty._objectIdReader;
    }

    public final void deserializeAndSet(l l, DeserializationContext deserializationcontext, Object obj)
    {
        deserializeSetAndReturn(l, deserializationcontext, obj);
    }

    public final Object deserializeSetAndReturn(l l, DeserializationContext deserializationcontext, Object obj)
    {
        Object obj1 = _valueDeserializer.deserialize(l, deserializationcontext);
        deserializationcontext.findObjectId(obj1, _objectIdReader.generator).bindItem(obj);
        SettableBeanProperty settablebeanproperty = _objectIdReader.idProperty;
        if (settablebeanproperty != null)
        {
            obj = settablebeanproperty.setAndReturn(obj, obj1);
        }
        return obj;
    }

    public final Annotation getAnnotation(Class class1)
    {
        return null;
    }

    public final AnnotatedMember getMember()
    {
        return null;
    }

    public final void set(Object obj, Object obj1)
    {
        setAndReturn(obj, obj1);
    }

    public final Object setAndReturn(Object obj, Object obj1)
    {
        SettableBeanProperty settablebeanproperty = _objectIdReader.idProperty;
        if (settablebeanproperty == null)
        {
            throw new UnsupportedOperationException("Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
        } else
        {
            return settablebeanproperty.setAndReturn(obj, obj1);
        }
    }

    public final volatile SettableBeanProperty withName(String s)
    {
        return withName(s);
    }

    public final ObjectIdValueProperty withName(String s)
    {
        return new ObjectIdValueProperty(this, s);
    }

    public final volatile SettableBeanProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return withValueDeserializer(jsondeserializer);
    }

    public final ObjectIdValueProperty withValueDeserializer(JsonDeserializer jsondeserializer)
    {
        return new ObjectIdValueProperty(this, jsondeserializer);
    }
}
