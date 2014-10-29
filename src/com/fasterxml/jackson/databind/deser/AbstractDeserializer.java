// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.Serializable;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            BeanDeserializerBuilder, SettableBeanProperty

public class AbstractDeserializer extends JsonDeserializer
    implements Serializable
{

    private static final long serialVersionUID = 0xd639177cf6e7c61eL;
    protected final boolean _acceptBoolean;
    protected final boolean _acceptDouble;
    protected final boolean _acceptInt;
    protected final boolean _acceptString;
    protected final Map _backRefProperties;
    protected final JavaType _baseType;
    protected final ObjectIdReader _objectIdReader;

    public AbstractDeserializer(BeanDeserializerBuilder beandeserializerbuilder, BeanDescription beandescription, Map map)
    {
label0:
        {
            super();
            _baseType = beandescription.getType();
            _objectIdReader = beandeserializerbuilder.getObjectIdReader();
            _backRefProperties = map;
            Class class1 = _baseType.getRawClass();
            _acceptString = class1.isAssignableFrom(java/lang/String);
            boolean flag;
            boolean flag1;
            boolean flag2;
            if (class1 == Boolean.TYPE || class1.isAssignableFrom(java/lang/Boolean))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            _acceptBoolean = flag;
            if (class1 == Integer.TYPE || class1.isAssignableFrom(java/lang/Integer))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            _acceptInt = flag1;
            if (class1 != Double.TYPE)
            {
                boolean flag3 = class1.isAssignableFrom(java/lang/Double);
                flag2 = false;
                if (!flag3)
                {
                    break label0;
                }
            }
            flag2 = true;
        }
        _acceptDouble = flag2;
    }

    protected Object _deserializeFromObjectId(l l1, DeserializationContext deserializationcontext)
    {
        Object obj = _objectIdReader.deserializer.deserialize(l1, deserializationcontext);
        Object obj1 = deserializationcontext.findObjectId(obj, _objectIdReader.generator).item;
        if (obj1 == null)
        {
            throw new IllegalStateException((new StringBuilder("Could not resolve Object Id [")).append(obj).append("] -- unresolved forward-reference?").toString());
        } else
        {
            return obj1;
        }
    }

    protected Object _deserializeIfNatural(l l1, DeserializationContext deserializationcontext)
    {
        _cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 46
    //                   2 58
    //                   3 73
    //                   4 88
    //                   5 99;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return null;
_L2:
        if (_acceptString)
        {
            return l1.getText();
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (_acceptInt)
        {
            return Integer.valueOf(l1.getIntValue());
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (_acceptDouble)
        {
            return Double.valueOf(l1.getDoubleValue());
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (_acceptBoolean)
        {
            return Boolean.TRUE;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (_acceptBoolean)
        {
            return Boolean.FALSE;
        }
        if (true) goto _L1; else goto _L7
_L7:
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        throw deserializationcontext.instantiationException(_baseType.getRawClass(), "abstract types either need to be mapped to concrete types, have custom deserializer, or be instantiated with additional type information");
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        if (_objectIdReader == null) goto _L2; else goto _L1
_L1:
        r r1 = l1.getCurrentToken();
        if (r1 == null || !r1.d()) goto _L2; else goto _L3
_L3:
        Object obj = _deserializeFromObjectId(l1, deserializationcontext);
_L5:
        return obj;
_L2:
        obj = _deserializeIfNatural(l1, deserializationcontext);
        if (obj == null)
        {
            return typedeserializer.deserializeTypedFromObject(l1, deserializationcontext);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public SettableBeanProperty findBackReference(String s)
    {
        if (_backRefProperties == null)
        {
            return null;
        } else
        {
            return (SettableBeanProperty)_backRefProperties.get(s);
        }
    }

    public ObjectIdReader getObjectIdReader()
    {
        return _objectIdReader;
    }

    public boolean isCachable()
    {
        return true;
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.k.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.l.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4)
            {
                return;
            }
        }
    }

}
