// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;

// Referenced classes of package com.fasterxml.jackson.databind.jsonFormatVisitors:
//            JsonFormatVisitorWithSerializerProvider, JsonAnyFormatVisitor, JsonArrayFormatVisitor, JsonBooleanFormatVisitor, 
//            JsonIntegerFormatVisitor, JsonMapFormatVisitor, JsonNullFormatVisitor, JsonNumberFormatVisitor, 
//            JsonObjectFormatVisitor, JsonStringFormatVisitor

public interface JsonFormatVisitorWrapper
    extends JsonFormatVisitorWithSerializerProvider
{

    public abstract JsonAnyFormatVisitor expectAnyFormat(JavaType javatype);

    public abstract JsonArrayFormatVisitor expectArrayFormat(JavaType javatype);

    public abstract JsonBooleanFormatVisitor expectBooleanFormat(JavaType javatype);

    public abstract JsonIntegerFormatVisitor expectIntegerFormat(JavaType javatype);

    public abstract JsonMapFormatVisitor expectMapFormat(JavaType javatype);

    public abstract JsonNullFormatVisitor expectNullFormat(JavaType javatype);

    public abstract JsonNumberFormatVisitor expectNumberFormat(JavaType javatype);

    public abstract JsonObjectFormatVisitor expectObjectFormat(JavaType javatype);

    public abstract JsonStringFormatVisitor expectStringFormat(JavaType javatype);
}
