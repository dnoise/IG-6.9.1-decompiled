// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationContext;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.util.UUID;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            FromStringDeserializer

public class  extends FromStringDeserializer
{

    public static final eEmbedded instance = new <init>();

    protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
    {
        return _deserialize(s, deserializationcontext);
    }

    protected UUID _deserialize(String s, DeserializationContext deserializationcontext)
    {
        return UUID.fromString(s);
    }

    protected volatile Object _deserializeEmbedded(Object obj, DeserializationContext deserializationcontext)
    {
        return _deserializeEmbedded(obj, deserializationcontext);
    }

    protected UUID _deserializeEmbedded(Object obj, DeserializationContext deserializationcontext)
    {
        if (obj instanceof byte[])
        {
            byte abyte0[] = (byte[])(byte[])obj;
            if (abyte0.length != 16)
            {
                deserializationcontext.mappingException((new StringBuilder("Can only construct UUIDs from 16 byte arrays; got ")).append(abyte0.length).append(" bytes").toString());
            }
            DataInputStream datainputstream = new DataInputStream(new ByteArrayInputStream(abyte0));
            return new UUID(datainputstream.readLong(), datainputstream.readLong());
        } else
        {
            super._deserializeEmbedded(obj, deserializationcontext);
            return null;
        }
    }


    public ()
    {
        super(java/util/UUID);
    }
}
