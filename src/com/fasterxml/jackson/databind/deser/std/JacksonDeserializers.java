// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.util.TokenBuffer;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class JacksonDeserializers
{

    public JacksonDeserializers()
    {
    }

    public static StdDeserializer[] all()
    {
        StdDeserializer astddeserializer[] = new StdDeserializer[2];
        astddeserializer[0] = JavaTypeDeserializer.instance;
        astddeserializer[1] = TokenBufferDeserializer.instance;
        return astddeserializer;
    }

    public static JsonDeserializer find(Class class1)
    {
        if (class1 == com/fasterxml/jackson/databind/util/TokenBuffer)
        {
            return TokenBufferDeserializer.instance;
        }
        if (com/fasterxml/jackson/databind/JavaType.isAssignableFrom(class1))
        {
            return JavaTypeDeserializer.instance;
        } else
        {
            return null;
        }
    }

    public static ValueInstantiator findValueInstantiator(DeserializationConfig deserializationconfig, BeanDescription beandescription)
    {
        if (beandescription.getBeanClass() == com/fasterxml/jackson/a/j)
        {
            return JsonLocationInstantiator.instance;
        } else
        {
            return null;
        }
    }

    private class JavaTypeDeserializer extends StdScalarDeserializer
    {

        public static final JavaTypeDeserializer instance = new JavaTypeDeserializer();

        public JavaType deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.h)
            {
                String s = l1.getText().trim();
                if (s.length() == 0)
                {
                    return (JavaType)getEmptyValue();
                } else
                {
                    return deserializationcontext.getTypeFactory().constructFromCanonical(s);
                }
            }
            if (r1 == r.g)
            {
                return (JavaType)l1.getEmbeddedObject();
            } else
            {
                throw deserializationcontext.mappingException(_valueClass);
            }
        }

        public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }


        public JavaTypeDeserializer()
        {
            super(com/fasterxml/jackson/databind/JavaType);
        }
    }


    private class TokenBufferDeserializer extends StdScalarDeserializer
    {

        public static final TokenBufferDeserializer instance = new TokenBufferDeserializer();

        public TokenBuffer deserialize(l l1, DeserializationContext deserializationcontext)
        {
            TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
            tokenbuffer.copyCurrentStructure(l1);
            return tokenbuffer;
        }

        public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }


        public TokenBufferDeserializer()
        {
            super(com/fasterxml/jackson/databind/util/TokenBuffer);
        }
    }


    private class JsonLocationInstantiator extends ValueInstantiator
    {

        public static final JsonLocationInstantiator instance = new JsonLocationInstantiator();

        private static final int _int(Object obj)
        {
            if (obj == null)
            {
                return 0;
            } else
            {
                return ((Number)obj).intValue();
            }
        }

        private static final long _long(Object obj)
        {
            if (obj == null)
            {
                return 0L;
            } else
            {
                return ((Number)obj).longValue();
            }
        }

        private static CreatorProperty creatorProp(String s, JavaType javatype, int i)
        {
            return new CreatorProperty(s, javatype, null, null, null, null, i, null, true);
        }

        public boolean canCreateFromObjectWith()
        {
            return true;
        }

        public Object createFromObjectWith(DeserializationContext deserializationcontext, Object aobj[])
        {
            return new j(aobj[0], _long(aobj[1]), _long(aobj[2]), _int(aobj[3]), _int(aobj[4]));
        }

        public CreatorProperty[] getFromObjectArguments(DeserializationConfig deserializationconfig)
        {
            JavaType javatype = deserializationconfig.constructType(Integer.TYPE);
            JavaType javatype1 = deserializationconfig.constructType(Long.TYPE);
            CreatorProperty acreatorproperty[] = new CreatorProperty[5];
            acreatorproperty[0] = creatorProp("sourceRef", deserializationconfig.constructType(java/lang/Object), 0);
            acreatorproperty[1] = creatorProp("byteOffset", javatype1, 1);
            acreatorproperty[2] = creatorProp("charOffset", javatype1, 2);
            acreatorproperty[3] = creatorProp("lineNr", javatype, 3);
            acreatorproperty[4] = creatorProp("columnNr", javatype, 4);
            return acreatorproperty;
        }

        public volatile SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationconfig)
        {
            return getFromObjectArguments(deserializationconfig);
        }

        public String getValueTypeDesc()
        {
            return com/fasterxml/jackson/a/j.getName();
        }


        public JsonLocationInstantiator()
        {
        }
    }

}
