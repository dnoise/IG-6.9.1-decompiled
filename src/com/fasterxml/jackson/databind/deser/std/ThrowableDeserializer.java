// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.HashSet;

public class ThrowableDeserializer extends BeanDeserializer
{

    protected static final String PROP_NAME_MESSAGE = "message";
    private static final long serialVersionUID = 1L;

    public ThrowableDeserializer(BeanDeserializer beandeserializer)
    {
        super(beandeserializer);
        _vanillaProcessing = false;
    }

    protected ThrowableDeserializer(BeanDeserializer beandeserializer, NameTransformer nametransformer)
    {
        super(beandeserializer, nametransformer);
    }

    public Object deserializeFromObject(l l1, DeserializationContext deserializationcontext)
    {
        if (_propertyBasedCreator == null) goto _L2; else goto _L1
_L1:
        Object obj = _deserializeUsingPropertyBased(l1, deserializationcontext);
_L7:
        return obj;
_L2:
        boolean flag;
        int i;
        Object aobj[];
        if (_delegateDeserializer != null)
        {
            return _valueInstantiator.createUsingDelegate(deserializationcontext, _delegateDeserializer.deserialize(l1, deserializationcontext));
        }
        if (_beanType.isAbstract())
        {
            throw JsonMappingException.from(l1, (new StringBuilder("Can not instantiate abstract type ")).append(_beanType).append(" (need to add/enable type information?)").toString());
        }
        flag = _valueInstantiator.canCreateFromString();
        boolean flag1 = _valueInstantiator.canCreateUsingDefault();
        if (!flag && !flag1)
        {
            throw new JsonMappingException((new StringBuilder("Can not deserialize Throwable of type ")).append(_beanType).append(" without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator").toString());
        }
        i = 0;
        aobj = null;
        obj = null;
_L4:
        String s;
        int k;
        Object aobj1[];
        Object obj1;
        if (l1.getCurrentToken() == r.c)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = l1.getCurrentName();
        SettableBeanProperty settablebeanproperty = _beanProperties.find(s);
        l1.nextToken();
        if (settablebeanproperty == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (obj != null)
        {
            settablebeanproperty.deserializeAndSet(l1, deserializationcontext, obj);
            k = i;
            aobj1 = aobj;
            obj1 = obj;
        } else
        {
            if (aobj == null)
            {
                int k1 = _beanProperties.size();
                aobj = new Object[k1 + k1];
            }
            int j1 = i + 1;
            aobj[i] = settablebeanproperty;
            k = j1 + 1;
            aobj[j1] = settablebeanproperty.deserialize(l1, deserializationcontext);
            aobj1 = aobj;
            obj1 = obj;
        }
_L5:
        l1.nextToken();
        obj = obj1;
        aobj = aobj1;
        i = k;
        if (true) goto _L4; else goto _L3
_L3:
        if ("message".equals(s) && flag)
        {
            obj = _valueInstantiator.createFromString(deserializationcontext, l1.getText());
            if (aobj == null)
            {
                break MISSING_BLOCK_LABEL_465;
            }
            for (int i1 = 0; i1 < i; i1 += 2)
            {
                ((SettableBeanProperty)aobj[i1]).set(obj, aobj[i1 + 1]);
            }

            k = i;
            obj1 = obj;
            aobj1 = null;
        } else
        if (_ignorableProps != null && _ignorableProps.contains(s))
        {
            l1.skipChildren();
            k = i;
            aobj1 = aobj;
            obj1 = obj;
        } else
        {
label0:
            {
                if (_anySetter == null)
                {
                    break label0;
                }
                _anySetter.deserializeAndSet(l1, deserializationcontext, obj, s);
                k = i;
                aobj1 = aobj;
                obj1 = obj;
            }
        }
          goto _L5
        handleUnknownProperty(l1, deserializationcontext, obj, s);
        k = i;
        aobj1 = aobj;
        obj1 = obj;
          goto _L5
        if (obj != null) goto _L7; else goto _L6
_L6:
        int j;
        if (flag)
        {
            obj = _valueInstantiator.createFromString(deserializationcontext, null);
        } else
        {
            obj = _valueInstantiator.createUsingDefault(deserializationcontext);
        }
        j = 0;
        if (aobj != null)
        {
            while (j < i) 
            {
                ((SettableBeanProperty)aobj[j]).set(obj, aobj[j + 1]);
                j += 2;
            }
        }
        if (true) goto _L7; else goto _L8
_L8:
    }

    public JsonDeserializer unwrappingDeserializer(NameTransformer nametransformer)
    {
        if (getClass() != com/fasterxml/jackson/databind/deser/std/ThrowableDeserializer)
        {
            return this;
        } else
        {
            return new ThrowableDeserializer(this, nametransformer);
        }
    }
}
