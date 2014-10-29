// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Method;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class _inputType extends StdScalarDeserializer
{

    private static final long serialVersionUID = 0x941930f8f421ec66L;
    protected final Class _enumClass;
    protected final Method _factory;
    protected final Class _inputType;

    public Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        Object obj;
        Object obj1;
        if (_inputType == null)
        {
            obj = l1.getText();
        } else
        if (_inputType == java/lang/Integer)
        {
            obj = Integer.valueOf(l1.getValueAsInt());
        } else
        if (_inputType == java/lang/Long)
        {
            obj = Long.valueOf(l1.getValueAsLong());
        } else
        {
            throw deserializationcontext.mappingException(_enumClass);
        }
        try
        {
            obj1 = _factory.invoke(_enumClass, new Object[] {
                obj
            });
        }
        catch (Exception exception)
        {
            ClassUtil.unwrapAndThrowAsIAE(exception);
            return null;
        }
        return obj1;
    }

    public (Class class1, AnnotatedMethod annotatedmethod, Class class2)
    {
        super(java/lang/Enum);
        _enumClass = class1;
        _factory = annotatedmethod.getAnnotated();
        _inputType = class2;
    }
}
