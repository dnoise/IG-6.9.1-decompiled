// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.JsonSerializableSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.AnyGetterWriter;
import com.fasterxml.jackson.databind.ser.BeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.BeanSerializerBuilder;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.impl.WritableObjectId;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashSet;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer, StdDelegatingSerializer

public abstract class BeanSerializerBase extends StdSerializer
    implements JsonFormatVisitable, SchemaAware, ContextualSerializer, ResolvableSerializer
{

    protected static final BeanPropertyWriter NO_PROPS[] = new BeanPropertyWriter[0];
    protected final AnyGetterWriter _anyGetterWriter;
    protected final BeanPropertyWriter _filteredProps[];
    protected final ObjectIdWriter _objectIdWriter;
    protected final Object _propertyFilterId;
    protected final BeanPropertyWriter _props[];
    protected final com.fasterxml.jackson.annotation.JsonFormat.Shape _serializationShape;
    protected final AnnotatedMember _typeId;

    protected BeanSerializerBase(JavaType javatype, BeanSerializerBuilder beanserializerbuilder, BeanPropertyWriter abeanpropertywriter[], BeanPropertyWriter abeanpropertywriter1[])
    {
        com.fasterxml.jackson.annotation.JsonFormat.Shape shape;
        shape = null;
        super(javatype);
        _props = abeanpropertywriter;
        _filteredProps = abeanpropertywriter1;
        if (beanserializerbuilder != null) goto _L2; else goto _L1
_L1:
        _typeId = null;
        _anyGetterWriter = null;
        _propertyFilterId = null;
        _objectIdWriter = null;
_L4:
        _serializationShape = shape;
        return;
_L2:
        _typeId = beanserializerbuilder.getTypeId();
        _anyGetterWriter = beanserializerbuilder.getAnyGetter();
        _propertyFilterId = beanserializerbuilder.getFilterId();
        _objectIdWriter = beanserializerbuilder.getObjectIdWriter();
        com.fasterxml.jackson.annotation.JsonFormat.Value value = beanserializerbuilder.getBeanDescription().findExpectedFormat(null);
        shape = null;
        if (value != null)
        {
            shape = value.getShape();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected BeanSerializerBase(BeanSerializerBase beanserializerbase)
    {
        this(beanserializerbase, beanserializerbase._props, beanserializerbase._filteredProps);
    }

    protected BeanSerializerBase(BeanSerializerBase beanserializerbase, ObjectIdWriter objectidwriter)
    {
        super(beanserializerbase._handledType);
        _props = beanserializerbase._props;
        _filteredProps = beanserializerbase._filteredProps;
        _typeId = beanserializerbase._typeId;
        _anyGetterWriter = beanserializerbase._anyGetterWriter;
        _objectIdWriter = objectidwriter;
        _propertyFilterId = beanserializerbase._propertyFilterId;
        _serializationShape = beanserializerbase._serializationShape;
    }

    protected BeanSerializerBase(BeanSerializerBase beanserializerbase, NameTransformer nametransformer)
    {
        this(beanserializerbase, rename(beanserializerbase._props, nametransformer), rename(beanserializerbase._filteredProps, nametransformer));
    }

    public BeanSerializerBase(BeanSerializerBase beanserializerbase, BeanPropertyWriter abeanpropertywriter[], BeanPropertyWriter abeanpropertywriter1[])
    {
        super(beanserializerbase._handledType);
        _props = abeanpropertywriter;
        _filteredProps = abeanpropertywriter1;
        _typeId = beanserializerbase._typeId;
        _anyGetterWriter = beanserializerbase._anyGetterWriter;
        _objectIdWriter = beanserializerbase._objectIdWriter;
        _propertyFilterId = beanserializerbase._propertyFilterId;
        _serializationShape = beanserializerbase._serializationShape;
    }

    protected BeanSerializerBase(BeanSerializerBase beanserializerbase, String as[])
    {
        super(beanserializerbase._handledType);
        HashSet hashset = ArrayBuilders.arrayToSet(as);
        BeanPropertyWriter abeanpropertywriter[] = beanserializerbase._props;
        BeanPropertyWriter abeanpropertywriter1[] = beanserializerbase._filteredProps;
        int i = abeanpropertywriter.length;
        ArrayList arraylist = new ArrayList(i);
        ArrayList arraylist1;
        int j;
        if (abeanpropertywriter1 == null)
        {
            arraylist1 = null;
        } else
        {
            arraylist1 = new ArrayList(i);
        }
        for (j = 0; j < i; j++)
        {
            BeanPropertyWriter beanpropertywriter = abeanpropertywriter[j];
            if (hashset.contains(beanpropertywriter.getName()))
            {
                continue;
            }
            arraylist.add(beanpropertywriter);
            if (abeanpropertywriter1 != null)
            {
                arraylist1.add(abeanpropertywriter1[j]);
            }
        }

        _props = (BeanPropertyWriter[])arraylist.toArray(new BeanPropertyWriter[arraylist.size()]);
        BeanPropertyWriter abeanpropertywriter2[] = null;
        if (arraylist1 != null)
        {
            abeanpropertywriter2 = (BeanPropertyWriter[])arraylist1.toArray(new BeanPropertyWriter[arraylist1.size()]);
        }
        _filteredProps = abeanpropertywriter2;
        _typeId = beanserializerbase._typeId;
        _anyGetterWriter = beanserializerbase._anyGetterWriter;
        _objectIdWriter = beanserializerbase._objectIdWriter;
        _propertyFilterId = beanserializerbase._propertyFilterId;
        _serializationShape = beanserializerbase._serializationShape;
    }

    private final String _customTypeId(Object obj)
    {
        Object obj1 = _typeId.getValue(obj);
        if (obj1 == null)
        {
            return "";
        }
        if (obj1 instanceof String)
        {
            return (String)obj1;
        } else
        {
            return obj1.toString();
        }
    }

    private static final BeanPropertyWriter[] rename(BeanPropertyWriter abeanpropertywriter[], NameTransformer nametransformer)
    {
        if (abeanpropertywriter == null || abeanpropertywriter.length == 0 || nametransformer == null || nametransformer == NameTransformer.NOP)
        {
            return abeanpropertywriter;
        }
        int i = abeanpropertywriter.length;
        BeanPropertyWriter abeanpropertywriter1[] = new BeanPropertyWriter[i];
        for (int j = 0; j < i; j++)
        {
            BeanPropertyWriter beanpropertywriter = abeanpropertywriter[j];
            if (beanpropertywriter != null)
            {
                abeanpropertywriter1[j] = beanpropertywriter.rename(nametransformer);
            }
        }

        return abeanpropertywriter1;
    }

    protected final void _serializeWithObjectId(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        ObjectIdWriter objectidwriter = _objectIdWriter;
        WritableObjectId writableobjectid = serializerprovider.findObjectId(obj, objectidwriter.generator);
        if (writableobjectid.writeAsId(h1, serializerprovider, objectidwriter))
        {
            return;
        }
        Object obj1 = writableobjectid.generateId(obj);
        if (objectidwriter.alwaysAsId)
        {
            objectidwriter.serializer.serialize(obj1, h1, serializerprovider);
            return;
        }
        String s;
        if (_typeId == null)
        {
            s = null;
        } else
        {
            s = _customTypeId(obj);
        }
        if (s == null)
        {
            typeserializer.writeTypePrefixForObject(obj, h1);
        } else
        {
            typeserializer.writeCustomTypePrefixForObject(obj, h1, s);
        }
        writableobjectid.writeAsField(h1, serializerprovider, objectidwriter);
        if (_propertyFilterId != null)
        {
            serializeFieldsFiltered(obj, h1, serializerprovider);
        } else
        {
            serializeFields(obj, h1, serializerprovider);
        }
        if (s == null)
        {
            typeserializer.writeTypeSuffixForObject(obj, h1);
            return;
        } else
        {
            typeserializer.writeCustomTypeSuffixForObject(obj, h1, s);
            return;
        }
    }

    protected final void _serializeWithObjectId(Object obj, h h1, SerializerProvider serializerprovider, boolean flag)
    {
        ObjectIdWriter objectidwriter = _objectIdWriter;
        WritableObjectId writableobjectid = serializerprovider.findObjectId(obj, objectidwriter.generator);
        if (!writableobjectid.writeAsId(h1, serializerprovider, objectidwriter))
        {
            Object obj1 = writableobjectid.generateId(obj);
            if (objectidwriter.alwaysAsId)
            {
                objectidwriter.serializer.serialize(obj1, h1, serializerprovider);
                return;
            }
            if (flag)
            {
                h1.writeStartObject();
            }
            writableobjectid.writeAsField(h1, serializerprovider, objectidwriter);
            if (_propertyFilterId != null)
            {
                serializeFieldsFiltered(obj, h1, serializerprovider);
            } else
            {
                serializeFields(obj, h1, serializerprovider);
            }
            if (flag)
            {
                h1.writeEndObject();
                return;
            }
        }
    }

    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonformatvisitorwrapper, JavaType javatype)
    {
        com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor jsonobjectformatvisitor;
        if (jsonformatvisitorwrapper == null)
        {
            jsonobjectformatvisitor = null;
        } else
        {
            jsonobjectformatvisitor = jsonformatvisitorwrapper.expectObjectFormat(javatype);
        }
        if (jsonobjectformatvisitor != null)
        {
            Object obj = _propertyFilterId;
            int i = 0;
            if (obj != null)
            {
                BeanPropertyFilter beanpropertyfilter = findFilter(jsonformatvisitorwrapper.getProvider());
                for (; i < _props.length; i++)
                {
                    beanpropertyfilter.depositSchemaProperty(_props[i], jsonobjectformatvisitor, jsonformatvisitorwrapper.getProvider());
                }

            } else
            {
                for (; i < _props.length; i++)
                {
                    _props[i].depositSchemaProperty(jsonobjectformatvisitor);
                }

            }
        }
    }

    protected abstract BeanSerializerBase asArraySerializer();

    public JsonSerializer createContextual(SerializerProvider serializerprovider, BeanProperty beanproperty)
    {
        ObjectIdWriter objectidwriter;
        AnnotationIntrospector annotationintrospector;
        Object obj;
        ObjectIdWriter objectidwriter1;
        String as[];
        BeanSerializerBase beanserializerbase;
        String as1[];
        ObjectIdInfo objectidinfo;
        objectidwriter = _objectIdWriter;
        annotationintrospector = serializerprovider.getAnnotationIntrospector();
        com.fasterxml.jackson.annotation.JsonFormat.Shape shape;
        com.fasterxml.jackson.annotation.JsonFormat.Value value;
        ObjectIdWriter objectidwriter2;
        ObjectIdInfo objectidinfo2;
        if (beanproperty == null || annotationintrospector == null)
        {
            obj = null;
        } else
        {
            obj = beanproperty.getMember();
        }
        if (obj == null) goto _L2; else goto _L1
_L1:
        as1 = annotationintrospector.findPropertiesToIgnore(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
        objectidinfo = annotationintrospector.findObjectIdInfo(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
        if (objectidinfo != null) goto _L4; else goto _L3
_L3:
        if (objectidwriter != null)
        {
            objectidinfo2 = annotationintrospector.findObjectReferenceInfo(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)), new ObjectIdInfo("", null, null));
            objectidwriter1 = _objectIdWriter.withAlwaysAsId(objectidinfo2.getAlwaysAsId());
            as = as1;
        } else
        {
            objectidwriter1 = objectidwriter;
            as = as1;
        }
_L10:
        if (objectidwriter1 == null) goto _L6; else goto _L5
_L5:
        objectidwriter2 = objectidwriter1.withSerializer(serializerprovider.findValueSerializer(objectidwriter1.idType, beanproperty));
        if (objectidwriter2 == _objectIdWriter) goto _L6; else goto _L7
_L7:
        beanserializerbase = withObjectIdWriter(objectidwriter2);
_L8:
        if (as != null && as.length != 0)
        {
            beanserializerbase = beanserializerbase.withIgnorals(as);
        }
        shape = null;
        if (obj != null)
        {
            value = annotationintrospector.findFormat(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)));
            shape = null;
            if (value != null)
            {
                shape = value.getShape();
            }
        }
        if (shape == null)
        {
            shape = _serializationShape;
        }
        ObjectIdInfo objectidinfo1;
        Class class1;
        JavaType javatype;
        JavaType javatype1;
        ObjectIdGenerator objectidgenerator;
        String s;
        int i;
        int j;
        BeanPropertyWriter beanpropertywriter;
        BeanPropertyWriter beanpropertywriter1;
        if (shape == com.fasterxml.jackson.annotation.JsonFormat.Shape.ARRAY)
        {
            return beanserializerbase.asArraySerializer();
        } else
        {
            return beanserializerbase;
        }
_L4:
        objectidinfo1 = annotationintrospector.findObjectReferenceInfo(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)), objectidinfo);
        class1 = objectidinfo1.getGeneratorType();
        javatype = serializerprovider.constructType(class1);
        javatype1 = serializerprovider.getTypeFactory().findTypeParameters(javatype, com/fasterxml/jackson/annotation/ObjectIdGenerator)[0];
        if (class1 == com/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator)
        {
            s = objectidinfo1.getPropertyName();
            i = _props.length;
            j = 0;
            do
            {
                if (j == i)
                {
                    throw new IllegalArgumentException((new StringBuilder("Invalid Object Id definition for ")).append(_handledType.getName()).append(": can not find property with name '").append(s).append("'").toString());
                }
                beanpropertywriter = _props[j];
                if (s.equals(beanpropertywriter.getName()))
                {
                    if (j > 0)
                    {
                        System.arraycopy(_props, 0, _props, 1, j);
                        _props[0] = beanpropertywriter;
                        if (_filteredProps != null)
                        {
                            beanpropertywriter1 = _filteredProps[j];
                            System.arraycopy(_filteredProps, 0, _filteredProps, 1, j);
                            _filteredProps[0] = beanpropertywriter1;
                        }
                    }
                    objectidwriter1 = ObjectIdWriter.construct(beanpropertywriter.getType(), null, new PropertyBasedObjectIdGenerator(objectidinfo1, beanpropertywriter), objectidinfo1.getAlwaysAsId());
                    as = as1;
                    continue; /* Loop/switch isn't completed */
                }
                j++;
            } while (true);
        }
        objectidgenerator = serializerprovider.objectIdGeneratorInstance(((com.fasterxml.jackson.databind.introspect.Annotated) (obj)), objectidinfo1);
        objectidwriter1 = ObjectIdWriter.construct(javatype1, objectidinfo1.getPropertyName(), objectidgenerator, objectidinfo1.getAlwaysAsId());
        as = as1;
        continue; /* Loop/switch isn't completed */
