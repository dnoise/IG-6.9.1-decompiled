// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            AnnotatedClass, VisibilityChecker, Annotated, AnnotatedMember, 
//            AnnotatedField, AnnotatedMethod, AnnotatedParameter, ObjectIdInfo

public class AnnotationIntrospectorPair extends AnnotationIntrospector
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final AnnotationIntrospector _primary;
    protected final AnnotationIntrospector _secondary;

    public AnnotationIntrospectorPair(AnnotationIntrospector annotationintrospector, AnnotationIntrospector annotationintrospector1)
    {
        _primary = annotationintrospector;
        _secondary = annotationintrospector1;
    }

    public static AnnotationIntrospector create(AnnotationIntrospector annotationintrospector, AnnotationIntrospector annotationintrospector1)
    {
        if (annotationintrospector == null)
        {
            return annotationintrospector1;
        }
        if (annotationintrospector1 == null)
        {
            return annotationintrospector;
        } else
        {
            return new AnnotationIntrospectorPair(annotationintrospector, annotationintrospector1);
        }
    }

    public Collection allIntrospectors()
    {
        return allIntrospectors(((Collection) (new ArrayList())));
    }

    public Collection allIntrospectors(Collection collection)
    {
        _primary.allIntrospectors(collection);
        _secondary.allIntrospectors(collection);
        return collection;
    }

    public VisibilityChecker findAutoDetectVisibility(AnnotatedClass annotatedclass, VisibilityChecker visibilitychecker)
    {
        VisibilityChecker visibilitychecker1 = _secondary.findAutoDetectVisibility(annotatedclass, visibilitychecker);
        return _primary.findAutoDetectVisibility(annotatedclass, visibilitychecker1);
    }

    public Object findContentDeserializer(Annotated annotated)
    {
        Object obj = _primary.findContentDeserializer(annotated);
        if (obj == null || obj == com/fasterxml/jackson/databind/JsonDeserializer$None || obj == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            obj = _secondary.findContentDeserializer(annotated);
        }
        return obj;
    }

    public Object findContentSerializer(Annotated annotated)
    {
        Object obj = _primary.findContentSerializer(annotated);
        if (obj == null || obj == com/fasterxml/jackson/databind/JsonSerializer$None || obj == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            obj = _secondary.findContentSerializer(annotated);
        }
        return obj;
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedmember)
    {
        Object obj = _primary.findDeserializationContentConverter(annotatedmember);
        if (obj == null)
        {
            obj = _secondary.findDeserializationContentConverter(annotatedmember);
        }
        return obj;
    }

    public Class findDeserializationContentType(Annotated annotated, JavaType javatype)
    {
        Class class1 = _primary.findDeserializationContentType(annotated, javatype);
        if (class1 == null)
        {
            class1 = _secondary.findDeserializationContentType(annotated, javatype);
        }
        return class1;
    }

    public Object findDeserializationConverter(Annotated annotated)
    {
        Object obj = _primary.findDeserializationConverter(annotated);
        if (obj == null)
        {
            obj = _secondary.findDeserializationConverter(annotated);
        }
        return obj;
    }

    public Class findDeserializationKeyType(Annotated annotated, JavaType javatype)
    {
        Class class1 = _primary.findDeserializationKeyType(annotated, javatype);
        if (class1 == null)
        {
            class1 = _secondary.findDeserializationKeyType(annotated, javatype);
        }
        return class1;
    }

    public String findDeserializationName(AnnotatedField annotatedfield)
    {
        String s = _primary.findDeserializationName(annotatedfield);
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = _secondary.findDeserializationName(annotatedfield);
_L4:
        return s1;
_L2:
        if (s.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = _secondary.findDeserializationName(annotatedfield);
        if (s1 != null) goto _L4; else goto _L3
_L3:
        return s;
    }

    public String findDeserializationName(AnnotatedMethod annotatedmethod)
    {
        String s = _primary.findDeserializationName(annotatedmethod);
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = _secondary.findDeserializationName(annotatedmethod);
_L4:
        return s1;
_L2:
        if (s.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = _secondary.findDeserializationName(annotatedmethod);
        if (s1 != null) goto _L4; else goto _L3
_L3:
        return s;
    }

    public String findDeserializationName(AnnotatedParameter annotatedparameter)
    {
        String s = _primary.findDeserializationName(annotatedparameter);
        if (s == null)
        {
            s = _secondary.findDeserializationName(annotatedparameter);
        }
        return s;
    }

    public Class findDeserializationType(Annotated annotated, JavaType javatype)
    {
        Class class1 = _primary.findDeserializationType(annotated, javatype);
        if (class1 == null)
        {
            class1 = _secondary.findDeserializationType(annotated, javatype);
        }
        return class1;
    }

    public Object findDeserializer(Annotated annotated)
    {
        Object obj = _primary.findDeserializer(annotated);
        if (obj == null)
        {
            obj = _secondary.findDeserializer(annotated);
        }
        return obj;
    }

    public String findEnumValue(Enum enum)
    {
        String s = _primary.findEnumValue(enum);
        if (s == null)
        {
            s = _secondary.findEnumValue(enum);
        }
        return s;
    }

    public Object findFilterId(AnnotatedClass annotatedclass)
    {
        Object obj = _primary.findFilterId(annotatedclass);
        if (obj == null)
        {
            obj = _secondary.findFilterId(annotatedclass);
        }
        return obj;
    }

    public com.fasterxml.jackson.annotation.JsonFormat.Value findFormat(Annotated annotated)
    {
        com.fasterxml.jackson.annotation.JsonFormat.Value value = _primary.findFormat(annotated);
        if (value == null)
        {
            value = _secondary.findFormat(annotated);
        }
        return value;
    }

    public Boolean findIgnoreUnknownProperties(AnnotatedClass annotatedclass)
    {
        Boolean boolean1 = _primary.findIgnoreUnknownProperties(annotatedclass);
        if (boolean1 == null)
        {
            boolean1 = _secondary.findIgnoreUnknownProperties(annotatedclass);
        }
        return boolean1;
    }

    public Object findInjectableValueId(AnnotatedMember annotatedmember)
    {
        Object obj = _primary.findInjectableValueId(annotatedmember);
        if (obj == null)
        {
            obj = _secondary.findInjectableValueId(annotatedmember);
        }
        return obj;
    }

    public Object findKeyDeserializer(Annotated annotated)
    {
        Object obj = _primary.findKeyDeserializer(annotated);
        if (obj == null || obj == com/fasterxml/jackson/databind/KeyDeserializer$None || obj == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            obj = _secondary.findKeyDeserializer(annotated);
        }
        return obj;
    }

    public Object findKeySerializer(Annotated annotated)
    {
        Object obj = _primary.findKeySerializer(annotated);
        if (obj == null || obj == com/fasterxml/jackson/databind/JsonSerializer$None || obj == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            obj = _secondary.findKeySerializer(annotated);
        }
        return obj;
    }

    public PropertyName findNameForDeserialization(Annotated annotated)
    {
        PropertyName propertyname = _primary.findNameForDeserialization(annotated);
        if (propertyname != null) goto _L2; else goto _L1
_L1:
        PropertyName propertyname1 = _secondary.findNameForDeserialization(annotated);
_L4:
        return propertyname1;
_L2:
        if (propertyname != PropertyName.USE_DEFAULT)
        {
            break; /* Loop/switch isn't completed */
        }
        propertyname1 = _secondary.findNameForDeserialization(annotated);
        if (propertyname1 != null) goto _L4; else goto _L3
_L3:
        return propertyname;
    }

    public PropertyName findNameForSerialization(Annotated annotated)
    {
        PropertyName propertyname = _primary.findNameForSerialization(annotated);
        if (propertyname != null) goto _L2; else goto _L1
_L1:
        PropertyName propertyname1 = _secondary.findNameForSerialization(annotated);
_L4:
        return propertyname1;
_L2:
        if (propertyname != PropertyName.USE_DEFAULT)
        {
            break; /* Loop/switch isn't completed */
        }
        propertyname1 = _secondary.findNameForSerialization(annotated);
        if (propertyname1 != null) goto _L4; else goto _L3
_L3:
        return propertyname;
    }

    public Object findNamingStrategy(AnnotatedClass annotatedclass)
    {
        Object obj = _primary.findNamingStrategy(annotatedclass);
        if (obj == null)
        {
            obj = _secondary.findNamingStrategy(annotatedclass);
        }
        return obj;
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated)
    {
        ObjectIdInfo objectidinfo = _primary.findObjectIdInfo(annotated);
        if (objectidinfo == null)
        {
            objectidinfo = _secondary.findObjectIdInfo(annotated);
        }
        return objectidinfo;
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectidinfo)
    {
        ObjectIdInfo objectidinfo1 = _secondary.findObjectReferenceInfo(annotated, objectidinfo);
        return _primary.findObjectReferenceInfo(annotated, objectidinfo1);
    }

    public Class findPOJOBuilder(AnnotatedClass annotatedclass)
    {
        Class class1 = _primary.findPOJOBuilder(annotatedclass);
        if (class1 == null)
        {
            class1 = _secondary.findPOJOBuilder(annotatedclass);
        }
        return class1;
    }

    public com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedclass)
    {
        com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value value = _primary.findPOJOBuilderConfig(annotatedclass);
        if (value == null)
        {
            value = _secondary.findPOJOBuilderConfig(annotatedclass);
        }
        return value;
    }

    public String[] findPropertiesToIgnore(Annotated annotated)
    {
        String as[] = _primary.findPropertiesToIgnore(annotated);
        if (as == null)
        {
            as = _secondary.findPropertiesToIgnore(annotated);
        }
        return as;
    }

    public TypeResolverBuilder findPropertyContentTypeResolver(MapperConfig mapperconfig, AnnotatedMember annotatedmember, JavaType javatype)
    {
        TypeResolverBuilder typeresolverbuilder = _primary.findPropertyContentTypeResolver(mapperconfig, annotatedmember, javatype);
        if (typeresolverbuilder == null)
        {
            typeresolverbuilder = _secondary.findPropertyContentTypeResolver(mapperconfig, annotatedmember, javatype);
        }
        return typeresolverbuilder;
    }

    public TypeResolverBuilder findPropertyTypeResolver(MapperConfig mapperconfig, AnnotatedMember annotatedmember, JavaType javatype)
    {
        TypeResolverBuilder typeresolverbuilder = _primary.findPropertyTypeResolver(mapperconfig, annotatedmember, javatype);
        if (typeresolverbuilder == null)
        {
            typeresolverbuilder = _secondary.findPropertyTypeResolver(mapperconfig, annotatedmember, javatype);
        }
        return typeresolverbuilder;
    }

    public com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember annotatedmember)
    {
        com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty referenceproperty = _primary.findReferenceType(annotatedmember);
        if (referenceproperty == null)
        {
            referenceproperty = _secondary.findReferenceType(annotatedmember);
        }
        return referenceproperty;
    }

    public PropertyName findRootName(AnnotatedClass annotatedclass)
    {
        PropertyName propertyname = _primary.findRootName(annotatedclass);
        if (propertyname == null)
        {
            propertyname = _secondary.findRootName(annotatedclass);
        } else
        if (!propertyname.hasSimpleName())
        {
            PropertyName propertyname1 = _secondary.findRootName(annotatedclass);
            if (propertyname1 != null)
            {
                return propertyname1;
            }
        }
        return propertyname;
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedmember)
    {
        Object obj = _primary.findSerializationContentConverter(annotatedmember);
        if (obj == null)
        {
            obj = _secondary.findSerializationContentConverter(annotatedmember);
        }
        return obj;
    }

    public Class findSerializationContentType(Annotated annotated, JavaType javatype)
    {
        Class class1 = _primary.findSerializationContentType(annotated, javatype);
        if (class1 == null)
        {
            class1 = _secondary.findSerializationContentType(annotated, javatype);
        }
        return class1;
    }

    public Object findSerializationConverter(Annotated annotated)
    {
        Object obj = _primary.findSerializationConverter(annotated);
        if (obj == null)
        {
            obj = _secondary.findSerializationConverter(annotated);
        }
        return obj;
    }

    public com.fasterxml.jackson.annotation.JsonInclude.Include findSerializationInclusion(Annotated annotated, com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        com.fasterxml.jackson.annotation.JsonInclude.Include include1 = _secondary.findSerializationInclusion(annotated, include);
        return _primary.findSerializationInclusion(annotated, include1);
    }

    public Class findSerializationKeyType(Annotated annotated, JavaType javatype)
    {
        Class class1 = _primary.findSerializationKeyType(annotated, javatype);
        if (class1 == null)
        {
            class1 = _secondary.findSerializationKeyType(annotated, javatype);
        }
        return class1;
    }

    public String findSerializationName(AnnotatedField annotatedfield)
    {
        String s = _primary.findSerializationName(annotatedfield);
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = _secondary.findSerializationName(annotatedfield);
_L4:
        return s1;
_L2:
        if (s.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = _secondary.findSerializationName(annotatedfield);
        if (s1 != null) goto _L4; else goto _L3
_L3:
        return s;
    }

    public String findSerializationName(AnnotatedMethod annotatedmethod)
    {
        String s = _primary.findSerializationName(annotatedmethod);
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = _secondary.findSerializationName(annotatedmethod);
_L4:
        return s1;
_L2:
        if (s.length() != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = _secondary.findSerializationName(annotatedmethod);
        if (s1 != null) goto _L4; else goto _L3
_L3:
        return s;
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedclass)
    {
        String as[] = _primary.findSerializationPropertyOrder(annotatedclass);
        if (as == null)
        {
            as = _secondary.findSerializationPropertyOrder(annotatedclass);
        }
        return as;
    }

    public Boolean findSerializationSortAlphabetically(AnnotatedClass annotatedclass)
    {
        Boolean boolean1 = _primary.findSerializationSortAlphabetically(annotatedclass);
        if (boolean1 == null)
        {
            boolean1 = _secondary.findSerializationSortAlphabetically(annotatedclass);
        }
        return boolean1;
    }

    public Class findSerializationType(Annotated annotated)
    {
        Class class1 = _primary.findSerializationType(annotated);
        if (class1 == null)
        {
            class1 = _secondary.findSerializationType(annotated);
        }
        return class1;
    }

    public com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing findSerializationTyping(Annotated annotated)
    {
        com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing typing = _primary.findSerializationTyping(annotated);
        if (typing == null)
        {
            typing = _secondary.findSerializationTyping(annotated);
        }
        return typing;
    }

    public Object findSerializer(Annotated annotated)
    {
        Object obj = _primary.findSerializer(annotated);
        if (obj == null)
        {
            obj = _secondary.findSerializer(annotated);
        }
        return obj;
    }

    public List findSubtypes(Annotated annotated)
    {
        List list = _primary.findSubtypes(annotated);
        List list1 = _secondary.findSubtypes(annotated);
        if (list == null || list.isEmpty())
        {
            return list1;
        }
        if (list1 == null || list1.isEmpty())
        {
            return list;
        } else
        {
            ArrayList arraylist = new ArrayList(list.size() + list1.size());
            arraylist.addAll(list);
            arraylist.addAll(list1);
            return arraylist;
        }
    }

    public String findTypeName(AnnotatedClass annotatedclass)
    {
        String s = _primary.findTypeName(annotatedclass);
        if (s == null || s.length() == 0)
        {
            s = _secondary.findTypeName(annotatedclass);
        }
        return s;
    }

    public TypeResolverBuilder findTypeResolver(MapperConfig mapperconfig, AnnotatedClass annotatedclass, JavaType javatype)
    {
        TypeResolverBuilder typeresolverbuilder = _primary.findTypeResolver(mapperconfig, annotatedclass, javatype);
        if (typeresolverbuilder == null)
        {
            typeresolverbuilder = _secondary.findTypeResolver(mapperconfig, annotatedclass, javatype);
        }
        return typeresolverbuilder;
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedmember)
    {
        NameTransformer nametransformer = _primary.findUnwrappingNameTransformer(annotatedmember);
        if (nametransformer == null)
        {
            nametransformer = _secondary.findUnwrappingNameTransformer(annotatedmember);
        }
        return nametransformer;
    }

    public Object findValueInstantiator(AnnotatedClass annotatedclass)
    {
        Object obj = _primary.findValueInstantiator(annotatedclass);
        if (obj == null)
        {
            obj = _secondary.findValueInstantiator(annotatedclass);
        }
        return obj;
    }

    public Class[] findViews(Annotated annotated)
    {
        Class aclass[] = _primary.findViews(annotated);
        if (aclass == null)
        {
            aclass = _secondary.findViews(annotated);
        }
        return aclass;
    }

    public PropertyName findWrapperName(Annotated annotated)
    {
        PropertyName propertyname = _primary.findWrapperName(annotated);
        if (propertyname != null) goto _L2; else goto _L1
_L1:
        PropertyName propertyname1 = _secondary.findWrapperName(annotated);
_L4:
        return propertyname1;
_L2:
        if (propertyname != PropertyName.USE_DEFAULT)
        {
            break; /* Loop/switch isn't completed */
        }
        propertyname1 = _secondary.findWrapperName(annotated);
        if (propertyname1 != null) goto _L4; else goto _L3
_L3:
        return propertyname;
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedmethod)
    {
        return _primary.hasAnyGetterAnnotation(annotatedmethod) || _secondary.hasAnyGetterAnnotation(annotatedmethod);
    }

    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedmethod)
    {
        return _primary.hasAnySetterAnnotation(annotatedmethod) || _secondary.hasAnySetterAnnotation(annotatedmethod);
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedmethod)
    {
        return _primary.hasAsValueAnnotation(annotatedmethod) || _secondary.hasAsValueAnnotation(annotatedmethod);
    }

    public boolean hasCreatorAnnotation(Annotated annotated)
    {
        return _primary.hasCreatorAnnotation(annotated) || _secondary.hasCreatorAnnotation(annotated);
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedmember)
    {
        return _primary.hasIgnoreMarker(annotatedmember) || _secondary.hasIgnoreMarker(annotatedmember);
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedmember)
    {
        Boolean boolean1 = _primary.hasRequiredMarker(annotatedmember);
        if (boolean1 == null)
        {
            boolean1 = _secondary.hasRequiredMarker(annotatedmember);
        }
        return boolean1;
    }

    public boolean isAnnotationBundle(Annotation annotation)
    {
        return _primary.isAnnotationBundle(annotation) || _secondary.isAnnotationBundle(annotation);
    }

    public boolean isHandled(Annotation annotation)
    {
        return _primary.isHandled(annotation) || _secondary.isHandled(annotation);
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedclass)
    {
        Boolean boolean1 = _primary.isIgnorableType(annotatedclass);
        if (boolean1 == null)
        {
            boolean1 = _secondary.isIgnorableType(annotatedclass);
        }
        return boolean1;
    }

    public Boolean isTypeId(AnnotatedMember annotatedmember)
    {
        Boolean boolean1 = _primary.isTypeId(annotatedmember);
        if (boolean1 == null)
        {
            boolean1 = _secondary.isTypeId(annotatedmember);
        }
        return boolean1;
    }

    public w version()
    {
        return _primary.version();
    }
}
