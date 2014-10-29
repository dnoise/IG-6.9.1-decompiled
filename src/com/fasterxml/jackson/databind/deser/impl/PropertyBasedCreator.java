// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            PropertyValueBuffer, PropertyValue, ObjectIdReader

public final class PropertyBasedCreator
{

    protected final Object _defaultValues[];
    protected final HashMap _properties = new HashMap();
    protected final SettableBeanProperty _propertiesWithInjectables[];
    protected final int _propertyCount;
    protected final ValueInstantiator _valueInstantiator;

    protected PropertyBasedCreator(ValueInstantiator valueinstantiator, SettableBeanProperty asettablebeanproperty[], Object aobj[])
    {
        _valueInstantiator = valueinstantiator;
        int i = asettablebeanproperty.length;
        _propertyCount = i;
        SettableBeanProperty asettablebeanproperty1[] = null;
        for (int j = 0; j < i; j++)
        {
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[j];
            _properties.put(settablebeanproperty.getName(), settablebeanproperty);
            if (settablebeanproperty.getInjectableValueId() == null)
            {
                continue;
            }
            if (asettablebeanproperty1 == null)
            {
                asettablebeanproperty1 = new SettableBeanProperty[i];
            }
            asettablebeanproperty1[j] = settablebeanproperty;
        }

        _defaultValues = aobj;
        _propertiesWithInjectables = asettablebeanproperty1;
    }

    public static PropertyBasedCreator construct(DeserializationContext deserializationcontext, ValueInstantiator valueinstantiator, SettableBeanProperty asettablebeanproperty[])
    {
        int i = asettablebeanproperty.length;
        SettableBeanProperty asettablebeanproperty1[] = new SettableBeanProperty[i];
        int j = 0;
        Object aobj[] = null;
        while (j < i) 
        {
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[j];
            if (!settablebeanproperty.hasValueDeserializer())
            {
                settablebeanproperty = settablebeanproperty.withValueDeserializer(deserializationcontext.findContextualValueDeserializer(settablebeanproperty.getType(), settablebeanproperty));
            }
            asettablebeanproperty1[j] = settablebeanproperty;
            JsonDeserializer jsondeserializer = settablebeanproperty.getValueDeserializer();
            Object obj;
            Object obj1;
            if (jsondeserializer == null)
            {
                obj = null;
            } else
            {
                obj = jsondeserializer.getNullValue();
            }
            if (obj == null && settablebeanproperty.getType().isPrimitive())
            {
                obj1 = ClassUtil.defaultValue(settablebeanproperty.getType().getRawClass());
            } else
            {
                obj1 = obj;
            }
            if (obj1 == null)
            {
                continue;
            }
            if (aobj == null)
            {
                aobj = new Object[i];
            }
            aobj[j] = obj1;
            j++;
        }
        return new PropertyBasedCreator(valueinstantiator, asettablebeanproperty1, aobj);
    }

    public final void assignDeserializer(SettableBeanProperty settablebeanproperty, JsonDeserializer jsondeserializer)
    {
        SettableBeanProperty settablebeanproperty1 = settablebeanproperty.withValueDeserializer(jsondeserializer);
        _properties.put(settablebeanproperty1.getName(), settablebeanproperty1);
    }

    public final Object build(DeserializationContext deserializationcontext, PropertyValueBuffer propertyvaluebuffer)
    {
        Object obj = propertyvaluebuffer.handleIdValue(deserializationcontext, _valueInstantiator.createFromObjectWith(deserializationcontext, propertyvaluebuffer.getParameters(_defaultValues)));
        for (PropertyValue propertyvalue = propertyvaluebuffer.buffered(); propertyvalue != null; propertyvalue = propertyvalue.next)
        {
            propertyvalue.assign(obj);
        }

        return obj;
    }

    public final SettableBeanProperty findCreatorProperty(String s)
    {
        return (SettableBeanProperty)_properties.get(s);
    }

    public final Collection properties()
    {
        return _properties.values();
    }

    public final PropertyValueBuffer startBuilding(l l, DeserializationContext deserializationcontext, ObjectIdReader objectidreader)
    {
        PropertyValueBuffer propertyvaluebuffer = new PropertyValueBuffer(l, deserializationcontext, _propertyCount, objectidreader);
        if (_propertiesWithInjectables != null)
        {
            propertyvaluebuffer.inject(_propertiesWithInjectables);
        }
        return propertyvaluebuffer;
    }
}
