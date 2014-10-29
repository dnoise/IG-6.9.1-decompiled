// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            ObjectIdReader, ReadableObjectId, PropertyValue

public final class PropertyValueBuffer
{

    private PropertyValue _buffered;
    protected final DeserializationContext _context;
    protected final Object _creatorParameters[];
    private Object _idValue;
    protected final ObjectIdReader _objectIdReader;
    private int _paramsNeeded;
    protected final l _parser;

    public PropertyValueBuffer(l l, DeserializationContext deserializationcontext, int i, ObjectIdReader objectidreader)
    {
        _parser = l;
        _context = deserializationcontext;
        _paramsNeeded = i;
        _objectIdReader = objectidreader;
        _creatorParameters = new Object[i];
    }

    public final boolean assignParameter(int i, Object obj)
    {
        _creatorParameters[i] = obj;
        int j = -1 + _paramsNeeded;
        _paramsNeeded = j;
        return j <= 0;
    }

    public final void bufferAnyProperty(SettableAnyProperty settableanyproperty, String s, Object obj)
    {
        _buffered = new PropertyValue.Any(_buffered, obj, settableanyproperty, s);
    }

    public final void bufferMapProperty(Object obj, Object obj1)
    {
        _buffered = new PropertyValue.Map(_buffered, obj1, obj);
    }

    public final void bufferProperty(SettableBeanProperty settablebeanproperty, Object obj)
    {
        _buffered = new PropertyValue.Regular(_buffered, obj, settablebeanproperty);
    }

    protected final PropertyValue buffered()
    {
        return _buffered;
    }

    protected final Object[] getParameters(Object aobj[])
    {
        if (aobj != null)
        {
            int i = 0;
            for (int j = _creatorParameters.length; i < j; i++)
            {
                if (_creatorParameters[i] != null)
                {
                    continue;
                }
                Object obj = aobj[i];
                if (obj != null)
                {
                    _creatorParameters[i] = obj;
                }
            }

        }
        return _creatorParameters;
    }

    public final Object handleIdValue(DeserializationContext deserializationcontext, Object obj)
    {
        if (_objectIdReader != null && _idValue != null)
        {
            deserializationcontext.findObjectId(_idValue, _objectIdReader.generator).bindItem(obj);
            SettableBeanProperty settablebeanproperty = _objectIdReader.idProperty;
            if (settablebeanproperty != null)
            {
                obj = settablebeanproperty.setAndReturn(obj, _idValue);
            }
        }
        return obj;
    }

    public final void inject(SettableBeanProperty asettablebeanproperty[])
    {
        int i = 0;
        for (int j = asettablebeanproperty.length; i < j; i++)
        {
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[i];
            if (settablebeanproperty != null)
            {
                _creatorParameters[i] = _context.findInjectableValue(settablebeanproperty.getInjectableValueId(), settablebeanproperty, null);
            }
        }

    }

    public final boolean isComplete()
    {
        return _paramsNeeded <= 0;
    }

    public final boolean readIdProperty(String s)
    {
        if (_objectIdReader != null && s.equals(_objectIdReader.propertyName))
        {
            _idValue = _objectIdReader.deserializer.deserialize(_parser, _context);
            return true;
        } else
        {
            return false;
        }
    }
}
