// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonFormatVisitorWithSerializerProvider, JsonFormatVisitable

public interface JsonObjectFormatVisitor
    extends JsonFormatVisitorWithSerializerProvider
{

    public abstract void optionalProperty(BeanProperty beanproperty);

    public abstract void optionalProperty(String s);

    public abstract void optionalProperty(String s, JsonFormatVisitable jsonformatvisitable, JavaType javatype);

    public abstract void property(BeanProperty beanproperty);

    public abstract void property(String s);

    public abstract void property(String s, JsonFormatVisitable jsonformatvisitable, JavaType javatype);
}
