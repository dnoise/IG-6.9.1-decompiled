// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.a.w;
import com.fasterxml.jackson.annotation.JacksonAnnotation;
import com.fasterxml.jackson.annotation.JacksonAnnotationsInside;
import com.fasterxml.jackson.annotation.JacksonInject;
import com.fasterxml.jackson.annotation.JsonAnyGetter;
import com.fasterxml.jackson.annotation.JsonAnySetter;
import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonGetter;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.annotation.JsonRawValue;
import com.fasterxml.jackson.annotation.JsonRootName;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeId;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonView;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.annotation.JsonTypeIdResolver;
import com.fasterxml.jackson.databind.annotation.JsonTypeResolver;
import com.fasterxml.jackson.databind.annotation.JsonValueInstantiator;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.std.RawSerializer;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.introspect:
//            Annotated, AnnotatedClass, VisibilityChecker, AnnotatedMember, 
//            AnnotatedField, AnnotatedMethod, AnnotatedParameter, ObjectIdInfo

public class JacksonAnnotationIntrospector extends AnnotationIntrospector
    implements Serializable
{

    private static final long serialVersionUID = 1L;

    public JacksonAnnotationIntrospector()
    {
    }

    protected StdTypeResolverBuilder _constructNoTypeResolverBuilder()
    {
        return StdTypeResolverBuilder.noTypeInfoBuilder();
    }

    protected StdTypeResolverBuilder _constructStdTypeResolverBuilder()
    {
        return new StdTypeResolverBuilder();
    }

    protected TypeResolverBuilder _findTypeResolver(MapperConfig mapperconfig, Annotated annotated, JavaType javatype)
    {
        JsonTypeInfo jsontypeinfo = (JsonTypeInfo)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonTypeInfo);
        JsonTypeResolver jsontyperesolver = (JsonTypeResolver)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonTypeResolver);
        Object obj;
        JsonTypeIdResolver jsontypeidresolver;
        TypeIdResolver typeidresolver;
        TypeResolverBuilder typeresolverbuilder;
        com.fasterxml.jackson.annotation.JsonTypeInfo.As as;
        TypeResolverBuilder typeresolverbuilder1;
        Class class1;
        if (jsontyperesolver != null)
        {
            if (jsontypeinfo == null)
            {
                return null;
            }
            obj = mapperconfig.typeResolverBuilderInstance(annotated, jsontyperesolver.value());
        } else
        {
            if (jsontypeinfo == null)
            {
                return null;
            }
            if (jsontypeinfo.use() == com.fasterxml.jackson.annotation.JsonTypeInfo.Id.NONE)
            {
                return _constructNoTypeResolverBuilder();
            }
            obj = _constructStdTypeResolverBuilder();
        }
        jsontypeidresolver = (JsonTypeIdResolver)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonTypeIdResolver);
        typeidresolver = null;
        if (jsontypeidresolver != null)
        {
            typeidresolver = mapperconfig.typeIdResolverInstance(annotated, jsontypeidresolver.value());
        }
        if (typeidresolver != null)
        {
            typeidresolver.init(javatype);
        }
        typeresolverbuilder = ((TypeResolverBuilder) (obj)).init(jsontypeinfo.use(), typeidresolver);
        as = jsontypeinfo.include();
        if (as == com.fasterxml.jackson.annotation.JsonTypeInfo.As.EXTERNAL_PROPERTY && (annotated instanceof AnnotatedClass))
        {
            as = com.fasterxml.jackson.annotation.JsonTypeInfo.As.PROPERTY;
        }
        typeresolverbuilder1 = typeresolverbuilder.inclusion(as).typeProperty(jsontypeinfo.property());
        class1 = jsontypeinfo.defaultImpl();
        if (class1 != com/fasterxml/jackson/annotation/JsonTypeInfo$None)
        {
            typeresolverbuilder1 = typeresolverbuilder1.defaultImpl(class1);
        }
        return typeresolverbuilder1.typeIdVisibility(jsontypeinfo.visible());
    }

    protected boolean _isIgnorable(Annotated annotated)
    {
        JsonIgnore jsonignore = (JsonIgnore)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonIgnore);
        return jsonignore != null && jsonignore.value();
    }

    public VisibilityChecker findAutoDetectVisibility(AnnotatedClass annotatedclass, VisibilityChecker visibilitychecker)
    {
        JsonAutoDetect jsonautodetect = (JsonAutoDetect)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonAutoDetect);
        if (jsonautodetect == null)
        {
            return visibilitychecker;
        } else
        {
            return visibilitychecker.with(jsonautodetect);
        }
    }

    public Class findContentDeserializer(Annotated annotated)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.contentUsing();
            if (class1 != com/fasterxml/jackson/databind/JsonDeserializer$None)
            {
                return class1;
            }
        }
        return null;
    }

    public volatile Object findContentDeserializer(Annotated annotated)
    {
        return findContentDeserializer(annotated);
    }

    public Class findContentSerializer(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.contentUsing();
            if (class1 != com/fasterxml/jackson/databind/JsonSerializer$None)
            {
                return class1;
            }
        }
        return null;
    }

    public volatile Object findContentSerializer(Annotated annotated)
    {
        return findContentSerializer(annotated);
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedmember)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotatedmember.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.contentConverter();
            if (class1 != com/fasterxml/jackson/databind/util/Converter$None)
            {
                return class1;
            }
        }
        return null;
    }

    public Class findDeserializationContentType(Annotated annotated, JavaType javatype)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.contentAs();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public Object findDeserializationConverter(Annotated annotated)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.converter();
            if (class1 != com/fasterxml/jackson/databind/util/Converter$None)
            {
                return class1;
            }
        }
        return null;
    }

    public Class findDeserializationKeyType(Annotated annotated, JavaType javatype)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.keyAs();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public String findDeserializationName(AnnotatedField annotatedfield)
    {
        JsonProperty jsonproperty = (JsonProperty)annotatedfield.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (annotatedfield.hasAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize) || annotatedfield.hasAnnotation(com/fasterxml/jackson/annotation/JsonView) || annotatedfield.hasAnnotation(com/fasterxml/jackson/annotation/JsonBackReference) || annotatedfield.hasAnnotation(com/fasterxml/jackson/annotation/JsonManagedReference))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public String findDeserializationName(AnnotatedMethod annotatedmethod)
    {
        JsonSetter jsonsetter = (JsonSetter)annotatedmethod.getAnnotation(com/fasterxml/jackson/annotation/JsonSetter);
        if (jsonsetter != null)
        {
            return jsonsetter.value();
        }
        JsonProperty jsonproperty = (JsonProperty)annotatedmethod.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (annotatedmethod.hasAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize) || annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonView) || annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonBackReference) || annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonManagedReference))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public String findDeserializationName(AnnotatedParameter annotatedparameter)
    {
        if (annotatedparameter != null)
        {
            JsonProperty jsonproperty = (JsonProperty)annotatedparameter.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
            if (jsonproperty != null)
            {
                return jsonproperty.value();
            }
        }
        return null;
    }

    public Class findDeserializationType(Annotated annotated, JavaType javatype)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.as();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public Class findDeserializer(Annotated annotated)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.using();
            if (class1 != com/fasterxml/jackson/databind/JsonDeserializer$None)
            {
                return class1;
            }
        }
        return null;
    }

    public volatile Object findDeserializer(Annotated annotated)
    {
        return findDeserializer(annotated);
    }

    public Object findFilterId(AnnotatedClass annotatedclass)
    {
        JsonFilter jsonfilter = (JsonFilter)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonFilter);
        if (jsonfilter != null)
        {
            String s = jsonfilter.value();
            if (s.length() > 0)
            {
                return s;
            }
        }
        return null;
    }

    public com.fasterxml.jackson.annotation.JsonFormat.Value findFormat(Annotated annotated)
    {
        JsonFormat jsonformat = (JsonFormat)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonFormat);
        if (jsonformat == null)
        {
            return null;
        } else
        {
            return new com.fasterxml.jackson.annotation.JsonFormat.Value(jsonformat);
        }
    }

    public com.fasterxml.jackson.annotation.JsonFormat.Value findFormat(AnnotatedMember annotatedmember)
    {
        return findFormat(annotatedmember);
    }

    public Boolean findIgnoreUnknownProperties(AnnotatedClass annotatedclass)
    {
        JsonIgnoreProperties jsonignoreproperties = (JsonIgnoreProperties)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonIgnoreProperties);
        if (jsonignoreproperties == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(jsonignoreproperties.ignoreUnknown());
        }
    }

    public Object findInjectableValueId(AnnotatedMember annotatedmember)
    {
        JacksonInject jacksoninject = (JacksonInject)annotatedmember.getAnnotation(com/fasterxml/jackson/annotation/JacksonInject);
        String s;
        if (jacksoninject == null)
        {
            s = null;
        } else
        {
            s = jacksoninject.value();
            if (s.length() == 0)
            {
                if (!(annotatedmember instanceof AnnotatedMethod))
                {
                    return annotatedmember.getRawType().getName();
                }
                AnnotatedMethod annotatedmethod = (AnnotatedMethod)annotatedmember;
                if (annotatedmethod.getParameterCount() == 0)
                {
                    return annotatedmember.getRawType().getName();
                } else
                {
                    return annotatedmethod.getRawParameterType(0).getName();
                }
            }
        }
        return s;
    }

    public Class findKeyDeserializer(Annotated annotated)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize != null)
        {
            Class class1 = jsondeserialize.keyUsing();
            if (class1 != com/fasterxml/jackson/databind/KeyDeserializer$None)
            {
                return class1;
            }
        }
        return null;
    }

    public volatile Object findKeyDeserializer(Annotated annotated)
    {
        return findKeyDeserializer(annotated);
    }

    public Class findKeySerializer(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.keyUsing();
            if (class1 != com/fasterxml/jackson/databind/JsonSerializer$None)
            {
                return class1;
            }
        }
        return null;
    }

    public volatile Object findKeySerializer(Annotated annotated)
    {
        return findKeySerializer(annotated);
    }

    public PropertyName findNameForDeserialization(Annotated annotated)
    {
        String s;
label0:
        {
            PropertyName propertyname;
            if (annotated instanceof AnnotatedField)
            {
                s = findDeserializationName((AnnotatedField)annotated);
            } else
            if (annotated instanceof AnnotatedMethod)
            {
                s = findDeserializationName((AnnotatedMethod)annotated);
            } else
            if (annotated instanceof AnnotatedParameter)
            {
                s = findDeserializationName((AnnotatedParameter)annotated);
            } else
            {
                s = null;
            }
            propertyname = null;
            if (s != null)
            {
                if (s.length() != 0)
                {
                    break label0;
                }
                propertyname = PropertyName.USE_DEFAULT;
            }
            return propertyname;
        }
        return new PropertyName(s);
    }

    public PropertyName findNameForSerialization(Annotated annotated)
    {
        String s;
label0:
        {
            PropertyName propertyname;
            if (annotated instanceof AnnotatedField)
            {
                s = findSerializationName((AnnotatedField)annotated);
            } else
            if (annotated instanceof AnnotatedMethod)
            {
                s = findSerializationName((AnnotatedMethod)annotated);
            } else
            {
                s = null;
            }
            propertyname = null;
            if (s != null)
            {
                if (s.length() != 0)
                {
                    break label0;
                }
                propertyname = PropertyName.USE_DEFAULT;
            }
            return propertyname;
        }
        return new PropertyName(s);
    }

    public Object findNamingStrategy(AnnotatedClass annotatedclass)
    {
        JsonNaming jsonnaming = (JsonNaming)annotatedclass.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonNaming);
        if (jsonnaming == null)
        {
            return null;
        } else
        {
            return jsonnaming.value();
        }
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated)
    {
        JsonIdentityInfo jsonidentityinfo = (JsonIdentityInfo)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonIdentityInfo);
        if (jsonidentityinfo == null || jsonidentityinfo.generator() == com/fasterxml/jackson/annotation/ObjectIdGenerators$None)
        {
            return null;
        } else
        {
            return new ObjectIdInfo(jsonidentityinfo.property(), jsonidentityinfo.scope(), jsonidentityinfo.generator());
        }
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectidinfo)
    {
        JsonIdentityReference jsonidentityreference = (JsonIdentityReference)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonIdentityReference);
        if (jsonidentityreference != null)
        {
            objectidinfo = objectidinfo.withAlwaysAsId(jsonidentityreference.alwaysAsId());
        }
        return objectidinfo;
    }

    public Class findPOJOBuilder(AnnotatedClass annotatedclass)
    {
        JsonDeserialize jsondeserialize = (JsonDeserialize)annotatedclass.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonDeserialize);
        if (jsondeserialize == null || jsondeserialize.builder() == com/fasterxml/jackson/databind/annotation/NoClass)
        {
            return null;
        } else
        {
            return jsondeserialize.builder();
        }
    }

    public com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedclass)
    {
        JsonPOJOBuilder jsonpojobuilder = (JsonPOJOBuilder)annotatedclass.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonPOJOBuilder);
        if (jsonpojobuilder == null)
        {
            return null;
        } else
        {
            return new com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value(jsonpojobuilder);
        }
    }

    public String[] findPropertiesToIgnore(Annotated annotated)
    {
        JsonIgnoreProperties jsonignoreproperties = (JsonIgnoreProperties)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonIgnoreProperties);
        if (jsonignoreproperties == null)
        {
            return null;
        } else
        {
            return jsonignoreproperties.value();
        }
    }

    public TypeResolverBuilder findPropertyContentTypeResolver(MapperConfig mapperconfig, AnnotatedMember annotatedmember, JavaType javatype)
    {
        if (!javatype.isContainerType())
        {
            throw new IllegalArgumentException((new StringBuilder("Must call method with a container type (got ")).append(javatype).append(")").toString());
        } else
        {
            return _findTypeResolver(mapperconfig, annotatedmember, javatype);
        }
    }

    public TypeResolverBuilder findPropertyTypeResolver(MapperConfig mapperconfig, AnnotatedMember annotatedmember, JavaType javatype)
    {
        if (javatype.isContainerType())
        {
            return null;
        } else
        {
            return _findTypeResolver(mapperconfig, annotatedmember, javatype);
        }
    }

    public com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty findReferenceType(AnnotatedMember annotatedmember)
    {
        JsonManagedReference jsonmanagedreference = (JsonManagedReference)annotatedmember.getAnnotation(com/fasterxml/jackson/annotation/JsonManagedReference);
        if (jsonmanagedreference != null)
        {
            return com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty.managed(jsonmanagedreference.value());
        }
        JsonBackReference jsonbackreference = (JsonBackReference)annotatedmember.getAnnotation(com/fasterxml/jackson/annotation/JsonBackReference);
        if (jsonbackreference != null)
        {
            return com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty.back(jsonbackreference.value());
        } else
        {
            return null;
        }
    }

    public PropertyName findRootName(AnnotatedClass annotatedclass)
    {
        JsonRootName jsonrootname = (JsonRootName)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonRootName);
        if (jsonrootname == null)
        {
            return null;
        } else
        {
            return new PropertyName(jsonrootname.value());
        }
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedmember)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotatedmember.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.contentConverter();
            if (class1 != com/fasterxml/jackson/databind/util/Converter$None)
            {
                return class1;
            }
        }
        return null;
    }

    public Class findSerializationContentType(Annotated annotated, JavaType javatype)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.contentAs();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public Object findSerializationConverter(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.converter();
            if (class1 != com/fasterxml/jackson/databind/util/Converter$None)
            {
                return class1;
            }
        }
        return null;
    }

    public com.fasterxml.jackson.annotation.JsonInclude.Include findSerializationInclusion(Annotated annotated, com.fasterxml.jackson.annotation.JsonInclude.Include include)
    {
        JsonInclude jsoninclude = (JsonInclude)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonInclude);
        if (jsoninclude != null)
        {
            include = jsoninclude.value();
        } else
        {
            JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
            if (jsonserialize != null)
            {
                com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion inclusion = jsonserialize.include();
                switch (_cls1..SwitchMap.com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion[inclusion.ordinal()])
                {
                default:
                    return include;

                case 1: // '\001'
                    return com.fasterxml.jackson.annotation.JsonInclude.Include.ALWAYS;

                case 2: // '\002'
                    return com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;

                case 3: // '\003'
                    return com.fasterxml.jackson.annotation.JsonInclude.Include.NON_DEFAULT;

                case 4: // '\004'
                    return com.fasterxml.jackson.annotation.JsonInclude.Include.NON_EMPTY;
                }
            }
        }
        return include;
    }

    public Class findSerializationKeyType(Annotated annotated, JavaType javatype)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.keyAs();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public String findSerializationName(AnnotatedField annotatedfield)
    {
        JsonProperty jsonproperty = (JsonProperty)annotatedfield.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (annotatedfield.hasAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize) || annotatedfield.hasAnnotation(com/fasterxml/jackson/annotation/JsonView))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public String findSerializationName(AnnotatedMethod annotatedmethod)
    {
        JsonGetter jsongetter = (JsonGetter)annotatedmethod.getAnnotation(com/fasterxml/jackson/annotation/JsonGetter);
        if (jsongetter != null)
        {
            return jsongetter.value();
        }
        JsonProperty jsonproperty = (JsonProperty)annotatedmethod.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (annotatedmethod.hasAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize) || annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonView))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedclass)
    {
        JsonPropertyOrder jsonpropertyorder = (JsonPropertyOrder)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonPropertyOrder);
        if (jsonpropertyorder == null)
        {
            return null;
        } else
        {
            return jsonpropertyorder.value();
        }
    }

    public Boolean findSerializationSortAlphabetically(AnnotatedClass annotatedclass)
    {
        JsonPropertyOrder jsonpropertyorder = (JsonPropertyOrder)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonPropertyOrder);
        if (jsonpropertyorder == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(jsonpropertyorder.alphabetic());
        }
    }

    public Class findSerializationType(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.as();
            if (class1 != com/fasterxml/jackson/databind/annotation/NoClass)
            {
                return class1;
            }
        }
        return null;
    }

    public com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing findSerializationTyping(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize == null)
        {
            return null;
        } else
        {
            return jsonserialize.typing();
        }
    }

    public Object findSerializer(Annotated annotated)
    {
        JsonSerialize jsonserialize = (JsonSerialize)annotated.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonSerialize);
        if (jsonserialize != null)
        {
            Class class1 = jsonserialize.using();
            if (class1 != com/fasterxml/jackson/databind/JsonSerializer$None)
            {
                return class1;
            }
        }
        JsonRawValue jsonrawvalue = (JsonRawValue)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonRawValue);
        if (jsonrawvalue != null && jsonrawvalue.value())
        {
            return new RawSerializer(annotated.getRawType());
        } else
        {
            return null;
        }
    }

    public List findSubtypes(Annotated annotated)
    {
        JsonSubTypes jsonsubtypes = (JsonSubTypes)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonSubTypes);
        Object obj;
        if (jsonsubtypes == null)
        {
            obj = null;
        } else
        {
            com.fasterxml.jackson.annotation.JsonSubTypes.Type atype[] = jsonsubtypes.value();
            obj = new ArrayList(atype.length);
            int i = atype.length;
            int j = 0;
            while (j < i) 
            {
                com.fasterxml.jackson.annotation.JsonSubTypes.Type type = atype[j];
                ((ArrayList) (obj)).add(new NamedType(type.value(), type.name()));
                j++;
            }
        }
        return ((List) (obj));
    }

    public String findTypeName(AnnotatedClass annotatedclass)
    {
        JsonTypeName jsontypename = (JsonTypeName)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonTypeName);
        if (jsontypename == null)
        {
            return null;
        } else
        {
            return jsontypename.value();
        }
    }

    public TypeResolverBuilder findTypeResolver(MapperConfig mapperconfig, AnnotatedClass annotatedclass, JavaType javatype)
    {
        return _findTypeResolver(mapperconfig, annotatedclass, javatype);
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedmember)
    {
        JsonUnwrapped jsonunwrapped = (JsonUnwrapped)annotatedmember.getAnnotation(com/fasterxml/jackson/annotation/JsonUnwrapped);
        if (jsonunwrapped == null || !jsonunwrapped.enabled())
        {
            return null;
        } else
        {
            return NameTransformer.simpleTransformer(jsonunwrapped.prefix(), jsonunwrapped.suffix());
        }
    }

    public Object findValueInstantiator(AnnotatedClass annotatedclass)
    {
        JsonValueInstantiator jsonvalueinstantiator = (JsonValueInstantiator)annotatedclass.getAnnotation(com/fasterxml/jackson/databind/annotation/JsonValueInstantiator);
        if (jsonvalueinstantiator == null)
        {
            return null;
        } else
        {
            return jsonvalueinstantiator.value();
        }
    }

    public Class[] findViews(Annotated annotated)
    {
        JsonView jsonview = (JsonView)annotated.getAnnotation(com/fasterxml/jackson/annotation/JsonView);
        if (jsonview == null)
        {
            return null;
        } else
        {
            return jsonview.value();
        }
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedmethod)
    {
        return annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonAnyGetter);
    }

    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedmethod)
    {
        return annotatedmethod.hasAnnotation(com/fasterxml/jackson/annotation/JsonAnySetter);
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedmethod)
    {
        JsonValue jsonvalue = (JsonValue)annotatedmethod.getAnnotation(com/fasterxml/jackson/annotation/JsonValue);
        return jsonvalue != null && jsonvalue.value();
    }

    public boolean hasCreatorAnnotation(Annotated annotated)
    {
        return annotated.hasAnnotation(com/fasterxml/jackson/annotation/JsonCreator);
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedmember)
    {
        return _isIgnorable(annotatedmember);
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedmember)
    {
        JsonProperty jsonproperty = (JsonProperty)annotatedmember.getAnnotation(com/fasterxml/jackson/annotation/JsonProperty);
        if (jsonproperty != null)
        {
            return Boolean.valueOf(jsonproperty.required());
        } else
        {
            return null;
        }
    }

    public boolean isAnnotationBundle(Annotation annotation)
    {
        return annotation.annotationType().getAnnotation(com/fasterxml/jackson/annotation/JacksonAnnotationsInside) != null;
    }

    public boolean isHandled(Annotation annotation)
    {
        return annotation.annotationType().getAnnotation(com/fasterxml/jackson/annotation/JacksonAnnotation) != null;
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedclass)
    {
        JsonIgnoreType jsonignoretype = (JsonIgnoreType)annotatedclass.getAnnotation(com/fasterxml/jackson/annotation/JsonIgnoreType);
        if (jsonignoretype == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(jsonignoretype.value());
        }
    }

    public Boolean isTypeId(AnnotatedMember annotatedmember)
    {
        return Boolean.valueOf(annotatedmember.hasAnnotation(com/fasterxml/jackson/annotation/JsonTypeId));
    }

    public w version()
    {
        return PackageVersion.VERSION;
    }

    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion = new int[com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion.ALWAYS.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion.NON_NULL.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion.NON_DEFAULT.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion[com.fasterxml.jackson.databind.annotation.JsonSerialize.Inclusion.NON_EMPTY.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3)
            {
                return;
            }
        }
    }

}
