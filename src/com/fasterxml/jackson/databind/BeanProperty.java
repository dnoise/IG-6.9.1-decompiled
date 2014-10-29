// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.Named;
import java.lang.annotation.Annotation;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JavaType, PropertyName

public interface BeanProperty
    extends Named
{

    public abstract void depositSchemaProperty(JsonObjectFormatVisitor jsonobjectformatvisitor);

    public abstract Annotation getAnnotation(Class class1);

    public abstract Annotation getContextAnnotation(Class class1);

    public abstract AnnotatedMember getMember();

    public abstract String getName();

    public abstract JavaType getType();

    public abstract PropertyName getWrapperName();

    public abstract boolean isRequired();
}
