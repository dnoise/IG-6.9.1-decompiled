// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import java.io.UnsupportedEncodingException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineException, NTLMEngineImpl

class  extends 
{

    protected byte domainBytes[];
    protected byte hostBytes[];
    protected byte lmResp[];
    protected byte ntResp[];
    protected int type2Flags;
    protected byte userBytes[];

    String getResponse()
    {
        int i = ntResp.length;
        int j = lmResp.length;
        int k = domainBytes.length;
        int l = hostBytes.length;
        int i1 = userBytes.length;
        int j1 = j + 64;
        int k1 = j1 + i;
        int l1 = k1 + k;
        int i2 = l1 + i1;
        int j2 = 0 + (i2 + l);
        prepareResponse(j2, 3);
        addUShort(j);
        addUShort(j);
        addULong(64);
        addUShort(i);
        addUShort(i);
        addULong(j1);
        addUShort(k);
        addUShort(k);
        addULong(k1);
        addUShort(i1);
        addUShort(i1);
        addULong(l1);
        addUShort(l);
        addUShort(l);
        addULong(i2);
        addULong(0);
        addULong(j2);
        addULong(0x20000205 | 0x80000 & type2Flags | 0x10 & type2Flags | 0x20 & type2Flags | 0x40000000 & type2Flags | 0x8000 & type2Flags);
        addBytes(lmResp);
        addBytes(ntResp);
        addBytes(domainBytes);
        addBytes(userBytes);
        addBytes(hostBytes);
        return super.etResponse();
    }

    (String s, String s1, String s2, String s3, byte abyte0[], int i, String s4, 
            byte abyte1[])
    {
        String s5;
        String s6;
        type2Flags = i;
        s5 = NTLMEngineImpl.access$400(s1);
        s6 = NTLMEngineImpl.access$500(s);
        if (abyte1 == null || s4 == null) goto _L2; else goto _L1
_L1:
        try
        {
            byte abyte3[] = NTLMEngineImpl.access$600();
            ntResp = NTLMEngineImpl.getNTLMv2Response(s4, s2, s3, abyte0, abyte3, abyte1);
            lmResp = NTLMEngineImpl.getLMv2Response(s4, s2, s3, abyte0, abyte3);
        }
        catch (NTLMEngineException ntlmengineexception)
        {
            ntResp = new byte[0];
            lmResp = NTLMEngineImpl.getLMResponse(s3, abyte0);
        }
_L3:
        try
        {
            domainBytes = s6.toUpperCase().getBytes("UnicodeLittleUnmarked");
            hostBytes = s5.getBytes("UnicodeLittleUnmarked");
            userBytes = s2.getBytes("UnicodeLittleUnmarked");
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new NTLMEngineException((new StringBuilder("Unicode not supported: ")).append(unsupportedencodingexception.getMessage()).toString(), unsupportedencodingexception);
        }
_L2:
        if ((0x80000 & i) == 0)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        byte abyte2[] = NTLMEngineImpl.access$700();
        ntResp = NTLMEngineImpl.getNTLM2SessionResponse(s3, abyte0, abyte2);
        lmResp = abyte2;
        break MISSING_BLOCK_LABEL_71;
        ntResp = NTLMEngineImpl.getNTLMResponse(s3, abyte0);
        lmResp = NTLMEngineImpl.getLMResponse(s3, abyte0);
          goto _L3
    }
}
