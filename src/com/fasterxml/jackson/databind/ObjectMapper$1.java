// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.f;
import com.fasterxml.jackson.a.i;
import com.fasterxml.jackson.a.n;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.deser.BeanDeserializerModifier;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.deser.DeserializerFactory;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.deser.KeyDeserializers;
import com.fasterxml.jackson.databind.deser.ValueInstantiators;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.type.TypeModifier;

// Referenced classes of package com.fasterxml.jackson.databind:
//            ObjectMapper, DeserializationConfig, SerializationConfig, AbstractTypeResolver, 
//            AnnotationIntrospector, DeserializationFeature, MapperFeature, SerializationFeature

class val.mapper
    implements text
{

    final ObjectMapper this$0;
    final ObjectMapper val$mapper;

    public void addAbstractTypeResolver(AbstractTypeResolver abstracttyperesolver)
    {
        DeserializerFactory deserializerfactory = val$mapper._deserializationContext._factory.withAbstractTypeResolver(abstracttyperesolver);
        val$mapper._deserializationContext = val$mapper._deserializationContext.with(deserializerfactory);
    }

    public void addBeanDeserializerModifier(BeanDeserializerModifier beandeserializermodifier)
    {
        DeserializerFactory deserializerfactory = val$mapper._deserializationContext._factory.withDeserializerModifier(beandeserializermodifier);
        val$mapper._deserializationContext = val$mapper._deserializationContext.with(deserializerfactory);
    }

    public void addBeanSerializerModifier(BeanSerializerModifier beanserializermodifier)
    {
        val$mapper._serializerFactory = val$mapper._serializerFactory.withSerializerModifier(beanserializermodifier);
    }

    public void addDeserializationProblemHandler(DeserializationProblemHandler deserializationproblemhandler)
    {
        val$mapper.addHandler(deserializationproblemhandler);
    }

    public void addDeserializers(Deserializers deserializers)
    {
        DeserializerFactory deserializerfactory = val$mapper._deserializationContext._factory.withAdditionalDeserializers(deserializers);
        val$mapper._deserializationContext = val$mapper._deserializationContext.with(deserializerfactory);
    }

    public void addKeyDeserializers(KeyDeserializers keydeserializers)
    {
        DeserializerFactory deserializerfactory = val$mapper._deserializationContext._factory.withAdditionalKeyDeserializers(keydeserializers);
        val$mapper._deserializationContext = val$mapper._deserializationContext.with(deserializerfactory);
    }

    public void addKeySerializers(Serializers serializers)
    {
        val$mapper._serializerFactory = val$mapper._serializerFactory.withAdditionalKeySerializers(serializers);
    }

    public void addSerializers(Serializers serializers)
    {
        val$mapper._serializerFactory = val$mapper._serializerFactory.withAdditionalSerializers(serializers);
    }

    public void addTypeModifier(TypeModifier typemodifier)
    {
        TypeFactory typefactory = val$mapper._typeFactory.withModifier(typemodifier);
        val$mapper.setTypeFactory(typefactory);
    }

    public void addValueInstantiators(ValueInstantiators valueinstantiators)
    {
        DeserializerFactory deserializerfactory = val$mapper._deserializationContext._factory.withValueInstantiators(valueinstantiators);
        val$mapper._deserializationContext = val$mapper._deserializationContext.with(deserializerfactory);
    }

    public void appendAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        val$mapper._deserializationConfig = val$mapper._deserializationConfig.withAppendedAnnotationIntrospector(annotationintrospector);
        val$mapper._serializationConfig = val$mapper._serializationConfig.withAppendedAnnotationIntrospector(annotationintrospector);
    }

    public w getMapperVersion()
    {
        return version();
    }

    public s getOwner()
    {
        return val$mapper;
    }

    public TypeFactory getTypeFactory()
    {
        return _typeFactory;
    }

    public void insertAnnotationIntrospector(AnnotationIntrospector annotationintrospector)
    {
        val$mapper._deserializationConfig = val$mapper._deserializationConfig.withInsertedAnnotationIntrospector(annotationintrospector);
        val$mapper._serializationConfig = val$mapper._serializationConfig.withInsertedAnnotationIntrospector(annotationintrospector);
    }

    public boolean isEnabled(f f)
    {
        return val$mapper.isEnabled(f);
    }

    public boolean isEnabled(i i)
    {
        return val$mapper.isEnabled(i);
    }

    public boolean isEnabled(n n)
    {
        return val$mapper.isEnabled(n);
    }

    public boolean isEnabled(DeserializationFeature deserializationfeature)
    {
        return val$mapper.isEnabled(deserializationfeature);
    }

    public boolean isEnabled(MapperFeature mapperfeature)
    {
        return val$mapper.isEnabled(mapperfeature);
    }

    public boolean isEnabled(SerializationFeature serializationfeature)
    {
        return val$mapper.isEnabled(serializationfeature);
    }

    public transient void registerSubtypes(NamedType anamedtype[])
    {
        val$mapper.registerSubtypes(anamedtype);
    }

    public transient void registerSubtypes(Class aclass[])
    {
        val$mapper.registerSubtypes(aclass);
    }

    public void setClassIntrospector(ClassIntrospector classintrospector)
    {
        val$mapper._deserializationConfig = val$mapper._deserializationConfig.with(classintrospector);
        val$mapper._serializationConfig = val$mapper._serializationConfig.with(classintrospector);
    }

    public void setMixInAnnotations(Class class1, Class class2)
    {
        val$mapper.addMixInAnnotations(class1, class2);
    }

    sIntrospector()
    {
        this$0 = final_objectmapper;
        val$mapper = ObjectMapper.this;
        super();
    }
}
