// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import ch.boye.httpclientandroidlib.androidextra.Base64;
import ch.boye.httpclientandroidlib.util.EncodingUtils;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineImpl, NTLMEngineException

class messageContents
{

    private int currentOutputPosition;
    private byte messageContents[];

    protected void addByte(byte byte0)
    {
        messageContents[currentOutputPosition] = byte0;
        currentOutputPosition = 1 + currentOutputPosition;
    }

    protected void addBytes(byte abyte0[])
    {
        for (int i = 0; i < abyte0.length; i++)
        {
            messageContents[currentOutputPosition] = abyte0[i];
            currentOutputPosition = 1 + currentOutputPosition;
        }

    }

    protected void addULong(int i)
    {
        addByte((byte)(i & 0xff));
        addByte((byte)(0xff & i >> 8));
        addByte((byte)(0xff & i >> 16));
        addByte((byte)(0xff & i >> 24));
    }

    protected void addUShort(int i)
    {
        addByte((byte)(i & 0xff));
        addByte((byte)(0xff & i >> 8));
    }

    protected int getMessageLength()
    {
        return currentOutputPosition;
    }

    protected int getPreambleLength()
    {
        return 4 + NTLMEngineImpl.access$000().length;
    }

    String getResponse()
    {
        byte abyte0[];
        if (messageContents.length > currentOutputPosition)
        {
            byte abyte1[] = new byte[currentOutputPosition];
            for (int i = 0; i < currentOutputPosition; i++)
            {
                abyte1[i] = messageContents[i];
            }

            abyte0 = abyte1;
        } else
        {
            abyte0 = messageContents;
        }
        return EncodingUtils.getAsciiString(Base64.encode(abyte0, 2));
    }

    protected void prepareResponse(int i, int j)
    {
        messageContents = new byte[i];
        currentOutputPosition = 0;
        addBytes(NTLMEngineImpl.access$000());
        addULong(j);
    }

    protected byte readByte(int i)
    {
        if (messageContents.length < i + 1)
        {
            throw new NTLMEngineException("NTLM: Message too short");
        } else
        {
            return messageContents[i];
        }
    }

    protected void readBytes(byte abyte0[], int i)
    {
        if (messageContents.length < i + abyte0.length)
        {
            throw new NTLMEngineException("NTLM: Message too short");
        } else
        {
            System.arraycopy(messageContents, i, abyte0, 0, abyte0.length);
            return;
        }
    }

    protected byte[] readSecurityBuffer(int i)
    {
        return NTLMEngineImpl.access$300(messageContents, i);
    }

    protected int readULong(int i)
    {
        return NTLMEngineImpl.access$200(messageContents, i);
    }

    protected int readUShort(int i)
    {
        return NTLMEngineImpl.access$100(messageContents, i);
    }

    ()
    {
        messageContents = null;
        currentOutputPosition = 0;
    }

    currentOutputPosition(String s, int i)
    {
        int l;
        messageContents = null;
        currentOutputPosition = 0;
        messageContents = Base64.decode(EncodingUtils.getBytes(s, "ASCII"), 2);
        int j = messageContents.length;
        int k = NTLMEngineImpl.access$000().length;
        l = 0;
        if (j < k)
        {
            throw new NTLMEngineException("NTLM message decoding error - packet too short");
        }
_L3:
        if (l < NTLMEngineImpl.access$000().length)
        {
            if (messageContents[l] != NTLMEngineImpl.access$000()[l])
            {
                throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
            }
        } else
        {
            int i1 = readULong(NTLMEngineImpl.access$000().length);
            if (i1 != i)
            {
                throw new NTLMEngineException((new StringBuilder("NTLM type ")).append(Integer.toString(i)).append(" message expected - instead got type ").append(Integer.toString(i1)).toString());
            } else
            {
                currentOutputPosition = messageContents.length;
                return;
            }
        }
        if (true) goto _L2; else goto _L1
_L2:
        l++;
        if (true) goto _L3; else goto _L1
_L1:
    }
}
