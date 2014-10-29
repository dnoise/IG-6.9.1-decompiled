// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import java.io.UnsupportedEncodingException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineException

class targetInfo extends targetInfo
{

    protected byte challenge[];
    protected int flags;
    protected String target;
    protected byte targetInfo[];

    byte[] getChallenge()
    {
        return challenge;
    }

    int getFlags()
    {
        return flags;
    }

    String getTarget()
    {
        return target;
    }

    byte[] getTargetInfo()
    {
        return targetInfo;
    }

    (String s)
    {
        super(s, 2);
        challenge = new byte[8];
        readBytes(challenge, 24);
        flags = readULong(20);
        if ((1 & flags) == 0)
        {
            throw new NTLMEngineException((new StringBuilder("NTLM type 2 message has flags that make no sense: ")).append(Integer.toString(flags)).toString());
        }
        target = null;
        if (getMessageLength() >= 20)
        {
            byte abyte1[] = readSecurityBuffer(12);
            byte abyte0[];
            if (abyte1.length != 0)
            {
                try
                {
                    target = new String(abyte1, "UnicodeLittleUnmarked");
                }
                catch (UnsupportedEncodingException unsupportedencodingexception)
                {
                    throw new NTLMEngineException(unsupportedencodingexception.getMessage(), unsupportedencodingexception);
                }
            }
        }
        targetInfo = null;
        if (getMessageLength() >= 48)
        {
            abyte0 = readSecurityBuffer(40);
            if (abyte0.length != 0)
            {
                targetInfo = abyte0;
            }
        }
    }
}
