// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.util.ArrayList;
import java.util.LinkedHashMap;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class UntypedObjectDeserializer extends StdDeserializer
{

    private static final Object NO_OBJECTS[] = new Object[0];
    public static final UntypedObjectDeserializer instance = new UntypedObjectDeserializer();
    private static final long serialVersionUID = 1L;

    public UntypedObjectDeserializer()
    {
        super(java/lang/Object);
    }

    public Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
        {
        default:
            throw deserializationcontext.mappingException(java/lang/Object);

        case 1: // '\001'
            return mapObject(l1, deserializationcontext);

        case 2: // '\002'
            return mapArray(l1, deserializationcontext);

        case 3: // '\003'
            return mapObject(l1, deserializationcontext);

        case 4: // '\004'
            return l1.getEmbeddedObject();

        case 5: // '\005'
            return l1.getText();

        case 6: // '\006'
            if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
            {
                return l1.getBigIntegerValue();
            } else
            {
                return l1.getNumberValue();
            }

        case 7: // '\007'
            if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
            {
                return l1.getDecimalValue();
            } else
            {
                return Double.valueOf(l1.getDoubleValue());
            }

        case 8: // '\b'
            return Boolean.TRUE;

        case 9: // '\t'
            return Boolean.FALSE;

        case 10: // '\n'
            return null;
        }
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        r r1 = l1.getCurrentToken();
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
        {
        default:
            throw deserializationcontext.mappingException(java/lang/Object);

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return typedeserializer.deserializeTypedFromAny(l1, deserializationcontext);

        case 5: // '\005'
            return l1.getText();

        case 6: // '\006'
            if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
            {
                return l1.getBigIntegerValue();
            } else
            {
                return l1.getNumberValue();
            }

        case 7: // '\007'
            if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
            {
                return l1.getDecimalValue();
            } else
            {
                return Double.valueOf(l1.getDoubleValue());
            }

        case 8: // '\b'
            return Boolean.TRUE;

        case 9: // '\t'
            return Boolean.FALSE;

        case 4: // '\004'
            return l1.getEmbeddedObject();

        case 10: // '\n'
            return null;
        }
    }

    protected Object mapArray(l l1, DeserializationContext deserializationcontext)
    {
        if (deserializationcontext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY))
        {
            return ((Object) (mapArrayToArray(l1, deserializationcontext)));
        }
        if (l1.nextToken() == r.e)
        {
            return new ArrayList(4);
        }
        ObjectBuffer objectbuffer = deserializationcontext.leaseObjectBuffer();
        Object aobj[] = objectbuffer.resetAndStart();
        int i = 0;
        Object aobj1[] = aobj;
        int j = 0;
        do
        {
            Object obj = deserialize(l1, deserializationcontext);
            j++;
            int k;
            ArrayList arraylist;
            if (i >= aobj1.length)
            {
                aobj1 = objectbuffer.appendCompletedChunk(aobj1);
                k = 0;
            } else
            {
                k = i;
            }
            i = k + 1;
            aobj1[k] = obj;
        } while (l1.nextToken() != r.e);
        arraylist = new ArrayList(1 + (j + (j >> 3)));
        objectbuffer.completeAndClearBuffer(aobj1, i, arraylist);
        return arraylist;
    }

    protected Object[] mapArrayToArray(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.nextToken() == r.e)
        {
            return NO_OBJECTS;
        }
        ObjectBuffer objectbuffer = deserializationcontext.leaseObjectBuffer();
        Object aobj[] = objectbuffer.resetAndStart();
        int i = 0;
        do
        {
            Object obj = deserialize(l1, deserializationcontext);
            int j;
            if (i >= aobj.length)
            {
                aobj = objectbuffer.appendCompletedChunk(aobj);
                j = 0;
            } else
            {
                j = i;
            }
            i = j + 1;
            aobj[j] = obj;
        } while (l1.nextToken() != r.e);
        return objectbuffer.completeAndClearBuffer(aobj, i);
    }

    protected Object mapObject(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
        if (r1 != r.f)
        {
            return new LinkedHashMap(4);
        }
        String s = l1.getText();
        l1.nextToken();
        Object obj = deserialize(l1, deserializationcontext);
        if (l1.nextToken() != r.f)
        {
            LinkedHashMap linkedhashmap = new LinkedHashMap(4);
            linkedhashmap.put(s, obj);
            return linkedhashmap;
        }
        String s1 = l1.getText();
        l1.nextToken();
        Object obj1 = deserialize(l1, deserializationcontext);
        if (l1.nextToken() != r.f)
        {
            LinkedHashMap linkedhashmap1 = new LinkedHashMap(4);
            linkedhashmap1.put(s, obj);
            linkedhashmap1.put(s1, obj1);
            return linkedhashmap1;
        }
        LinkedHashMap linkedhashmap2 = new LinkedHashMap();
        linkedhashmap2.put(s, obj);
        linkedhashmap2.put(s1, obj1);
        do
        {
            String s2 = l1.getText();
            l1.nextToken();
            linkedhashmap2.put(s2, deserialize(l1, deserializationcontext));
        } while (l1.nextToken() != r.c);
        return linkedhashmap2;
    }


    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.b.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.d.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.f.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.g.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.k.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.l.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror8) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.m.ordinal()] = 10;
            }
            catch (NoSuchFieldError nosuchfielderror9) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.e.ordinal()] = 11;
            }
            catch (NoSuchFieldError nosuchfielderror10) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.c.ordinal()] = 12;
            }
            catch (NoSuchFieldError nosuchfielderror11)
            {
                return;
            }
        }
    }

}
