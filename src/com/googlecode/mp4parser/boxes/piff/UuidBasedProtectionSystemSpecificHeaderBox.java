// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.c.b;
import com.googlecode.mp4parser.c.d;
import java.nio.ByteBuffer;
import java.util.UUID;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            f

public class UuidBasedProtectionSystemSpecificHeaderBox extends AbstractFullBox
{

    public static byte USER_TYPE[] = {
        -48, -118, 79, 24, 16, -13, 74, -126, -74, -56, 
        50, -40, -85, -95, -125, -45
    };
    f protectionSpecificHeader;
    UUID systemId;

    public UuidBasedProtectionSystemSpecificHeaderBox()
    {
        super("uuid", USER_TYPE);
    }

    protected void _parseDetails(ByteBuffer bytebuffer)
    {
        parseVersionAndFlags(bytebuffer);
        byte abyte0[] = new byte[16];
        bytebuffer.get(abyte0);
        systemId = d.a(abyte0);
        b.a(e.b(bytebuffer));
        protectionSpecificHeader = f.a(systemId, bytebuffer);
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        writeVersionAndFlags(bytebuffer);
        g.a(bytebuffer, systemId.getMostSignificantBits());
        g.a(bytebuffer, systemId.getLeastSignificantBits());
        ByteBuffer bytebuffer1 = protectionSpecificHeader.a();
        bytebuffer1.rewind();
        g.b(bytebuffer, bytebuffer1.limit());
        bytebuffer.put(bytebuffer1);
    }

    protected long getContentSize()
    {
        return (long)(24 + protectionSpecificHeader.a().limit());
    }

    public f getProtectionSpecificHeader()
    {
        return protectionSpecificHeader;
    }

    public String getProtectionSpecificHeaderString()
    {
        return protectionSpecificHeader.toString();
    }

    public UUID getSystemId()
    {
        return systemId;
    }

    public String getSystemIdString()
    {
        return systemId.toString();
    }

    public byte[] getUserType()
    {
        return USER_TYPE;
    }

    public void setProtectionSpecificHeader(f f1)
    {
        protectionSpecificHeader = f1;
    }

    public void setSystemId(UUID uuid)
    {
        systemId = uuid;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("UuidBasedProtectionSystemSpecificHeaderBox");
        stringbuilder.append("{systemId=").append(systemId.toString());
        stringbuilder.append(", dataSize=").append(protectionSpecificHeader.a().limit());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
