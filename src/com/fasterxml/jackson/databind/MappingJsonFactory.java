// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.b.b;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.s;

// Referenced classes of package com.fasterxml.jackson.databind:
//            ObjectMapper

public class MappingJsonFactory extends e
{

    private static final long serialVersionUID = 0xa268216511ccb687L;

    public MappingJsonFactory()
    {
        this(null);
    }

    public MappingJsonFactory(ObjectMapper objectmapper)
    {
        super(objectmapper);
        if (objectmapper == null)
        {
            setCodec(new ObjectMapper(this));
        }
    }

    public e copy()
    {
        _checkInvalidCopy(com/fasterxml/jackson/databind/MappingJsonFactory);
        return new MappingJsonFactory(null);
    }

    public volatile s getCodec()
    {
        return getCodec();
    }

    public final ObjectMapper getCodec()
    {
        return (ObjectMapper)_objectCodec;
    }

    public String getFormatName()
    {
        return "JSON";
    }

    public int hasFormat$2764b24c(b b)
    {
        if (getClass() == com/fasterxml/jackson/databind/MappingJsonFactory)
        {
            return hasJSONFormat$2764b24c(b);
        } else
        {
            return 0;
        }
    }
}