_L6:
        beanserializerbase = this;
        if (true) goto _L8; else goto _L2
_L2:
        objectidwriter1 = objectidwriter;
        as = null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected JsonSerializer findConvertingSerializer(SerializerProvider serializerprovider, BeanPropertyWriter beanpropertywriter)
    {
        AnnotationIntrospector annotationintrospector = serializerprovider.getAnnotationIntrospector();
        if (annotationintrospector != null)
        {
            Object obj = annotationintrospector.findSerializationConverter(beanpropertywriter.getMember());
            if (obj != null)
            {
                Converter converter = serializerprovider.converterInstance(beanpropertywriter.getMember(), obj);
                JavaType javatype = converter.getOutputType(serializerprovider.getTypeFactory());
                return new StdDelegatingSerializer(converter, javatype, serializerprovider.findValueSerializer(javatype, beanpropertywriter));
            }
        }
        return null;
    }

    protected BeanPropertyFilter findFilter(SerializerProvider serializerprovider)
    {
        Object obj = _propertyFilterId;
        FilterProvider filterprovider = serializerprovider.getFilterProvider();
        if (filterprovider == null)
        {
            throw new JsonMappingException((new StringBuilder("Can not resolve BeanPropertyFilter with id '")).append(obj).append("'; no FilterProvider configured").toString());
        } else
        {
            return filterprovider.findFilter(obj);
        }
    }

    public JsonNode getSchema(SerializerProvider serializerprovider, Type type)
    {
        ObjectNode objectnode = createSchemaNode("object", true);
        JsonSerializableSchema jsonserializableschema = (JsonSerializableSchema)_handledType.getAnnotation(com/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema);
        if (jsonserializableschema != null)
        {
            String s = jsonserializableschema.id();
            if (s != null && s.length() > 0)
            {
                objectnode.put("id", s);
            }
        }
        ObjectNode objectnode1 = objectnode.objectNode();
        BeanPropertyFilter beanpropertyfilter;
        int i;
        if (_propertyFilterId != null)
        {
            beanpropertyfilter = findFilter(serializerprovider);
        } else
        {
            beanpropertyfilter = null;
        }
        i = 0;
        while (i < _props.length) 
        {
            BeanPropertyWriter beanpropertywriter = _props[i];
            if (beanpropertyfilter == null)
            {
                beanpropertywriter.depositSchemaProperty(objectnode1, serializerprovider);
            } else
            {
                beanpropertyfilter.depositSchemaProperty(beanpropertywriter, objectnode1, serializerprovider);
            }
            i++;
        }
        objectnode.put("properties", objectnode1);
        return objectnode;
    }

    public void resolve(SerializerProvider serializerprovider)
    {
        int i;
        int k;
        BeanPropertyWriter beanpropertywriter;
        Object obj;
        JavaType javatype;
        int j;
        JsonSerializer jsonserializer;
        BeanPropertyWriter beanpropertywriter2;
        if (_filteredProps == null)
        {
            i = 0;
        } else
        {
            i = _filteredProps.length;
        }
        j = _props.length;
        k = 0;
        if (k >= j)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        beanpropertywriter = _props[k];
        if (!beanpropertywriter.willSuppressNulls() && !beanpropertywriter.hasNullSerializer())
        {
            jsonserializer = serializerprovider.findNullValueSerializer(beanpropertywriter);
            if (jsonserializer != null)
            {
                beanpropertywriter.assignNullSerializer(jsonserializer);
                if (k < i)
                {
                    beanpropertywriter2 = _filteredProps[k];
                    if (beanpropertywriter2 != null)
                    {
                        beanpropertywriter2.assignNullSerializer(jsonserializer);
                    }
                }
            }
        }
        if (!beanpropertywriter.hasSerializer())
        {
            obj = findConvertingSerializer(serializerprovider, beanpropertywriter);
            if (obj != null)
            {
                break MISSING_BLOCK_LABEL_243;
            }
            javatype = beanpropertywriter.getSerializationType();
            if (javatype != null)
            {
                break; /* Loop/switch isn't completed */
            }
            javatype = serializerprovider.constructType(beanpropertywriter.getGenericPropertyType());
            if (javatype.isFinal())
            {
                break; /* Loop/switch isn't completed */
            }
            if (javatype.isContainerType() || javatype.containedTypeCount() > 0)
            {
                beanpropertywriter.setNonTrivialBaseType(javatype);
            }
        }
_L4:
        k++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_18;
_L1:
        obj = serializerprovider.findValueSerializer(javatype, beanpropertywriter);
        if (javatype.isContainerType())
        {
            TypeSerializer typeserializer = (TypeSerializer)javatype.getContentType().getTypeHandler();
            if (typeserializer != null && (obj instanceof ContainerSerializer))
            {
                obj = ((ContainerSerializer)obj).withValueTypeSerializer(typeserializer);
            }
        }
        beanpropertywriter.assignSerializer(((JsonSerializer) (obj)));
        if (k < i)
        {
            BeanPropertyWriter beanpropertywriter1 = _filteredProps[k];
            if (beanpropertywriter1 != null)
            {
                beanpropertywriter1.assignSerializer(((JsonSerializer) (obj)));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (_anyGetterWriter != null)
        {
            _anyGetterWriter.resolve(serializerprovider);
        }
        return;
    }

    public abstract void serialize(Object obj, h h1, SerializerProvider serializerprovider);

    protected void serializeFields(Object obj, h h1, SerializerProvider serializerprovider)
    {
        BeanPropertyWriter abeanpropertywriter[];
        int i;
        int j;
        BeanPropertyWriter beanpropertywriter;
        if (_filteredProps != null && serializerprovider.getActiveView() != null)
        {
            abeanpropertywriter = _filteredProps;
        } else
        {
            abeanpropertywriter = _props;
        }
        i = 0;
        try
        {
            j = abeanpropertywriter.length;
        }
        catch (Exception exception)
        {
            String s1;
            if (i == abeanpropertywriter.length)
            {
                s1 = "[anySetter]";
            } else
            {
                s1 = abeanpropertywriter[i].getName();
            }
            wrapAndThrow(serializerprovider, exception, obj, s1);
            return;
        }
        catch (StackOverflowError stackoverflowerror)
        {
            JsonMappingException jsonmappingexception = new JsonMappingException("Infinite recursion (StackOverflowError)", stackoverflowerror);
            String s;
            if (i == abeanpropertywriter.length)
            {
                s = "[anySetter]";
            } else
            {
                s = abeanpropertywriter[i].getName();
            }
            jsonmappingexception.prependPath(new com.fasterxml.jackson.databind.JsonMappingException.Reference(obj, s));
            throw jsonmappingexception;
        }
        if (i >= j) goto _L2; else goto _L1
_L1:
        beanpropertywriter = abeanpropertywriter[i];
        if (beanpropertywriter == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        beanpropertywriter.serializeAsField(obj, h1, serializerprovider);
        i++;
        break MISSING_BLOCK_LABEL_28;
_L2:
        if (_anyGetterWriter != null)
        {
            _anyGetterWriter.getAndSerialize(obj, h1, serializerprovider);
        }
        return;
    }

    protected void serializeFieldsFiltered(Object obj, h h1, SerializerProvider serializerprovider)
    {
        BeanPropertyWriter abeanpropertywriter[];
        BeanPropertyFilter beanpropertyfilter;
        if (_filteredProps != null && serializerprovider.getActiveView() != null)
        {
            abeanpropertywriter = _filteredProps;
        } else
        {
            abeanpropertywriter = _props;
        }
        beanpropertyfilter = findFilter(serializerprovider);
        if (beanpropertyfilter != null) goto _L2; else goto _L1
_L1:
        serializeFields(obj, h1, serializerprovider);
_L4:
        return;
_L2:
        int i = 0;
        int j;
        BeanPropertyWriter beanpropertywriter;
        try
        {
            j = abeanpropertywriter.length;
        }
        catch (Exception exception)
        {
            String s1;
            if (i == abeanpropertywriter.length)
            {
                s1 = "[anySetter]";
            } else
            {
                s1 = abeanpropertywriter[i].getName();
            }
            wrapAndThrow(serializerprovider, exception, obj, s1);
            return;
        }
        catch (StackOverflowError stackoverflowerror)
        {
            JsonMappingException jsonmappingexception = new JsonMappingException("Infinite recursion (StackOverflowError)", stackoverflowerror);
            String s;
            if (i == abeanpropertywriter.length)
            {
                s = "[anySetter]";
            } else
            {
                s = abeanpropertywriter[i].getName();
            }
            jsonmappingexception.prependPath(new com.fasterxml.jackson.databind.JsonMappingException.Reference(obj, s));
            throw jsonmappingexception;
        }
        for (; i >= j; i++)
        {
            continue; /* Loop/switch isn't completed */
        }

        beanpropertywriter = abeanpropertywriter[i];
        if (beanpropertywriter == null)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        beanpropertyfilter.serializeAsField(obj, h1, serializerprovider, beanpropertywriter);
        break MISSING_BLOCK_LABEL_208;
        if (_anyGetterWriter == null) goto _L4; else goto _L3
_L3:
        _anyGetterWriter.getAndSerialize(obj, h1, serializerprovider);
        return;
    }

    public void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        if (_objectIdWriter != null)
        {
            _serializeWithObjectId(obj, h1, serializerprovider, typeserializer);
            return;
        }
        String s;
        if (_typeId == null)
        {
            s = null;
        } else
        {
            s = _customTypeId(obj);
        }
        if (s == null)
        {
            typeserializer.writeTypePrefixForObject(obj, h1);
        } else
        {
            typeserializer.writeCustomTypePrefixForObject(obj, h1, s);
        }
        if (_propertyFilterId != null)
        {
            serializeFieldsFiltered(obj, h1, serializerprovider);
        } else
        {
            serializeFields(obj, h1, serializerprovider);
        }
        if (s == null)
        {
            typeserializer.writeTypeSuffixForObject(obj, h1);
            return;
        } else
        {
            typeserializer.writeCustomTypeSuffixForObject(obj, h1, s);
            return;
        }
    }

    public boolean usesObjectId()
    {
        return _objectIdWriter != null;
    }

    protected abstract BeanSerializerBase withIgnorals(String as[]);

    public abstract BeanSerializerBase withObjectIdWriter(ObjectIdWriter objectidwriter);

}
