// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;


// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngineImpl

class dataBuffer
{

    protected int A;
    protected int B;
    protected int C;
    protected int D;
    protected long count;
    protected byte dataBuffer[];

    byte[] getOutput()
    {
        int i = (int)(63L & count);
        int j;
        byte abyte0[];
        if (i < 56)
        {
            j = 56 - i;
        } else
        {
            j = 120 - i;
        }
        abyte0 = new byte[j + 8];
        abyte0[0] = -128;
        for (int k = 0; k < 8; k++)
        {
            abyte0[j + k] = (byte)(int)(8L * count >>> k * 8);
        }

        update(abyte0);
        byte abyte1[] = new byte[16];
        NTLMEngineImpl.writeULong(abyte1, A, 0);
        NTLMEngineImpl.writeULong(abyte1, B, 4);
        NTLMEngineImpl.writeULong(abyte1, C, 8);
        NTLMEngineImpl.writeULong(abyte1, D, 12);
        return abyte1;
    }

    protected void processBuffer()
    {
        int ai[] = new int[16];
        for (int i = 0; i < 16; i++)
        {
            ai[i] = (0xff & dataBuffer[i * 4]) + ((0xff & dataBuffer[1 + i * 4]) << 8) + ((0xff & dataBuffer[2 + i * 4]) << 16) + ((0xff & dataBuffer[3 + i * 4]) << 24);
        }

        int j = A;
        int k = B;
        int l = C;
        int i1 = D;
        round1(ai);
        round2(ai);
        round3(ai);
        A = j + A;
        B = k + B;
        C = l + C;
        D = i1 + D;
    }

    protected void round1(int ai[])
    {
        A = NTLMEngineImpl.rotintlft(A + NTLMEngineImpl.F(B, C, D) + ai[0], 3);
        D = NTLMEngineImpl.rotintlft(D + NTLMEngineImpl.F(A, B, C) + ai[1], 7);
        C = NTLMEngineImpl.rotintlft(C + NTLMEngineImpl.F(D, A, B) + ai[2], 11);
        B = NTLMEngineImpl.rotintlft(B + NTLMEngineImpl.F(C, D, A) + ai[3], 19);
        A = NTLMEngineImpl.rotintlft(A + NTLMEngineImpl.F(B, C, D) + ai[4], 3);
        D = NTLMEngineImpl.rotintlft(D + NTLMEngineImpl.F(A, B, C) + ai[5], 7);
        C = NTLMEngineImpl.rotintlft(C + NTLMEngineImpl.F(D, A, B) + ai[6], 11);
        B = NTLMEngineImpl.rotintlft(B + NTLMEngineImpl.F(C, D, A) + ai[7], 19);
        A = NTLMEngineImpl.rotintlft(A + NTLMEngineImpl.F(B, C, D) + ai[8], 3);
        D = NTLMEngineImpl.rotintlft(D + NTLMEngineImpl.F(A, B, C) + ai[9], 7);
        C = NTLMEngineImpl.rotintlft(C + NTLMEngineImpl.F(D, A, B) + ai[10], 11);
        B = NTLMEngineImpl.rotintlft(B + NTLMEngineImpl.F(C, D, A) + ai[11], 19);
        A = NTLMEngineImpl.rotintlft(A + NTLMEngineImpl.F(B, C, D) + ai[12], 3);
        D = NTLMEngineImpl.rotintlft(D + NTLMEngineImpl.F(A, B, C) + ai[13], 7);
        C = NTLMEngineImpl.rotintlft(C + NTLMEngineImpl.F(D, A, B) + ai[14], 11);
        B = NTLMEngineImpl.rotintlft(B + NTLMEngineImpl.F(C, D, A) + ai[15], 19);
    }

