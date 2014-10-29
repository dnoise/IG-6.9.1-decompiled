// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import java.io.UnsupportedEncodingException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineImpl, NTLMEngineException

class domainBytes extends domainBytes
{

    protected byte domainBytes[];
    protected byte hostBytes[];

    String getResponse()
    {
        prepareResponse(32 + hostBytes.length + domainBytes.length, 1);
        addULong(0x20080235);
        addUShort(domainBytes.length);
        addUShort(domainBytes.length);
        addULong(32 + hostBytes.length);
        addUShort(hostBytes.length);
        addUShort(hostBytes.length);
        addULong(32);
        addBytes(hostBytes);
        addBytes(domainBytes);
        return super.etResponse();
    }

    (String s, String s1)
    {
        try
        {
            String s2 = NTLMEngineImpl.access$400(s1);
            String s3 = NTLMEngineImpl.access$500(s);
            hostBytes = s2.getBytes("UnicodeLittleUnmarked");
            domainBytes = s3.toUpperCase().getBytes("UnicodeLittleUnmarked");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new NTLMEngineException((new StringBuilder("Unicode unsupported: ")).append(unsupportedencodingexception.getMessage()).toString(), unsupportedencodingexception);
        }
    }
}
