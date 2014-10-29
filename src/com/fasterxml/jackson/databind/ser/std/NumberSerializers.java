// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import java.util.Map;

public class NumberSerializers
{

    protected NumberSerializers()
    {
    }

    public static void addAll(Map map)
    {
        IntegerSerializer integerserializer = new IntegerSerializer();
        map.put(java/lang/Integer.getName(), integerserializer);
        map.put(Integer.TYPE.getName(), integerserializer);
        map.put(java/lang/Long.getName(), LongSerializer.instance);
        map.put(Long.TYPE.getName(), LongSerializer.instance);
        map.put(java/lang/Byte.getName(), IntLikeSerializer.instance);
        map.put(Byte.TYPE.getName(), IntLikeSerializer.instance);
        map.put(java/lang/Short.getName(), ShortSerializer.instance);
        map.put(Short.TYPE.getName(), ShortSerializer.instance);
        map.put(java/lang/Float.getName(), FloatSerializer.instance);
        map.put(Float.TYPE.getName(), FloatSerializer.instance);
        map.put(java/lang/Double.getName(), DoubleSerializer.instance);
        map.put(Double.TYPE.getName(), DoubleSerializer.instance);
    }

    private class IntegerSerializer extends NonTypedScalarSerializerBase
    {

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
            if (jsonintegerformatvisitor != null)
            {
                jsonintegerformatvisitor.numberType$351723a9(o.a);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("integer", true);
        }

        public final void serialize(Integer integer, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(integer.intValue());
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Integer)obj, h1, serializerprovider);
        }

        public IntegerSerializer()
        {
            super(java/lang/Integer);
        }
    }


    private class LongSerializer extends StdScalarSerializer
    {

        static final LongSerializer instance = new LongSerializer();

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
            if (jsonintegerformatvisitor != null)
            {
                jsonintegerformatvisitor.numberType$351723a9(o.b);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("number", true);
        }

        public final void serialize(Long long1, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(long1.longValue());
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Long)obj, h1, serializerprovider);
        }


        public LongSerializer()
        {
            super(java/lang/Long);
        }
    }


    private class IntLikeSerializer extends StdScalarSerializer
    {

        static final IntLikeSerializer instance = new IntLikeSerializer();

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
            if (jsonintegerformatvisitor != null)
            {
                jsonintegerformatvisitor.numberType$351723a9(o.a);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("integer", true);
        }

        public final void serialize(Number number, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(number.intValue());
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Number)obj, h1, serializerprovider);
        }


        public IntLikeSerializer()
        {
            super(java/lang/Number);
        }
    }


    private class ShortSerializer extends StdScalarSerializer
    {

        static final ShortSerializer instance = new ShortSerializer();

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonIntegerFormatVisitor jsonintegerformatvisitor = jsonformatvisitorwrapper.expectIntegerFormat(javatype);
            if (jsonintegerformatvisitor != null)
            {
                jsonintegerformatvisitor.numberType$351723a9(o.a);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("number", true);
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Short)obj, h1, serializerprovider);
        }

        public final void serialize(Short short1, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(short1.shortValue());
        }


        public ShortSerializer()
        {
            super(java/lang/Short);
        }
    }


    private class FloatSerializer extends StdScalarSerializer
    {

        static final FloatSerializer instance = new FloatSerializer();

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonNumberFormatVisitor jsonnumberformatvisitor = jsonformatvisitorwrapper.expectNumberFormat(javatype);
            if (jsonnumberformatvisitor != null)
            {
                jsonnumberformatvisitor.numberType$351723a9(o.d);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("number", true);
        }

        public final void serialize(Float float1, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(float1.floatValue());
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Float)obj, h1, serializerprovider);
        }


        public FloatSerializer()
        {
            super(java/lang/Float);
        }
    }


    private class DoubleSerializer extends NonTypedScalarSerializerBase
    {

        static final DoubleSerializer instance = new DoubleSerializer();

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            JsonNumberFormatVisitor jsonnumberformatvisitor = jsonformatvisitorwrapper.expectNumberFormat(javatype);
            if (jsonnumberformatvisitor != null)
            {
                jsonnumberformatvisitor.numberType$351723a9(o.e);
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            return createSchemaNode("number", true);
        }

        public final void serialize(Double double1, h h1, SerializerProvider serializerprovider)
        {
            h1.writeNumber(double1.doubleValue());
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((Double)obj, h1, serializerprovider);
        }


        public DoubleSerializer()
        {
            super(java/lang/Double);
        }
    }

}
