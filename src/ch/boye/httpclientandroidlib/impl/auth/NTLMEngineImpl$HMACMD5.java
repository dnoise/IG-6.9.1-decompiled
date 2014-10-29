// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import java.security.MessageDigest;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineException

class opad
{

    protected byte ipad[];
    protected MessageDigest md5;
    protected byte opad[];

    byte[] getOutput()
    {
        byte abyte0[] = md5.digest();
        md5.update(opad);
        return md5.digest(abyte0);
    }

    void update(byte abyte0[])
    {
        md5.update(abyte0);
    }

    void update(byte abyte0[], int i, int j)
    {
        md5.update(abyte0, i, j);
    }

    (byte abyte0[])
    {
_L2:
        int k;
        for (; k < 64; k++)
        {
            ipad[k] = 54;
            opad[k] = 92;
        }

        md5.reset();
        md5.update(ipad);
        return;
        super();
        int i;
        int j;
        try
        {
            md5 = MessageDigest.getInstance("MD5");
        }
        catch (Exception exception)
        {
            throw new NTLMEngineException((new StringBuilder("Error getting md5 message digest implementation: ")).append(exception.getMessage()).toString(), exception);
        }
        ipad = new byte[64];
        opad = new byte[64];
        i = abyte0.length;
        if (i > 64)
        {
            md5.update(abyte0);
            abyte0 = md5.digest();
            i = abyte0.length;
        }
        for (j = 0; j < i; j++)
        {
            ipad[j] = (byte)(0x36 ^ abyte0[j]);
            opad[j] = (byte)(0x5c ^ abyte0[j]);
        }

        k = j;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
