// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonFormatVisitorWithSerializerProvider, JsonFormatTypes, JsonFormatVisitable

public interface JsonArrayFormatVisitor
    extends JsonFormatVisitorWithSerializerProvider
{

    public abstract void itemsFormat(JsonFormatTypes jsonformattypes);

    public abstract void itemsFormat(JsonFormatVisitable jsonformatvisitable, JavaType javatype);
}
