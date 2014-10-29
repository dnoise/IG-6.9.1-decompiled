// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.util.ClassUtil;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class ClassDeserializer extends StdScalarDeserializer
{

    public static final ClassDeserializer instance = new ClassDeserializer();
    private static final long serialVersionUID = 1L;

    public ClassDeserializer()
    {
        super(java/lang/Class);
    }

    public Class deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            Class class1;
            try
            {
                class1 = deserializationcontext.findClass(s);
            }
            catch (Exception exception)
            {
                throw deserializationcontext.instantiationException(_valueClass, ClassUtil.getRootCause(exception));
            }
            return class1;
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

}
