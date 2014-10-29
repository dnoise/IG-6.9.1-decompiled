// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.lang.reflect.Array;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            ContainerDeserializerBase

public class ObjectArrayDeserializer extends ContainerDeserializerBase
    implements ContextualDeserializer
{

    private static final long serialVersionUID = 1L;
    protected final ArrayType _arrayType;
    protected final Class _elementClass;
    protected JsonDeserializer _elementDeserializer;
    protected final TypeDeserializer _elementTypeDeserializer;
    protected final boolean _untyped;

    public ObjectArrayDeserializer(ArrayType arraytype, JsonDeserializer jsondeserializer, TypeDeserializer typedeserializer)
    {
        super([Ljava/lang/Object;);
        _arrayType = arraytype;
        _elementClass = arraytype.getContentType().getRawClass();
        boolean flag;
        if (_elementClass == java/lang/Object)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        _untyped = flag;
        _elementDeserializer = jsondeserializer;
        _elementTypeDeserializer = typedeserializer;
    }

    private final Object[] handleNonArray(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
        {
            return null;
        }
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            if (l1.getCurrentToken() == r.h && _elementClass == java/lang/Byte)
            {
                return deserializeFromBase64(l1, deserializationcontext);
            } else
            {
                throw deserializationcontext.mappingException(_arrayType.getRawClass());
            }
        }
        Object obj;
        Object aobj[];
        if (l1.getCurrentToken() == r.m)
        {
            obj = null;
        } else
        if (_elementTypeDeserializer == null)
        {
            obj = _elementDeserializer.deserialize(l1, deserializationcontext);
        } else
        {
            obj = _elementDeserializer.deserializeWithType(l1, deserializationcontext, _elementTypeDeserializer);
        }
        if (_untyped)
        {
            aobj = new Object[1];
        } else
        {
            aobj = (Object[])(Object[])Array.newInstance(_elementClass, 1);
        }
        aobj[0] = obj;
        return aobj;
    }

    public JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer = findConvertingContentDeserializer(deserializationcontext, beanproperty, _elementDeserializer);
        if (jsondeserializer != null) goto _L2; else goto _L1
_L1:
        jsondeserializer = deserializationcontext.findContextualValueDeserializer(_arrayType.getContentType(), beanproperty);
_L4:
        TypeDeserializer typedeserializer = _elementTypeDeserializer;
        if (typedeserializer != null)
        {
            typedeserializer = typedeserializer.forProperty(beanproperty);
        }
        return withDeserializer(typedeserializer, jsondeserializer);
_L2:
        if (jsondeserializer instanceof ContextualDeserializer)
        {
            jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return ((Object) (deserialize(l1, deserializationcontext)));
    }

    public Object[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        ObjectBuffer objectbuffer;
        TypeDeserializer typedeserializer;
        Object aobj1[];
        int i;
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        objectbuffer = deserializationcontext.leaseObjectBuffer();
        Object aobj[] = objectbuffer.resetAndStart();
        typedeserializer = _elementTypeDeserializer;
        aobj1 = aobj;
        i = 0;
_L3:
        r r1 = l1.nextToken();
        if (r1 == r.e) goto _L2; else goto _L1
_L1:
        Object obj;
        int j;
        if (r1 == r.m)
        {
            obj = null;
        } else
        if (typedeserializer == null)
        {
            obj = _elementDeserializer.deserialize(l1, deserializationcontext);
        } else
        {
            obj = _elementDeserializer.deserializeWithType(l1, deserializationcontext, typedeserializer);
        }
        Object aobj2[];
        if (i >= aobj1.length)
        {
            aobj1 = objectbuffer.appendCompletedChunk(aobj1);
            j = 0;
        } else
        {
            j = i;
        }
        i = j + 1;
        aobj1[j] = obj;
        if (true) goto _L3; else goto _L2
_L2:
        if (_untyped)
        {
            aobj2 = objectbuffer.completeAndClearBuffer(aobj1, i);
        } else
        {
            aobj2 = objectbuffer.completeAndClearBuffer(aobj1, i, _elementClass);
        }
        deserializationcontext.returnObjectBuffer(objectbuffer);
        return aobj2;
    }

    protected Byte[] deserializeFromBase64(l l1, DeserializationContext deserializationcontext)
    {
        byte abyte0[] = l1.getBinaryValue(deserializationcontext.getBase64Variant());
        Byte abyte[] = new Byte[abyte0.length];
        int i = 0;
        for (int j = abyte0.length; i < j; i++)
        {
            abyte[i] = Byte.valueOf(abyte0[i]);
        }

        return abyte;
    }

    public volatile Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return ((Object) (deserializeWithType(l1, deserializationcontext, typedeserializer)));
    }

    public Object[] deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return (Object[])(Object[])typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

    public JsonDeserializer getContentDeserializer()
    {
        return _elementDeserializer;
    }

    public JavaType getContentType()
    {
        return _arrayType.getContentType();
    }

    public ObjectArrayDeserializer withDeserializer(TypeDeserializer typedeserializer, JsonDeserializer jsondeserializer)
    {
        if (jsondeserializer == _elementDeserializer && typedeserializer == _elementTypeDeserializer)
        {
            return this;
        } else
        {
            return new ObjectArrayDeserializer(_arrayType, jsondeserializer, typedeserializer);
        }
    }
}