    protected void round2(int ai[])
    {
        A = NTLMEngineImpl.rotintlft(0x5a827999 + (A + NTLMEngineImpl.G(B, C, D) + ai[0]), 3);
        D = NTLMEngineImpl.rotintlft(0x5a827999 + (D + NTLMEngineImpl.G(A, B, C) + ai[4]), 5);
        C = NTLMEngineImpl.rotintlft(0x5a827999 + (C + NTLMEngineImpl.G(D, A, B) + ai[8]), 9);
        B = NTLMEngineImpl.rotintlft(0x5a827999 + (B + NTLMEngineImpl.G(C, D, A) + ai[12]), 13);
        A = NTLMEngineImpl.rotintlft(0x5a827999 + (A + NTLMEngineImpl.G(B, C, D) + ai[1]), 3);
        D = NTLMEngineImpl.rotintlft(0x5a827999 + (D + NTLMEngineImpl.G(A, B, C) + ai[5]), 5);
        C = NTLMEngineImpl.rotintlft(0x5a827999 + (C + NTLMEngineImpl.G(D, A, B) + ai[9]), 9);
        B = NTLMEngineImpl.rotintlft(0x5a827999 + (B + NTLMEngineImpl.G(C, D, A) + ai[13]), 13);
        A = NTLMEngineImpl.rotintlft(0x5a827999 + (A + NTLMEngineImpl.G(B, C, D) + ai[2]), 3);
        D = NTLMEngineImpl.rotintlft(0x5a827999 + (D + NTLMEngineImpl.G(A, B, C) + ai[6]), 5);
        C = NTLMEngineImpl.rotintlft(0x5a827999 + (C + NTLMEngineImpl.G(D, A, B) + ai[10]), 9);
        B = NTLMEngineImpl.rotintlft(0x5a827999 + (B + NTLMEngineImpl.G(C, D, A) + ai[14]), 13);
        A = NTLMEngineImpl.rotintlft(0x5a827999 + (A + NTLMEngineImpl.G(B, C, D) + ai[3]), 3);
        D = NTLMEngineImpl.rotintlft(0x5a827999 + (D + NTLMEngineImpl.G(A, B, C) + ai[7]), 5);
        C = NTLMEngineImpl.rotintlft(0x5a827999 + (C + NTLMEngineImpl.G(D, A, B) + ai[11]), 9);
        B = NTLMEngineImpl.rotintlft(0x5a827999 + (B + NTLMEngineImpl.G(C, D, A) + ai[15]), 13);
    }

    protected void round3(int ai[])
    {
        A = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (A + NTLMEngineImpl.H(B, C, D) + ai[0]), 3);
        D = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (D + NTLMEngineImpl.H(A, B, C) + ai[8]), 9);
        C = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (C + NTLMEngineImpl.H(D, A, B) + ai[4]), 11);
        B = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (B + NTLMEngineImpl.H(C, D, A) + ai[12]), 15);
        A = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (A + NTLMEngineImpl.H(B, C, D) + ai[2]), 3);
        D = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (D + NTLMEngineImpl.H(A, B, C) + ai[10]), 9);
        C = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (C + NTLMEngineImpl.H(D, A, B) + ai[6]), 11);
        B = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (B + NTLMEngineImpl.H(C, D, A) + ai[14]), 15);
        A = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (A + NTLMEngineImpl.H(B, C, D) + ai[1]), 3);
        D = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (D + NTLMEngineImpl.H(A, B, C) + ai[9]), 9);
        C = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (C + NTLMEngineImpl.H(D, A, B) + ai[5]), 11);
        B = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (B + NTLMEngineImpl.H(C, D, A) + ai[13]), 15);
        A = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (A + NTLMEngineImpl.H(B, C, D) + ai[3]), 3);
        D = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (D + NTLMEngineImpl.H(A, B, C) + ai[11]), 9);
        C = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (C + NTLMEngineImpl.H(D, A, B) + ai[7]), 11);
        B = NTLMEngineImpl.rotintlft(0x6ed9eba1 + (B + NTLMEngineImpl.H(C, D, A) + ai[15]), 15);
    }

    void update(byte abyte0[])
    {
        int i = (int)(63L & count);
        int j;
        for (j = 0; i + (abyte0.length - j) >= dataBuffer.length; i = 0)
        {
            int l = dataBuffer.length - i;
            System.arraycopy(abyte0, j, dataBuffer, i, l);
            count = count + (long)l;
            j += l;
            processBuffer();
        }

        if (j < abyte0.length)
        {
            int k = abyte0.length - j;
            System.arraycopy(abyte0, j, dataBuffer, i, k);
            count = count + (long)k;
        }
    }

    ()
    {
        A = 0x67452301;
        B = 0xefcdab89;
        C = 0x98badcfe;
        D = 0x10325476;
        count = 0L;
        dataBuffer = new byte[64];
    }
}
