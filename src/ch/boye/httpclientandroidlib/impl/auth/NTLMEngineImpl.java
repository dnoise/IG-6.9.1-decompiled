// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import ch.boye.httpclientandroidlib.util.EncodingUtils;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            NTLMEngine, NTLMEngineException

final class NTLMEngineImpl
    implements NTLMEngine
{

    static final String DEFAULT_CHARSET = "ASCII";
    protected static final int FLAG_NEGOTIATE_128 = 0x20000000;
    protected static final int FLAG_NEGOTIATE_ALWAYS_SIGN = 32768;
    protected static final int FLAG_NEGOTIATE_KEY_EXCH = 0x40000000;
    protected static final int FLAG_NEGOTIATE_NTLM = 512;
    protected static final int FLAG_NEGOTIATE_NTLM2 = 0x80000;
    protected static final int FLAG_NEGOTIATE_SEAL = 32;
    protected static final int FLAG_NEGOTIATE_SIGN = 16;
    protected static final int FLAG_TARGET_DESIRED = 4;
    protected static final int FLAG_UNICODE_ENCODING = 1;
    private static final SecureRandom RND_GEN;
    private static byte SIGNATURE[];
    private String credentialCharset;

    NTLMEngineImpl()
    {
        credentialCharset = "ASCII";
    }

    static int F(int i, int j, int k)
    {
        return i & j | k & ~i;
    }

    static int G(int i, int j, int k)
    {
        return i & j | i & k | j & k;
    }

    static int H(int i, int j, int k)
    {
        return k ^ (i ^ j);
    }

    private static String convertDomain(String s)
    {
        return stripDotSuffix(s);
    }

    private static String convertHost(String s)
    {
        return stripDotSuffix(s);
    }

    private static byte[] createBlob(byte abyte0[], byte abyte1[])
    {
        byte abyte2[] = {
            1, 1, 0, 0
        };
        byte abyte3[] = {
            0, 0, 0, 0
        };
        byte abyte4[] = {
            0, 0, 0, 0
        };
        long l = 10000L * (0xa9730b66800L + System.currentTimeMillis());
        byte abyte5[] = new byte[8];
        for (int i = 0; i < 8; i++)
        {
            abyte5[i] = (byte)(int)l;
            l >>>= 8;
        }

        byte abyte6[] = new byte[28 + abyte1.length];
        System.arraycopy(abyte2, 0, abyte6, 0, 4);
        System.arraycopy(abyte3, 0, abyte6, 4, 4);
        System.arraycopy(abyte5, 0, abyte6, 8, 8);
        System.arraycopy(abyte0, 0, abyte6, 16, 8);
        System.arraycopy(abyte4, 0, abyte6, 24, 4);
        System.arraycopy(abyte1, 0, abyte6, 28, abyte1.length);
        return abyte6;
    }

    private static Key createDESKey(byte abyte0[], int i)
    {
        byte abyte1[] = new byte[7];
        System.arraycopy(abyte0, i, abyte1, 0, 7);
        byte abyte2[] = new byte[8];
        abyte2[0] = abyte1[0];
        abyte2[1] = (byte)(abyte1[0] << 7 | (0xff & abyte1[1]) >>> 1);
        abyte2[2] = (byte)(abyte1[1] << 6 | (0xff & abyte1[2]) >>> 2);
        abyte2[3] = (byte)(abyte1[2] << 5 | (0xff & abyte1[3]) >>> 3);
        abyte2[4] = (byte)(abyte1[3] << 4 | (0xff & abyte1[4]) >>> 4);
        abyte2[5] = (byte)(abyte1[4] << 3 | (0xff & abyte1[5]) >>> 5);
        abyte2[6] = (byte)(abyte1[5] << 2 | (0xff & abyte1[6]) >>> 6);
        abyte2[7] = (byte)(abyte1[6] << 1);
        oddParity(abyte2);
        return new SecretKeySpec(abyte2, "DES");
    }

    static byte[] getLMResponse(String s, byte abyte0[])
    {
        return lmResponse(lmHash(s), abyte0);
    }

    static byte[] getLMv2Response(String s, String s1, String s2, byte abyte0[], byte abyte1[])
    {
        return lmv2Response(ntlmv2Hash(s, s1, s2), abyte0, abyte1);
    }

    static byte[] getNTLM2SessionResponse(String s, byte abyte0[], byte abyte1[])
    {
        byte abyte5[];
        try
        {
            byte abyte2[] = ntlmHash(s);
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            messagedigest.update(abyte1);
            byte abyte3[] = messagedigest.digest();
            byte abyte4[] = new byte[8];
            System.arraycopy(abyte3, 0, abyte4, 0, 8);
            abyte5 = lmResponse(abyte2, abyte4);
        }
        catch (Exception exception)
        {
            if (exception instanceof NTLMEngineException)
            {
                throw (NTLMEngineException)exception;
            } else
            {
                throw new NTLMEngineException(exception.getMessage(), exception);
            }
        }
        return abyte5;
    }

    static byte[] getNTLMResponse(String s, byte abyte0[])
    {
        return lmResponse(ntlmHash(s), abyte0);
    }

    static byte[] getNTLMv2Response(String s, String s1, String s2, byte abyte0[], byte abyte1[], byte abyte2[])
    {
        return lmv2Response(ntlmv2Hash(s, s1, s2), abyte0, createBlob(abyte1, abyte2));
    }

    private static byte[] lmHash(String s)
    {
        byte abyte5[];
        try
        {
            byte abyte0[] = s.toUpperCase().getBytes("US-ASCII");
            int i = Math.min(abyte0.length, 14);
            byte abyte1[] = new byte[14];
            System.arraycopy(abyte0, 0, abyte1, 0, i);
            Key key = createDESKey(abyte1, 0);
            Key key1 = createDESKey(abyte1, 7);
            byte abyte2[] = "KGS!@#$%".getBytes("US-ASCII");
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, key);
            byte abyte3[] = cipher.doFinal(abyte2);
            cipher.init(1, key1);
            byte abyte4[] = cipher.doFinal(abyte2);
            abyte5 = new byte[16];
            System.arraycopy(abyte3, 0, abyte5, 0, 8);
            System.arraycopy(abyte4, 0, abyte5, 8, 8);
        }
        catch (Exception exception)
        {
            throw new NTLMEngineException(exception.getMessage(), exception);
        }
        return abyte5;
    }

    private static byte[] lmResponse(byte abyte0[], byte abyte1[])
    {
        byte abyte6[];
        try
        {
            byte abyte2[] = new byte[21];
            System.arraycopy(abyte0, 0, abyte2, 0, 16);
            Key key = createDESKey(abyte2, 0);
            Key key1 = createDESKey(abyte2, 7);
            Key key2 = createDESKey(abyte2, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, key);
            byte abyte3[] = cipher.doFinal(abyte1);
            cipher.init(1, key1);
            byte abyte4[] = cipher.doFinal(abyte1);
            cipher.init(1, key2);
            byte abyte5[] = cipher.doFinal(abyte1);
            abyte6 = new byte[24];
            System.arraycopy(abyte3, 0, abyte6, 0, 8);
            System.arraycopy(abyte4, 0, abyte6, 8, 8);
            System.arraycopy(abyte5, 0, abyte6, 16, 8);
        }
        catch (Exception exception)
        {
            throw new NTLMEngineException(exception.getMessage(), exception);
        }
        return abyte6;
    }

    private static byte[] lmv2Response(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        HMACMD5 hmacmd5 = new HMACMD5(abyte0);
        hmacmd5.update(abyte1);
        hmacmd5.update(abyte2);
        byte abyte3[] = hmacmd5.getOutput();
        byte abyte4[] = new byte[abyte3.length + abyte2.length];
        System.arraycopy(abyte3, 0, abyte4, 0, abyte3.length);
        System.arraycopy(abyte2, 0, abyte4, abyte3.length, abyte2.length);
        return abyte4;
    }

    private static byte[] makeNTLM2RandomChallenge()
    {
        if (RND_GEN == null)
        {
            throw new NTLMEngineException("Random generator not available");
        }
        byte abyte0[] = new byte[24];
        synchronized (RND_GEN)
        {
            RND_GEN.nextBytes(abyte0);
        }
        Arrays.fill(abyte0, 8, 24, (byte)0);
        return abyte0;
    }

    private static byte[] makeRandomChallenge()
    {
        if (RND_GEN == null)
        {
            throw new NTLMEngineException("Random generator not available");
        }
        byte abyte0[] = new byte[8];
        synchronized (RND_GEN)
        {
            RND_GEN.nextBytes(abyte0);
        }
        return abyte0;
    }

    private static byte[] ntlmHash(String s)
    {
        byte abyte1[];
        try
        {
            byte abyte0[] = s.getBytes("UnicodeLittleUnmarked");
            MD4 md4 = new MD4();
            md4.update(abyte0);
            abyte1 = md4.getOutput();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new NTLMEngineException((new StringBuilder("Unicode not supported: ")).append(unsupportedencodingexception.getMessage()).toString(), unsupportedencodingexception);
        }
        return abyte1;
    }

    private static byte[] ntlmv2Hash(String s, String s1, String s2)
    {
        byte abyte0[];
        try
        {
            HMACMD5 hmacmd5 = new HMACMD5(ntlmHash(s2));
            hmacmd5.update(s1.toUpperCase().getBytes("UnicodeLittleUnmarked"));
            hmacmd5.update(s.getBytes("UnicodeLittleUnmarked"));
            abyte0 = hmacmd5.getOutput();
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new NTLMEngineException((new StringBuilder("Unicode not supported! ")).append(unsupportedencodingexception.getMessage()).toString(), unsupportedencodingexception);
        }
        return abyte0;
    }

    private static void oddParity(byte abyte0[])
    {
        int i = 0;
        while (i < abyte0.length) 
        {
            byte byte0 = abyte0[i];
            boolean flag;
            if ((1 & (byte0 >>> 7 ^ byte0 >>> 6 ^ byte0 >>> 5 ^ byte0 >>> 4 ^ byte0 >>> 3 ^ byte0 >>> 2 ^ byte0 >>> 1)) == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                abyte0[i] = (byte)(1 | abyte0[i]);
            } else
            {
                abyte0[i] = (byte)(-2 & abyte0[i]);
            }
            i++;
        }
    }

    private static byte[] readSecurityBuffer(byte abyte0[], int i)
    {
        int j = readUShort(abyte0, i);
        int k = readULong(abyte0, i + 4);
        if (abyte0.length < k + j)
        {
            throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
        } else
        {
            byte abyte1[] = new byte[j];
            System.arraycopy(abyte0, k, abyte1, 0, j);
            return abyte1;
        }
    }

    private static int readULong(byte abyte0[], int i)
    {
        if (abyte0.length < i + 4)
        {
            throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
        } else
        {
            return 0xff & abyte0[i] | (0xff & abyte0[i + 1]) << 8 | (0xff & abyte0[i + 2]) << 16 | (0xff & abyte0[i + 3]) << 24;
        }
    }

    private static int readUShort(byte abyte0[], int i)
    {
        if (abyte0.length < i + 2)
        {
            throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
        } else
        {
            return 0xff & abyte0[i] | (0xff & abyte0[i + 1]) << 8;
        }
    }

    static int rotintlft(int i, int j)
    {
        return i << j | i >>> 32 - j;
    }

    private static String stripDotSuffix(String s)
    {
        int i = s.indexOf(".");
        if (i != -1)
        {
            s = s.substring(0, i);
        }
        return s;
    }

    static void writeULong(byte abyte0[], int i, int j)
    {
        abyte0[j] = (byte)(i & 0xff);
        abyte0[j + 1] = (byte)(0xff & i >> 8);
        abyte0[j + 2] = (byte)(0xff & i >> 16);
        abyte0[j + 3] = (byte)(0xff & i >> 24);
    }

    public final String generateType1Msg(String s, String s1)
    {
        return getType1Message(s1, s);
    }

    public final String generateType3Msg(String s, String s1, String s2, String s3, String s4)
    {
        Type2Message type2message = new Type2Message(s4);
        return getType3Message(s, s1, s3, s2, type2message.getChallenge(), type2message.getFlags(), type2message.getTarget(), type2message.getTargetInfo());
    }

    final String getCredentialCharset()
    {
        return credentialCharset;
    }

    final String getResponseFor(String s, String s1, String s2, String s3, String s4)
    {
        if (s == null || s.trim().equals(""))
        {
            return getType1Message(s3, s4);
        } else
        {
            Type2Message type2message = new Type2Message(s);
            return getType3Message(s1, s2, s3, s4, type2message.getChallenge(), type2message.getFlags(), type2message.getTarget(), type2message.getTargetInfo());
        }
    }

    final String getType1Message(String s, String s1)
    {
        return (new Type1Message(s1, s)).getResponse();
    }

    final String getType3Message(String s, String s1, String s2, String s3, byte abyte0[], int i, String s4, 
            byte abyte1[])
    {
        return (new Type3Message(s3, s2, s, s1, abyte0, i, s4, abyte1)).getResponse();
    }

    final void setCredentialCharset(String s)
    {
        credentialCharset = s;
    }

    static 
    {
        SecureRandom securerandom1 = SecureRandom.getInstance("SHA1PRNG");
        SecureRandom securerandom = securerandom1;
_L2:
        RND_GEN = securerandom;
        byte abyte0[] = EncodingUtils.getBytes("NTLMSSP", "ASCII");
        SIGNATURE = new byte[1 + abyte0.length];
        System.arraycopy(abyte0, 0, SIGNATURE, 0, abyte0.length);
        SIGNATURE[abyte0.length] = 0;
        return;
        Exception exception;
        exception;
        securerandom = null;
        if (true) goto _L2; else goto _L1
_L1:
    }









    private class HMACMD5
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

        HMACMD5(byte abyte0[])
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


    private class MD4
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

        MD4()
        {
            A = 0x67452301;
            B = 0xefcdab89;
            C = 0x98badcfe;
            D = 0x10325476;
            count = 0L;
            dataBuffer = new byte[64];
        }
    }


    private class Type2Message extends NTLMMessage
    {
        private class NTLMMessage
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
                return 4 + NTLMEngineImpl.SIGNATURE.length;
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
                addBytes(NTLMEngineImpl.SIGNATURE);
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
                return NTLMEngineImpl.readSecurityBuffer(messageContents, i);
            }

            protected int readULong(int i)
            {
                return NTLMEngineImpl.readULong(messageContents, i);
            }

            protected int readUShort(int i)
            {
                return NTLMEngineImpl.readUShort(messageContents, i);
            }

            NTLMMessage()
            {
                messageContents = null;
                currentOutputPosition = 0;
            }

            NTLMMessage(String s, int i)
            {
                int l;
                messageContents = null;
                currentOutputPosition = 0;
                messageContents = Base64.decode(EncodingUtils.getBytes(s, "ASCII"), 2);
                int j = messageContents.length;
                int k = NTLMEngineImpl.SIGNATURE.length;
                l = 0;
                if (j < k)
                {
                    throw new NTLMEngineException("NTLM message decoding error - packet too short");
                }
_L3:
                if (l < NTLMEngineImpl.SIGNATURE.length)
                {
                    if (messageContents[l] != NTLMEngineImpl.SIGNATURE[l])
                    {
                        throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                    }
                } else
                {
                    int i1 = readULong(NTLMEngineImpl.SIGNATURE.length);
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

        Type2Message(String s)
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


    private class Type1Message extends NTLMMessage
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
            return super.getResponse();
        }

        Type1Message(String s, String s1)
        {
            try
            {
                String s2 = NTLMEngineImpl.convertHost(s1);
                String s3 = NTLMEngineImpl.convertDomain(s);
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


    private class Type3Message extends NTLMMessage
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
            return super.getResponse();
        }

        Type3Message(String s, String s1, String s2, String s3, byte abyte0[], int i, String s4, 
                byte abyte1[])
        {
            String s5;
            String s6;
            type2Flags = i;
            s5 = NTLMEngineImpl.convertHost(s1);
            s6 = NTLMEngineImpl.convertDomain(s);
            if (abyte1 == null || s4 == null) goto _L2; else goto _L1
_L1:
            try
            {
                byte abyte3[] = NTLMEngineImpl.makeRandomChallenge();
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
            byte abyte2[] = NTLMEngineImpl.makeNTLM2RandomChallenge();
            ntResp = NTLMEngineImpl.getNTLM2SessionResponse(s3, abyte0, abyte2);
            lmResp = abyte2;
            break MISSING_BLOCK_LABEL_71;
            ntResp = NTLMEngineImpl.getNTLMResponse(s3, abyte0);
            lmResp = NTLMEngineImpl.getLMResponse(s3, abyte0);
              goto _L3
        }
    }

}
