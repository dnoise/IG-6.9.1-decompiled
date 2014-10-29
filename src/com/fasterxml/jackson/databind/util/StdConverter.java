// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

// Referenced classes of package com.fasterxml.jackson.databind.util:
//            Converter

public abstract class StdConverter
    implements Converter
{

    public StdConverter()
    {
    }

    public abstract Object convert(Object obj);

    public JavaType getInputType(TypeFactory typefactory)
    {
        JavaType ajavatype[] = typefactory.findTypeParameters(getClass(), com/fasterxml/jackson/databind/util/Converter);
        if (ajavatype == null || ajavatype.length < 2)
        {
            throw new IllegalStateException((new StringBuilder("Can not find OUT type parameter for Converter of type ")).append(getClass().getName()).toString());
        } else
        {
            return ajavatype[0];
        }
    }

    public JavaType getOutputType(TypeFactory typefactory)
    {
        JavaType ajavatype[] = typefactory.findTypeParameters(getClass(), com/fasterxml/jackson/databind/util/Converter);
        if (ajavatype == null || ajavatype.length < 2)
        {
            throw new IllegalStateException((new StringBuilder("Can not find OUT type parameter for Converter of type ")).append(getClass().getName()).toString());
        } else
        {
            return ajavatype[1];
        }
    }
}
