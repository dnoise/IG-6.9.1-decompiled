// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.util.Calendar;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdSerializer

public class  extends StdSerializer
{

    protected static final JsonSerializer instance = new <init>();

    public volatile void serialize(Object obj, h h, SerializerProvider serializerprovider)
    {
        serialize((Calendar)obj, h, serializerprovider);
    }

    public void serialize(Calendar calendar, h h, SerializerProvider serializerprovider)
    {
        serializerprovider.defaultSerializeDateKey(calendar.getTimeInMillis(), h);
    }


    public ()
    {
        super(java/util/Calendar);
    }
}
