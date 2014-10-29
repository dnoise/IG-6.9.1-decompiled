// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import java.nio.ByteBuffer;

// Referenced classes of package com.coremedia.iso.boxes.sampleentry:
//            SampleEntry

public class SubtitleSampleEntry extends SampleEntry
{

    public static final String TYPE1 = "stpp";
    public static final String TYPE_ENCRYPTED = "";
    private String imageMimeType;
    private String namespace;
    private String schemaLocation;

    public SubtitleSampleEntry(String s)
    {
        super(s);
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        _parseReservedAndDataReferenceIndex(bytebuffer);
        namespace = e.g(bytebuffer);
        schemaLocation = e.g(bytebuffer);
        imageMimeType = e.g(bytebuffer);
        _parseChildBoxes(bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        _writeReservedAndDataReferenceIndex(bytebuffer);
        g.b(bytebuffer, namespace);
        g.b(bytebuffer, schemaLocation);
        g.b(bytebuffer, imageMimeType);
    }

    protected long getContentSize()
    {
        return (long)(3 + (8 + namespace.length() + schemaLocation.length() + imageMimeType.length()));
    }

    public String getImageMimeType()
    {
        return imageMimeType;
    }

    public String getNamespace()
    {
        return namespace;
    }

    public String getSchemaLocation()
    {
        return schemaLocation;
    }

    public void setImageMimeType(String s)
    {
        imageMimeType = s;
    }

    public void setNamespace(String s)
    {
        namespace = s;
    }

    public void setSchemaLocation(String s)
    {
        schemaLocation = s;
    }
}
