// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public final class  extends StdScalarSerializer
{

    public static final serialize instance = new <init>();

    public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        JsonNumberFormatVisitor jsonnumberformatvisitor = jsonformatvisitorwrapper.expectNumberFormat(javatype);
        if (jsonnumberformatvisitor != null)
        {
            jsonnumberformatvisitor.numberType$351723a9(o.f);
        }
    }

    public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        return createSchemaNode("number", true);
    }

    public final void serialize(Number number, h h1, SerializerProvider serializerprovider)
    {
        if (number instanceof BigDecimal)
        {
            if (serializerprovider.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN) && !(h1 instanceof TokenBuffer))
            {
                h1.writeNumber(((BigDecimal)number).toPlainString());
                return;
            } else
            {
                h1.writeNumber((BigDecimal)number);
                return;
            }
        }
        if (number instanceof BigInteger)
        {
            h1.writeNumber((BigInteger)number);
            return;
        }
        if (number instanceof Integer)
        {
            h1.writeNumber(number.intValue());
            return;
        }
        if (number instanceof Long)
        {
            h1.writeNumber(number.longValue());
            return;
        }
        if (number instanceof Double)
        {
            h1.writeNumber(number.doubleValue());
            return;
        }
        if (number instanceof Float)
        {
            h1.writeNumber(number.floatValue());
            return;
        }
        if ((number instanceof Byte) || (number instanceof Short))
        {
            h1.writeNumber(number.intValue());
            return;
        } else
        {
            h1.writeNumber(number.toString());
            return;
        }
    }

    public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((Number)obj, h1, serializerprovider);
    }


    public ()
    {
        super(java/lang/Number);
    }
}
