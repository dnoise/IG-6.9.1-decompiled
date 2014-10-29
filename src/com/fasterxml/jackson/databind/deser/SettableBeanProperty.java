// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.g.k;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.NullProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.impl.FailingDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ViewMatcher;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;

public abstract class SettableBeanProperty
    implements BeanProperty, Serializable
{

    protected static final JsonDeserializer MISSING_VALUE_DESERIALIZER = new FailingDeserializer("No _valueDeserializer assigned");
    private static final long serialVersionUID = 0xf1c0dac671bc3573L;
    protected final transient Annotations _contextAnnotations;
    protected final boolean _isRequired;
    protected String _managedReferenceName;
    protected final NullProvider _nullProvider;
    protected final String _propName;
    protected int _propertyIndex;
    protected final JavaType _type;
    protected JsonDeserializer _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;
    protected ViewMatcher _viewMatcher;
    protected final PropertyName _wrapperName;

    protected SettableBeanProperty(SettableBeanProperty settablebeanproperty)
    {
        _propertyIndex = -1;
        _propName = settablebeanproperty._propName;
        _type = settablebeanproperty._type;
        _wrapperName = settablebeanproperty._wrapperName;
        _isRequired = settablebeanproperty._isRequired;
        _contextAnnotations = settablebeanproperty._contextAnnotations;
        _valueDeserializer = settablebeanproperty._valueDeserializer;
        _valueTypeDeserializer = settablebeanproperty._valueTypeDeserializer;
        _nullProvider = settablebeanproperty._nullProvider;
        _managedReferenceName = settablebeanproperty._managedReferenceName;
        _propertyIndex = settablebeanproperty._propertyIndex;
        _viewMatcher = settablebeanproperty._viewMatcher;
    }

    protected SettableBeanProperty(SettableBeanProperty settablebeanproperty, JsonDeserializer jsondeserializer)
    {
        _propertyIndex = -1;
        _propName = settablebeanproperty._propName;
        _type = settablebeanproperty._type;
        _wrapperName = settablebeanproperty._wrapperName;
        _isRequired = settablebeanproperty._isRequired;
        _contextAnnotations = settablebeanproperty._contextAnnotations;
        _valueTypeDeserializer = settablebeanproperty._valueTypeDeserializer;
        _managedReferenceName = settablebeanproperty._managedReferenceName;
        _propertyIndex = settablebeanproperty._propertyIndex;
        if (jsondeserializer == null)
        {
            _nullProvider = null;
            _valueDeserializer = MISSING_VALUE_DESERIALIZER;
        } else
        {
            Object obj = jsondeserializer.getNullValue();
            NullProvider nullprovider = null;
            if (obj != null)
            {
                nullprovider = new NullProvider(_type, obj);
            }
            _nullProvider = nullprovider;
            _valueDeserializer = jsondeserializer;
        }
        _viewMatcher = settablebeanproperty._viewMatcher;
    }

    protected SettableBeanProperty(SettableBeanProperty settablebeanproperty, String s)
    {
        _propertyIndex = -1;
        _propName = s;
        _type = settablebeanproperty._type;
        _wrapperName = settablebeanproperty._wrapperName;
        _isRequired = settablebeanproperty._isRequired;
        _contextAnnotations = settablebeanproperty._contextAnnotations;
        _valueDeserializer = settablebeanproperty._valueDeserializer;
        _valueTypeDeserializer = settablebeanproperty._valueTypeDeserializer;
        _nullProvider = settablebeanproperty._nullProvider;
        _managedReferenceName = settablebeanproperty._managedReferenceName;
        _propertyIndex = settablebeanproperty._propertyIndex;
        _viewMatcher = settablebeanproperty._viewMatcher;
    }

    protected SettableBeanProperty(BeanPropertyDefinition beanpropertydefinition, JavaType javatype, TypeDeserializer typedeserializer, Annotations annotations)
    {
        this(beanpropertydefinition.getName(), javatype, beanpropertydefinition.getWrapperName(), typedeserializer, annotations, beanpropertydefinition.isRequired());
    }

    protected SettableBeanProperty(String s, JavaType javatype, PropertyName propertyname, TypeDeserializer typedeserializer, Annotations annotations)
    {
        this(s, javatype, propertyname, typedeserializer, annotations, false);
    }

    protected SettableBeanProperty(String s, JavaType javatype, PropertyName propertyname, TypeDeserializer typedeserializer, Annotations annotations, boolean flag)
    {
        _propertyIndex = -1;
        if (s == null || s.length() == 0)
        {
            _propName = "";
        } else
        {
            _propName = k.a.a(s);
        }
        _type = javatype;
        _wrapperName = propertyname;
        _isRequired = flag;
        _contextAnnotations = annotations;
        _viewMatcher = null;
        _nullProvider = null;
        if (typedeserializer != null)
        {
            typedeserializer = typedeserializer.forProperty(this);
        }
        _valueTypeDeserializer = typedeserializer;
        _valueDeserializer = MISSING_VALUE_DESERIALIZER;
    }

    protected IOException _throwAsIOE(Exception exception)
    {
        if (exception instanceof IOException)
        {
            throw (IOException)exception;
        }
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        }
        for (; exception.getCause() != null; exception = exception.getCause()) { }
        throw new JsonMappingException(exception.getMessage(), null, exception);
    }

    protected void _throwAsIOE(Exception exception, Object obj)
    {
        if (exception instanceof IllegalArgumentException)
        {
            String s;
            StringBuilder stringbuilder;
            String s1;
            if (obj == null)
            {
                s = "[NULL]";
            } else
            {
                s = obj.getClass().getName();
            }
            stringbuilder = (new StringBuilder("Problem deserializing property '")).append(getName());
            stringbuilder.append("' (expected type: ").append(getType());
            stringbuilder.append("; actual type: ").append(s).append(")");
            s1 = exception.getMessage();
            if (s1 != null)
            {
                stringbuilder.append(", problem: ").append(s1);
            } else
            {
                stringbuilder.append(" (no error message provided)");
            }
            throw new JsonMappingException(stringbuilder.toString(), null, exception);
        } else
        {
            _throwAsIOE(exception);
            return;
        }
    }

    public void assignIndex(int i)
    {
        if (_propertyIndex != -1)
        {
            throw new IllegalStateException((new StringBuilder("Property '")).append(getName()).append("' already had index (").append(_propertyIndex).append("), trying to assign ").append(i).toString());
        } else
        {
            _propertyIndex = i;
            return;
        }
    }

    public void depositSchemaProperty(JsonObjectFormatVisitor jsonobjectformatvisitor)
    {
        if (isRequired())
        {
            jsonobjectformatvisitor.property(this);
            return;
        } else
        {
            jsonobjectformatvisitor.optionalProperty(this);
            return;
        }
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.m)
        {
            if (_nullProvider == null)
            {
                return null;
            } else
            {
                return _nullProvider.nullValue(deserializationcontext);
            }
        }
        if (_valueTypeDeserializer != null)
        {
            return _valueDeserializer.deserializeWithType(l1, deserializationcontext, _valueTypeDeserializer);
        } else
        {
            return _valueDeserializer.deserialize(l1, deserializationcontext);
        }
    }

    public abstract void deserializeAndSet(l l1, DeserializationContext deserializationcontext, Object obj);

    public abstract Object deserializeSetAndReturn(l l1, DeserializationContext deserializationcontext, Object obj);

    public abstract Annotation getAnnotation(Class class1);

    public Annotation getContextAnnotation(Class class1)
    {
        return _contextAnnotations.get(class1);
    }

    public int getCreatorIndex()
    {
        return -1;
    }

    protected final Class getDeclaringClass()
    {
        return getMember().getDeclaringClass();
    }

    public Object getInjectableValueId()
    {
        return null;
    }

    public String getManagedReferenceName()
    {
        return _managedReferenceName;
    }

    public abstract AnnotatedMember getMember();

    public final String getName()
    {
        return _propName;
    }

    public int getPropertyIndex()
    {
        return _propertyIndex;
    }

    public JavaType getType()
    {
        return _type;
    }

    public JsonDeserializer getValueDeserializer()
    {
        JsonDeserializer jsondeserializer = _valueDeserializer;
        if (jsondeserializer == MISSING_VALUE_DESERIALIZER)
        {
            jsondeserializer = null;
        }
        return jsondeserializer;
    }

    public TypeDeserializer getValueTypeDeserializer()
    {
        return _valueTypeDeserializer;
    }

    public PropertyName getWrapperName()
    {
        return _wrapperName;
    }

    public boolean hasValueDeserializer()
    {
        return _valueDeserializer != null && _valueDeserializer != MISSING_VALUE_DESERIALIZER;
    }

    public boolean hasValueTypeDeserializer()
    {
        return _valueTypeDeserializer != null;
    }

    public boolean hasViews()
    {
        return _viewMatcher != null;
    }

    public boolean isRequired()
    {
        return _isRequired;
    }

    public abstract void set(Object obj, Object obj1);

    public abstract Object setAndReturn(Object obj, Object obj1);

    public void setManagedReferenceName(String s)
    {
        _managedReferenceName = s;
    }

    public void setViews(Class aclass[])
    {
        if (aclass == null)
        {
            _viewMatcher = null;
            return;
        } else
        {
            _viewMatcher = ViewMatcher.construct(aclass);
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder("[property '")).append(getName()).append("']").toString();
    }

    public boolean visibleInView(Class class1)
    {
        return _viewMatcher == null || _viewMatcher.isVisibleForView(class1);
    }

    public abstract SettableBeanProperty withName(String s);

    public abstract SettableBeanProperty withValueDeserializer(JsonDeserializer jsondeserializer);

}
