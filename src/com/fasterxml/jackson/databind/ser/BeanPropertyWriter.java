// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.a.c.l;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanPropertyWriter;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;

public class BeanPropertyWriter
    implements BeanProperty
{

    public static final Object MARKER_FOR_EMPTY = new Object();
    protected final Method _accessorMethod;
    protected final JavaType _cfgSerializationType;
    protected final Annotations _contextAnnotations;
    protected final JavaType _declaredType;
    protected PropertySerializerMap _dynamicSerializers;
    protected final Field _field;
    protected final Class _includeInViews[];
    protected HashMap _internalSettings;
    protected final boolean _isRequired;
    protected final AnnotatedMember _member;
    protected final l _name;
    protected JavaType _nonTrivialBaseType;
    protected JsonSerializer _nullSerializer;
    protected JsonSerializer _serializer;
    protected final boolean _suppressNulls;
    protected final Object _suppressableValue;
    protected TypeSerializer _typeSerializer;
    protected final PropertyName _wrapperName;

    public BeanPropertyWriter(BeanPropertyDefinition beanpropertydefinition, AnnotatedMember annotatedmember, Annotations annotations, JavaType javatype, JsonSerializer jsonserializer, TypeSerializer typeserializer, JavaType javatype1, 
            boolean flag, Object obj)
    {
        _member = annotatedmember;
        _contextAnnotations = annotations;
        _name = new l(beanpropertydefinition.getName());
        _wrapperName = beanpropertydefinition.getWrapperName();
        _declaredType = javatype;
        _serializer = jsonserializer;
        PropertySerializerMap propertyserializermap;
        if (jsonserializer == null)
        {
            propertyserializermap = PropertySerializerMap.emptyMap();
        } else
        {
            propertyserializermap = null;
        }
        _dynamicSerializers = propertyserializermap;
        _typeSerializer = typeserializer;
        _cfgSerializationType = javatype1;
        _isRequired = beanpropertydefinition.isRequired();
        if (annotatedmember instanceof AnnotatedField)
        {
            _accessorMethod = null;
            _field = (Field)annotatedmember.getMember();
        } else
        if (annotatedmember instanceof AnnotatedMethod)
        {
            _accessorMethod = (Method)annotatedmember.getMember();
            _field = null;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Can not pass member of type ")).append(annotatedmember.getClass().getName()).toString());
        }
        _suppressNulls = flag;
        _suppressableValue = obj;
        _includeInViews = beanpropertydefinition.findViews();
        _nullSerializer = null;
    }

    protected BeanPropertyWriter(BeanPropertyWriter beanpropertywriter)
    {
        this(beanpropertywriter, beanpropertywriter._name);
    }

    protected BeanPropertyWriter(BeanPropertyWriter beanpropertywriter, l l1)
    {
        _name = l1;
        _wrapperName = beanpropertywriter._wrapperName;
        _member = beanpropertywriter._member;
        _contextAnnotations = beanpropertywriter._contextAnnotations;
        _declaredType = beanpropertywriter._declaredType;
        _accessorMethod = beanpropertywriter._accessorMethod;
        _field = beanpropertywriter._field;
        _serializer = beanpropertywriter._serializer;
        _nullSerializer = beanpropertywriter._nullSerializer;
        if (beanpropertywriter._internalSettings != null)
        {
            _internalSettings = new HashMap(beanpropertywriter._internalSettings);
        }
        _cfgSerializationType = beanpropertywriter._cfgSerializationType;
        _dynamicSerializers = beanpropertywriter._dynamicSerializers;
        _suppressNulls = beanpropertywriter._suppressNulls;
        _suppressableValue = beanpropertywriter._suppressableValue;
        _includeInViews = beanpropertywriter._includeInViews;
        _typeSerializer = beanpropertywriter._typeSerializer;
        _nonTrivialBaseType = beanpropertywriter._nonTrivialBaseType;
        _isRequired = beanpropertywriter._isRequired;
    }

    protected JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, Class class1, SerializerProvider serializerprovider)
    {
        com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult serializerandmapresult;
        if (_nonTrivialBaseType != null)
        {
            serializerandmapresult = propertyserializermap.findAndAddSerializer(serializerprovider.constructSpecializedType(_nonTrivialBaseType, class1), serializerprovider, this);
        } else
        {
            serializerandmapresult = propertyserializermap.findAndAddSerializer(class1, serializerprovider, this);
        }
        if (propertyserializermap != serializerandmapresult.map)
        {
            _dynamicSerializers = serializerandmapresult.map;
        }
        return serializerandmapresult.serializer;
    }

    protected void _handleSelfReference(Object obj, JsonSerializer jsonserializer)
    {
        if (jsonserializer.usesObjectId())
        {
            return;
        } else
        {
            throw new JsonMappingException("Direct self-reference leading to cycle");
        }
    }

    public void assignNullSerializer(JsonSerializer jsonserializer)
    {
        if (_nullSerializer != null && _nullSerializer != jsonserializer)
        {
            throw new IllegalStateException("Can not override null serializer");
        } else
        {
            _nullSerializer = jsonserializer;
            return;
        }
    }

    public void assignSerializer(JsonSerializer jsonserializer)
    {
        if (_serializer != null && _serializer != jsonserializer)
        {
            throw new IllegalStateException("Can not override serializer");
        } else
        {
            _serializer = jsonserializer;
            return;
        }
    }

    public void depositSchemaProperty(JsonObjectFormatVisitor jsonobjectformatvisitor)
    {
label0:
        {
            if (jsonobjectformatvisitor != null)
            {
                if (!isRequired())
                {
                    break label0;
                }
                jsonobjectformatvisitor.property(this);
            }
            return;
        }
        jsonobjectformatvisitor.optionalProperty(this);
    }

    public void depositSchemaProperty(ObjectNode objectnode, SerializerProvider serializerprovider)
    {
        JavaType javatype = getSerializationType();
        Object obj;
        JsonSerializer jsonserializer;
        boolean flag;
        com.fasterxml.jackson.databind.JsonNode jsonnode;
        if (javatype == null)
        {
            obj = getGenericPropertyType();
        } else
        {
            obj = javatype.getRawClass();
        }
        jsonserializer = getSerializer();
        if (jsonserializer == null)
        {
            Class class1 = getRawSerializationType();
            if (class1 == null)
            {
                class1 = getPropertyType();
            }
            jsonserializer = serializerprovider.findValueSerializer(class1, this);
        }
        if (!isRequired())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (jsonserializer instanceof SchemaAware)
        {
            jsonnode = ((SchemaAware)jsonserializer).getSchema(serializerprovider, ((Type) (obj)), flag);
        } else
        {
            jsonnode = JsonSchema.getDefaultSchemaNode();
        }
        objectnode.put(getName(), jsonnode);
    }

    public final Object get(Object obj)
    {
        if (_accessorMethod != null)
        {
            return _accessorMethod.invoke(obj, new Object[0]);
        } else
        {
            return _field.get(obj);
        }
    }

    public Annotation getAnnotation(Class class1)
    {
        return _member.getAnnotation(class1);
    }

    public Annotation getContextAnnotation(Class class1)
    {
        return _contextAnnotations.get(class1);
    }

    public Type getGenericPropertyType()
    {
        if (_accessorMethod != null)
        {
            return _accessorMethod.getGenericReturnType();
        } else
        {
            return _field.getGenericType();
        }
    }

    public Object getInternalSetting(Object obj)
    {
        if (_internalSettings == null)
        {
            return null;
        } else
        {
            return _internalSettings.get(obj);
        }
    }

    public AnnotatedMember getMember()
    {
        return _member;
    }

    public String getName()
    {
        return _name.a();
    }

    public Class getPropertyType()
    {
        if (_accessorMethod != null)
        {
            return _accessorMethod.getReturnType();
        } else
        {
            return _field.getType();
        }
    }

    public Class getRawSerializationType()
    {
        if (_cfgSerializationType == null)
        {
            return null;
        } else
        {
            return _cfgSerializationType.getRawClass();
        }
    }

    public JavaType getSerializationType()
    {
        return _cfgSerializationType;
    }

    public l getSerializedName()
    {
        return _name;
    }

    public JsonSerializer getSerializer()
    {
        return _serializer;
    }

    public JavaType getType()
    {
        return _declaredType;
    }

    public Class[] getViews()
    {
        return _includeInViews;
    }

    public PropertyName getWrapperName()
    {
        return _wrapperName;
    }

    public boolean hasNullSerializer()
    {
        return _nullSerializer != null;
    }

    public boolean hasSerializer()
    {
        return _serializer != null;
    }

    public boolean isRequired()
    {
        return _isRequired;
    }

    protected boolean isRequired(AnnotationIntrospector annotationintrospector)
    {
        return _isRequired;
    }

    public Object removeInternalSetting(Object obj)
    {
        if (_internalSettings != null)
        {
            Object obj1 = _internalSettings.remove(obj);
            if (_internalSettings.size() == 0)
            {
                _internalSettings = null;
            }
            return obj1;
        } else
        {
            return null;
        }
    }

    public BeanPropertyWriter rename(NameTransformer nametransformer)
    {
        String s = nametransformer.transform(_name.a());
        if (s.equals(_name.toString()))
        {
            return this;
        } else
        {
            return new BeanPropertyWriter(this, new l(s));
        }
    }

    public void serializeAsColumn(Object obj, h h1, SerializerProvider serializerprovider)
    {
        Object obj1 = get(obj);
        if (obj1 == null)
        {
            if (_nullSerializer != null)
            {
                _nullSerializer.serialize(null, h1, serializerprovider);
                return;
            } else
            {
                h1.writeNull();
                return;
            }
        }
        JsonSerializer jsonserializer = _serializer;
        if (jsonserializer == null)
        {
            Class class1 = obj1.getClass();
            PropertySerializerMap propertyserializermap = _dynamicSerializers;
            jsonserializer = propertyserializermap.serializerFor(class1);
            if (jsonserializer == null)
            {
                jsonserializer = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
            }
        }
        if (_suppressableValue != null)
        {
            if (MARKER_FOR_EMPTY == _suppressableValue)
            {
                if (jsonserializer.isEmpty(obj1))
                {
                    serializeAsPlaceholder(obj, h1, serializerprovider);
                    return;
                }
            } else
            if (_suppressableValue.equals(obj1))
            {
                serializeAsPlaceholder(obj, h1, serializerprovider);
                return;
            }
        }
        if (obj1 == obj)
        {
            _handleSelfReference(obj, jsonserializer);
        }
        if (_typeSerializer == null)
        {
            jsonserializer.serialize(obj1, h1, serializerprovider);
            return;
        } else
        {
            jsonserializer.serializeWithType(obj1, h1, serializerprovider, _typeSerializer);
            return;
        }
    }

    public void serializeAsField(Object obj, h h1, SerializerProvider serializerprovider)
    {
        Object obj1 = get(obj);
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        if (_nullSerializer != null)
        {
            h1.writeFieldName(_name);
            _nullSerializer.serialize(null, h1, serializerprovider);
        }
_L4:
        return;
_L2:
        JsonSerializer jsonserializer;
        jsonserializer = _serializer;
        if (jsonserializer == null)
        {
            Class class1 = obj1.getClass();
            PropertySerializerMap propertyserializermap = _dynamicSerializers;
            jsonserializer = propertyserializermap.serializerFor(class1);
            if (jsonserializer == null)
            {
                jsonserializer = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
            }
        }
        if (_suppressableValue == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (MARKER_FOR_EMPTY != _suppressableValue)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        if (jsonserializer.isEmpty(obj1)) goto _L4; else goto _L3
_L3:
        if (obj1 == obj)
        {
            _handleSelfReference(obj, jsonserializer);
        }
        h1.writeFieldName(_name);
        if (_typeSerializer == null)
        {
            jsonserializer.serialize(obj1, h1, serializerprovider);
            return;
        } else
        {
            jsonserializer.serializeWithType(obj1, h1, serializerprovider, _typeSerializer);
            return;
        }
        if (_suppressableValue.equals(obj1))
        {
            return;
        }
          goto _L3
    }

    public void serializeAsPlaceholder(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (_nullSerializer != null)
        {
            _nullSerializer.serialize(null, h1, serializerprovider);
            return;
        } else
        {
            h1.writeNull();
            return;
        }
    }

    public Object setInternalSetting(Object obj, Object obj1)
    {
        if (_internalSettings == null)
        {
            _internalSettings = new HashMap();
        }
        return _internalSettings.put(obj, obj1);
    }

    public void setNonTrivialBaseType(JavaType javatype)
    {
        _nonTrivialBaseType = javatype;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        stringbuilder.append("property '").append(getName()).append("' (");
        if (_accessorMethod != null)
        {
            stringbuilder.append("via method ").append(_accessorMethod.getDeclaringClass().getName()).append("#").append(_accessorMethod.getName());
        } else
        {
            stringbuilder.append("field \"").append(_field.getDeclaringClass().getName()).append("#").append(_field.getName());
        }
        if (_serializer == null)
        {
            stringbuilder.append(", no static serializer");
        } else
        {
            stringbuilder.append((new StringBuilder(", static serializer of type ")).append(_serializer.getClass().getName()).toString());
        }
        stringbuilder.append(')');
        return stringbuilder.toString();
    }

    public BeanPropertyWriter unwrappingWriter(NameTransformer nametransformer)
    {
        return new UnwrappingBeanPropertyWriter(this, nametransformer);
    }

    public boolean willSuppressNulls()
    {
        return _suppressNulls;
    }

}
