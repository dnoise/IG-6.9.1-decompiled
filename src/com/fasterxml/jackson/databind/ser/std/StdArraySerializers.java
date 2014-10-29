// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.databind.JsonSerializer;
import java.util.HashMap;

public class StdArraySerializers
{

    protected static final HashMap _arraySerializers;

    protected StdArraySerializers()
    {
    }

    public static JsonSerializer findStandardImpl(Class class1)
    {
        return (JsonSerializer)_arraySerializers.get(class1.getName());
    }

    static 
    {
        HashMap hashmap = new HashMap();
        _arraySerializers = hashmap;
        hashmap.put([Z.getName(), new BooleanArraySerializer());
        _arraySerializers.put([B.getName(), new ByteArraySerializer());
        _arraySerializers.put([C.getName(), new CharArraySerializer());
        _arraySerializers.put([S.getName(), new ShortArraySerializer());
        _arraySerializers.put([I.getName(), new IntArraySerializer());
        _arraySerializers.put([J.getName(), new LongArraySerializer());
        _arraySerializers.put([F.getName(), new FloatArraySerializer());
        _arraySerializers.put([D.getName(), new DoubleArraySerializer());
    }

    private class BooleanArraySerializer extends ArraySerializerBase
    {

        private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(java/lang/Boolean);

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return this;
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.BOOLEAN);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("boolean"));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((boolean[])obj);
        }

        public final boolean hasSingleElement(boolean aflag[])
        {
            return aflag.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((boolean[])obj);
        }

        public final boolean isEmpty(boolean aflag[])
        {
            return aflag == null || aflag.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((boolean[])obj, h1, serializerprovider);
        }

        public final void serializeContents(boolean aflag[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            for (int j = aflag.length; i < j; i++)
            {
                h1.writeBoolean(aflag[i]);
            }

        }


        public BooleanArraySerializer()
        {
            super([Z, null);
        }
    }


    private class ByteArraySerializer extends StdSerializer
    {

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
                }
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("string"));
            return objectnode;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((byte[])obj);
        }

        public final boolean isEmpty(byte abyte0[])
        {
            return abyte0 == null || abyte0.length == 0;
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((byte[])obj, h1, serializerprovider);
        }

        public final void serialize(byte abyte0[], h h1, SerializerProvider serializerprovider)
        {
            h1.writeBinary(serializerprovider.getConfig().getBase64Variant(), abyte0, 0, abyte0.length);
        }

        public final volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
        {
            serializeWithType((byte[])obj, h1, serializerprovider, typeserializer);
        }

        public final void serializeWithType(byte abyte0[], h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
        {
            typeserializer.writeTypePrefixForScalar(abyte0, h1);
            h1.writeBinary(serializerprovider.getConfig().getBase64Variant(), abyte0, 0, abyte0.length);
            typeserializer.writeTypeSuffixForScalar(abyte0, h1);
        }

        public ByteArraySerializer()
        {
            super([B);
        }
    }


    private class CharArraySerializer extends StdSerializer
    {

        private final void _writeArrayContents(h h1, char ac[])
        {
            int i = 0;
            for (int j = ac.length; i < j; i++)
            {
                h1.writeString(ac, i, 1);
            }

        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.STRING);
                }
            }
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            ObjectNode objectnode1 = createSchemaNode("string");
            objectnode1.put("type", "string");
            objectnode.put("items", objectnode1);
            return objectnode;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((char[])obj);
        }

        public final boolean isEmpty(char ac[])
        {
            return ac == null || ac.length == 0;
        }

        public final volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serialize((char[])obj, h1, serializerprovider);
        }

        public final void serialize(char ac[], h h1, SerializerProvider serializerprovider)
        {
            if (serializerprovider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
            {
                h1.writeStartArray();
                _writeArrayContents(h1, ac);
                h1.writeEndArray();
                return;
            } else
            {
                h1.writeString(ac, 0, ac.length);
                return;
            }
        }

        public final volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
        {
            serializeWithType((char[])obj, h1, serializerprovider, typeserializer);
        }

        public final void serializeWithType(char ac[], h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
        {
            if (serializerprovider.isEnabled(SerializationFeature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
            {
                typeserializer.writeTypePrefixForArray(ac, h1);
                _writeArrayContents(h1, ac);
                typeserializer.writeTypeSuffixForArray(ac, h1);
                return;
            } else
            {
                typeserializer.writeTypePrefixForScalar(ac, h1);
                h1.writeString(ac, 0, ac.length);
                typeserializer.writeTypeSuffixForScalar(ac, h1);
                return;
            }
        }

        public CharArraySerializer()
        {
            super([C);
        }
    }


    private class ShortArraySerializer extends TypedPrimitiveArraySerializer
    {
        private class TypedPrimitiveArraySerializer extends ArraySerializerBase
        {

            protected final TypeSerializer _valueTypeSerializer;

            protected TypedPrimitiveArraySerializer(TypedPrimitiveArraySerializer typedprimitivearrayserializer, BeanProperty beanproperty, TypeSerializer typeserializer)
            {
                super(typedprimitivearrayserializer, beanproperty);
                _valueTypeSerializer = typeserializer;
            }

            protected TypedPrimitiveArraySerializer(Class class1)
            {
                super(class1);
                _valueTypeSerializer = null;
            }
        }


        private static final JavaType VALUE_TYPE;

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return new ShortArraySerializer(this, _property, typeserializer);
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.INTEGER);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("integer"));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((short[])obj);
        }

        public final boolean hasSingleElement(short aword0[])
        {
            return aword0.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((short[])obj);
        }

        public final boolean isEmpty(short aword0[])
        {
            return aword0 == null || aword0.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((short[])obj, h1, serializerprovider);
        }

        public final void serializeContents(short aword0[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            if (_valueTypeSerializer != null)
            {
                for (int k = aword0.length; i < k; i++)
                {
                    _valueTypeSerializer.writeTypePrefixForScalar(null, h1, Short.TYPE);
                    h1.writeNumber(aword0[i]);
                    _valueTypeSerializer.writeTypeSuffixForScalar(null, h1);
                }

            } else
            {
                for (int j = aword0.length; i < j; i++)
                {
                    h1.writeNumber(aword0[i]);
                }

            }
        }

        static 
        {
            VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Short.TYPE);
        }

        public ShortArraySerializer()
        {
            super([S);
        }

        public ShortArraySerializer(ShortArraySerializer shortarrayserializer, BeanProperty beanproperty, TypeSerializer typeserializer)
        {
            super(shortarrayserializer, beanproperty, typeserializer);
        }
    }


    private class IntArraySerializer extends ArraySerializerBase
    {

        private static final JavaType VALUE_TYPE;

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return this;
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.INTEGER);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("integer"));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((int[])obj);
        }

        public final boolean hasSingleElement(int ai[])
        {
            return ai.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((int[])obj);
        }

        public final boolean isEmpty(int ai[])
        {
            return ai == null || ai.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((int[])obj, h1, serializerprovider);
        }

        public final void serializeContents(int ai[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            for (int j = ai.length; i < j; i++)
            {
                h1.writeNumber(ai[i]);
            }

        }

        static 
        {
            VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Integer.TYPE);
        }

        public IntArraySerializer()
        {
            super([I, null);
        }
    }


    private class LongArraySerializer extends TypedPrimitiveArraySerializer
    {

        private static final JavaType VALUE_TYPE;

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return new LongArraySerializer(this, _property, typeserializer);
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.NUMBER);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("number", true));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((long[])obj);
        }

        public final boolean hasSingleElement(long al[])
        {
            return al.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((long[])obj);
        }

        public final boolean isEmpty(long al[])
        {
            return al == null || al.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((long[])obj, h1, serializerprovider);
        }

        public final void serializeContents(long al[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            if (_valueTypeSerializer != null)
            {
                for (int k = al.length; i < k; i++)
                {
                    _valueTypeSerializer.writeTypePrefixForScalar(null, h1, Long.TYPE);
                    h1.writeNumber(al[i]);
                    _valueTypeSerializer.writeTypeSuffixForScalar(null, h1);
                }

            } else
            {
                for (int j = al.length; i < j; i++)
                {
                    h1.writeNumber(al[i]);
                }

            }
        }

        static 
        {
            VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Long.TYPE);
        }

        public LongArraySerializer()
        {
            super([J);
        }

        public LongArraySerializer(LongArraySerializer longarrayserializer, BeanProperty beanproperty, TypeSerializer typeserializer)
        {
            super(longarrayserializer, beanproperty, typeserializer);
        }
    }


    private class FloatArraySerializer extends TypedPrimitiveArraySerializer
    {

        private static final JavaType VALUE_TYPE;

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return new FloatArraySerializer(this, _property, typeserializer);
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.NUMBER);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("number"));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((float[])obj);
        }

        public final boolean hasSingleElement(float af[])
        {
            return af.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((float[])obj);
        }

        public final boolean isEmpty(float af[])
        {
            return af == null || af.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((float[])obj, h1, serializerprovider);
        }

        public final void serializeContents(float af[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            if (_valueTypeSerializer != null)
            {
                for (int k = af.length; i < k; i++)
                {
                    _valueTypeSerializer.writeTypePrefixForScalar(null, h1, Float.TYPE);
                    h1.writeNumber(af[i]);
                    _valueTypeSerializer.writeTypeSuffixForScalar(null, h1);
                }

            } else
            {
                for (int j = af.length; i < j; i++)
                {
                    h1.writeNumber(af[i]);
                }

            }
        }

        static 
        {
            VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Float.TYPE);
        }

        public FloatArraySerializer()
        {
            super([F);
        }

        public FloatArraySerializer(FloatArraySerializer floatarrayserializer, BeanProperty beanproperty, TypeSerializer typeserializer)
        {
            super(floatarrayserializer, beanproperty, typeserializer);
        }
    }


    private class DoubleArraySerializer extends ArraySerializerBase
    {

        private static final JavaType VALUE_TYPE;

        public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
        {
            return this;
        }

        public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
        {
            if (jsonformatvisitorwrapper != null)
            {
                JsonArrayFormatVisitor jsonarrayformatvisitor = jsonformatvisitorwrapper.expectArrayFormat(javatype);
                if (jsonarrayformatvisitor != null)
                {
                    jsonarrayformatvisitor.itemsFormat(JsonFormatTypes.NUMBER);
                }
            }
        }

        public final JsonSerializer getContentSerializer()
        {
            return null;
        }

        public final JavaType getContentType()
        {
            return VALUE_TYPE;
        }

        public final JsonNode getSchema(SerializerProvider serializerprovider, Type type)
        {
            ObjectNode objectnode = createSchemaNode("array", true);
            objectnode.put("items", createSchemaNode("number"));
            return objectnode;
        }

        public final volatile boolean hasSingleElement(Object obj)
        {
            return hasSingleElement((double[])obj);
        }

        public final boolean hasSingleElement(double ad[])
        {
            return ad.length == 1;
        }

        public final volatile boolean isEmpty(Object obj)
        {
            return isEmpty((double[])obj);
        }

        public final boolean isEmpty(double ad[])
        {
            return ad == null || ad.length == 0;
        }

        public final volatile void serializeContents(Object obj, h h1, SerializerProvider serializerprovider)
        {
            serializeContents((double[])obj, h1, serializerprovider);
        }

        public final void serializeContents(double ad[], h h1, SerializerProvider serializerprovider)
        {
            int i = 0;
            for (int j = ad.length; i < j; i++)
            {
                h1.writeNumber(ad[i]);
            }

        }

        static 
        {
            VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(Double.TYPE);
        }

        public DoubleArraySerializer()
        {
            super([D, null);
        }
    }

}
