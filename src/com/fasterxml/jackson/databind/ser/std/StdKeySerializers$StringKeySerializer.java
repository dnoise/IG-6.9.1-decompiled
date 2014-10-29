// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class  extends StdSerializer
{

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((String)obj, h1, serializerprovider);
    }

    public void serialize(String s, h h1, SerializerProvider serializerprovider)
    {
        h1.writeFieldName(s);
    }

    public ()
    {
        super(java/lang/String);
    }
}
