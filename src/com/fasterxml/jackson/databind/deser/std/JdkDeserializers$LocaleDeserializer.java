// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationContext;
import java.util.Locale;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            FromStringDeserializer

public class  extends FromStringDeserializer
{

    public static final _deserialize instance = new <init>();

    protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
    {
        return _deserialize(s, deserializationcontext);
    }

    protected Locale _deserialize(String s, DeserializationContext deserializationcontext)
    {
        int i = s.indexOf('_');
        if (i < 0)
        {
            return new Locale(s);
        }
        String s1 = s.substring(0, i);
        String s2 = s.substring(i + 1);
        int j = s2.indexOf('_');
        if (j < 0)
        {
            return new Locale(s1, s2);
        } else
        {
            return new Locale(s1, s2.substring(0, j), s2.substring(j + 1));
        }
    }


    public ()
    {
        super(java/util/Locale);
    }
}
