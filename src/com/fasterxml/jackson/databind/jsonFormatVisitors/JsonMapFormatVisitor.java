// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonFormatVisitorWithSerializerProvider, JsonFormatVisitable

public interface JsonMapFormatVisitor
    extends JsonFormatVisitorWithSerializerProvider
{

    public abstract void keyFormat(JsonFormatVisitable jsonformatvisitable, JavaType javatype);

    public abstract void valueFormat(JsonFormatVisitable jsonformatvisitable, JavaType javatype);
}
