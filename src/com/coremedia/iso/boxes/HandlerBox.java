// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class HandlerBox extends AbstractFullBox
{

    public static final String TYPE = "hdlr";
    public static final Map readableTypes;
    private long a;
    private long b;
    private long c;
    private String handlerType;
    private String name;
    private long shouldBeZeroButAppleWritesHereSomeValue;
    private boolean zeroTerm;

    public HandlerBox()
    {
        super("hdlr");
        name = null;
        zeroTerm = true;
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        shouldBeZeroButAppleWritesHereSomeValue = e.b(bytebuffer);
        handlerType = e.l(bytebuffer);
        a = e.b(bytebuffer);
        b = e.b(bytebuffer);
        c = e.b(bytebuffer);
        if (bytebuffer.remaining() > 0)
        {
            name = e.a(bytebuffer, bytebuffer.remaining());
            if (name.endsWith("\0"))
            {
                name = name.substring(0, -1 + name.length());
                zeroTerm = true;
                return;
            } else
            {
                zeroTerm = false;
                return;
            }
        } else
        {
            zeroTerm = false;
            return;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.b(bytebuffer, shouldBeZeroButAppleWritesHereSomeValue);
        bytebuffer.put(IsoFile.fourCCtoBytes(handlerType));
        g.b(bytebuffer, a);
        g.b(bytebuffer, b);
        g.b(bytebuffer, c);
        if (name != null)
        {
            bytebuffer.put(k.a(name));
        }
        if (zeroTerm)
        {
            bytebuffer.put((byte)0);
        }
    }

    protected long getContentSize()
    {
        if (zeroTerm)
        {
            return (long)(25 + k.b(name));
        } else
        {
            return (long)(24 + k.b(name));
        }
    }

    public String getHandlerType()
    {
        return handlerType;
    }

    public String getHumanReadableTrackType()
    {
        if (readableTypes.get(handlerType) != null)
        {
            return (String)readableTypes.get(handlerType);
        } else
        {
            return "Unknown Handler Type";
        }
    }

    public String getName()
    {
        return name;
    }

    public void setHandlerType(String s)
    {
        handlerType = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public String toString()
    {
        return (new StringBuilder("HandlerBox[handlerType=")).append(getHandlerType()).append(";name=").append(getName()).append("]").toString();
    }

    static 
    {
        HashMap hashmap = new HashMap();
        hashmap.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashmap.put("mdir", "Apple Meta Data iTunes Reader");
        hashmap.put("mp7b", "MPEG-7 binary XML");
        hashmap.put("mp7t", "MPEG-7 XML");
        hashmap.put("vide", "Video Track");
        hashmap.put("soun", "Sound Track");
        hashmap.put("hint", "Hint Track");
        hashmap.put("appl", "Apple specific");
        hashmap.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        readableTypes = Collections.unmodifiableMap(hashmap);
    }
}
