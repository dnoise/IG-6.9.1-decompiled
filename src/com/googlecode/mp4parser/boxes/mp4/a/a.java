// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.a;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.a:
//            b, c

public class a extends b
{

    public static Map b;
    public static Map c;
    int A;
    int B;
    int C;
    boolean D;
    int E;
    int F;
    int G;
    int H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    int P;
    int Q;
    int R;
    boolean S;
    byte a[];
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    int z;

    public a()
    {
    }

    private static int a(c c1)
    {
        int i1 = c1.a(5);
        if (i1 == 31)
        {
            i1 = 32 + c1.a(6);
        }
        return i1;
    }

    private void a(int i1, int j1, int k1, c c1)
    {
        E = c1.a(1);
        if (E == 1)
        {
            b(c1);
            return;
        } else
        {
            e(c1);
            return;
        }
    }

    private void a(int i1, int j1, c c1)
    {
        s = c1.a(1);
        t = c1.a(1);
        if (t == 1)
        {
            u = c1.a(14);
        }
        v = c1.a(1);
        if (i1 == 0)
        {
            throw new UnsupportedOperationException("can't parse program_config_element yet");
        }
        if (j1 == 6 || j1 == 20)
        {
            w = c1.a(3);
        }
        if (v == 1)
        {
            if (j1 == 22)
            {
                x = c1.a(5);
                y = c1.a(11);
            }
            if (j1 == 17 || j1 == 19 || j1 == 20 || j1 == 23)
            {
                z = c1.a(1);
                A = c1.a(1);
                B = c1.a(1);
            }
            C = c1.a(1);
            int _tmp = C;
        }
        D = true;
    }

    private void b(c c1)
    {
        F = c1.a(2);
        if (F != 1)
        {
            c(c1);
        }
        if (F != 0)
        {
            d(c1);
        }
        G = c1.a(1);
        S = true;
    }

    private void c(c c1)
    {
        H = c1.a(1);
        I = c1.a(2);
        J = c1.a(1);
        if (J == 1)
        {
            K = c1.a(1);
        }
    }

    private void d(c c1)
    {
        L = c1.a(1);
        M = c1.a(8);
        N = c1.a(4);
        O = c1.a(12);
        P = c1.a(2);
    }

    private void e(c c1)
    {
        Q = c1.a(1);
        if (Q == 1)
        {
            R = c1.a(2);
        }
    }

    public final void a(ByteBuffer bytebuffer)
    {
        c c1;
        ByteBuffer bytebuffer1 = bytebuffer.slice();
        bytebuffer1.limit(U);
        bytebuffer.position(bytebuffer.position() + U);
        a = new byte[U];
        bytebuffer1.get(a);
        bytebuffer1.rewind();
        c1 = new c(bytebuffer1);
        d = a(c1);
        e = c1.a(4);
        if (e == 15)
        {
            f = c1.a(24);
        }
        g = c1.a(4);
        if (d == 5 || d == 29)
        {
            h = 5;
            i = 1;
            if (d == 29)
            {
                j = 1;
            }
            k = c1.a(4);
            if (k == 15)
            {
                l = c1.a(24);
            }
            d = a(c1);
            if (d == 22)
            {
                m = c1.a(4);
            }
        } else
        {
            h = 0;
        }
        d;
        JVM INSTR tableswitch 1 41: default 392
    //                   1 725
    //                   2 725
    //                   3 725
    //                   4 725
    //                   5 392
    //                   6 725
    //                   7 725
    //                   8 747
    //                   9 758
    //                   10 392
    //                   11 392
    //                   12 769
    //                   13 780
    //                   14 780
    //                   15 780
    //                   16 780
    //                   17 725
    //                   18 392
    //                   19 725
    //                   20 725
    //                   21 725
    //                   22 725
    //                   23 725
    //                   24 791
    //                   25 802
    //                   26 813
    //                   27 813
    //                   28 834
    //                   29 392
    //                   30 845
    //                   31 392
    //                   32 866
    //                   33 866
    //                   34 866
    //                   35 877
    //                   36 888
    //                   37 909
    //                   38 909
    //                   39 920
    //                   40 931
    //                   41 931;
           goto _L1 _L2 _L2 _L2 _L2 _L1 _L2 _L2 _L3 _L4 _L1 _L1 _L5 _L6 _L6 _L6 _L6 _L2 _L1 _L2 _L2 _L2 _L2 _L2 _L7 _L8 _L9 _L9 _L10 _L1 _L11 _L1 _L12 _L12 _L12 _L13 _L14 _L15 _L15 _L16 _L17 _L17
_L1:
        d;
        JVM INSTR tableswitch 17 39: default 504
    //                   17 942
    //                   18 504
    //                   19 942
    //                   20 942
    //                   21 942
    //                   22 942
    //                   23 942
    //                   24 942
    //                   25 942
    //                   26 942
    //                   27 942
    //                   28 504
    //                   29 504
    //                   30 504
    //                   31 504
    //                   32 504
    //                   33 504
    //                   34 504
    //                   35 504
    //                   36 504
    //                   37 504
    //                   38 504
    //                   39 942;
           goto _L18 _L19 _L18 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L18 _L19
_L18:
        if (h != 5 && c1.a() >= 16)
        {
            r = c1.a(11);
            if (r == 695)
            {
                h = a(c1);
                if (h == 5)
                {
                    i = c1.a(1);
                    if (i == 1)
                    {
                        k = c1.a(4);
                        if (k == 15)
                        {
                            l = c1.a(24);
                        }
                        if (c1.a() >= 12)
                        {
                            r = c1.a(11);
                            if (r == 1352)
                            {
                                j = c1.a(1);
                            }
                        }
                    }
                }
                if (h == 22)
                {
                    i = c1.a(1);
                    if (i == 1)
                    {
                        k = c1.a(4);
                        if (k == 15)
                        {
                            l = c1.a(24);
                        }
                    }
                    m = c1.a(4);
                }
            }
        }
        return;
_L2:
        e;
        a(g, d, c1);
        continue; /* Loop/switch isn't completed */
_L3:
        throw new UnsupportedOperationException("can't parse CelpSpecificConfig yet");
_L4:
        throw new UnsupportedOperationException("can't parse HvxcSpecificConfig yet");
_L5:
        throw new UnsupportedOperationException("can't parse TTSSpecificConfig yet");
_L6:
        throw new UnsupportedOperationException("can't parse StructuredAudioSpecificConfig yet");
_L7:
        throw new UnsupportedOperationException("can't parse ErrorResilientCelpSpecificConfig yet");
_L8:
        throw new UnsupportedOperationException("can't parse ErrorResilientHvxcSpecificConfig yet");
_L9:
        a(e, g, d, c1);
        continue; /* Loop/switch isn't completed */
_L10:
        throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
_L11:
        n = c1.a(1);
        throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
_L12:
        throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
_L13:
        throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
_L14:
        o = c1.a(5);
        throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
_L15:
        throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
_L16:
        throw new UnsupportedOperationException("can't parse ELDSpecificConfig yet");
_L17:
        throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
_L19:
        p = c1.a(2);
        if (p == 2 || p == 3)
        {
            throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
        }
        if (p != 3) goto _L18; else goto _L20
_L20:
        q = c1.a(1);
        if (q != 0) goto _L18; else goto _L21
_L21:
        throw new RuntimeException("not implemented");
        if (true) goto _L1; else goto _L22
_L22:
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (A != a1.A)
            {
                return false;
            }
            if (z != a1.z)
            {
                return false;
            }
            if (B != a1.B)
            {
                return false;
            }
            if (d != a1.d)
            {
                return false;
            }
            if (g != a1.g)
            {
                return false;
            }
            if (u != a1.u)
            {
                return false;
            }
            if (t != a1.t)
            {
                return false;
            }
            if (q != a1.q)
            {
                return false;
            }
            if (p != a1.p)
            {
                return false;
            }
            if (J != a1.J)
            {
                return false;
            }
            if (h != a1.h)
            {
                return false;
            }
            if (m != a1.m)
            {
                return false;
            }
            if (v != a1.v)
            {
                return false;
            }
            if (C != a1.C)
            {
                return false;
            }
            if (l != a1.l)
            {
                return false;
            }
            if (k != a1.k)
            {
                return false;
            }
            if (o != a1.o)
            {
                return false;
            }
            if (s != a1.s)
            {
                return false;
            }
            if (D != a1.D)
            {
                return false;
            }
            if (P != a1.P)
            {
                return false;
            }
            if (Q != a1.Q)
            {
                return false;
            }
            if (R != a1.R)
            {
                return false;
            }
            if (O != a1.O)
            {
                return false;
            }
            if (M != a1.M)
            {
                return false;
            }
            if (L != a1.L)
            {
                return false;
            }
            if (N != a1.N)
            {
                return false;
            }
            if (I != a1.I)
            {
                return false;
            }
            if (H != a1.H)
            {
                return false;
            }
            if (E != a1.E)
            {
                return false;
            }
            if (w != a1.w)
            {
                return false;
            }
            if (y != a1.y)
            {
                return false;
            }
            if (x != a1.x)
            {
                return false;
            }
            if (G != a1.G)
            {
                return false;
            }
            if (F != a1.F)
            {
                return false;
            }
            if (S != a1.S)
            {
                return false;
            }
            if (j != a1.j)
            {
                return false;
            }
            if (n != a1.n)
            {
                return false;
            }
            if (f != a1.f)
            {
                return false;
            }
            if (e != a1.e)
            {
                return false;
            }
            if (i != a1.i)
            {
                return false;
            }
            if (r != a1.r)
            {
                return false;
            }
            if (K != a1.K)
            {
                return false;
            }
            if (!Arrays.equals(a, a1.a))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i1 = 1;
        int j1;
        int k1;
        int l1;
        int i2;
        if (a != null)
        {
            j1 = Arrays.hashCode(a);
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (j1 * 31 + d) + e) + f) + g) + h) + i) + j) + k) + l) + m) + n) + o) + p) + q) + r) + s) + t) + u) + v) + w) + x) + y) + z) + A) + B) + C);
        if (D)
        {
            l1 = i1;
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (l1 + k1) + E) + F) + G) + H) + I) + J) + K) + L) + M) + N) + O) + P) + Q) + R);
        if (!S)
        {
            i1 = 0;
        }
        return i2 + i1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("AudioSpecificConfig");
        stringbuilder.append("{configBytes=").append(com.coremedia.iso.d.a(a));
        stringbuilder.append(", audioObjectType=").append(d).append(" (").append((String)c.get(Integer.valueOf(d))).append(")");
        stringbuilder.append(", samplingFrequencyIndex=").append(e).append(" (").append(b.get(Integer.valueOf(e))).append(")");
        stringbuilder.append(", samplingFrequency=").append(f);
        stringbuilder.append(", channelConfiguration=").append(g);
        if (h > 0)
        {
            stringbuilder.append(", extensionAudioObjectType=").append(h).append(" (").append((String)c.get(Integer.valueOf(h))).append(")");
            stringbuilder.append(", sbrPresentFlag=").append(i);
            stringbuilder.append(", psPresentFlag=").append(j);
            stringbuilder.append(", extensionSamplingFrequencyIndex=").append(k).append(" (").append(b.get(Integer.valueOf(k))).append(")");
            stringbuilder.append(", extensionSamplingFrequency=").append(l);
            stringbuilder.append(", extensionChannelConfiguration=").append(m);
        }
        stringbuilder.append(", syncExtensionType=").append(r);
        if (D)
        {
            stringbuilder.append(", frameLengthFlag=").append(s);
            stringbuilder.append(", dependsOnCoreCoder=").append(t);
            stringbuilder.append(", coreCoderDelay=").append(u);
            stringbuilder.append(", extensionFlag=").append(v);
            stringbuilder.append(", layerNr=").append(w);
            stringbuilder.append(", numOfSubFrame=").append(x);
            stringbuilder.append(", layer_length=").append(y);
            stringbuilder.append(", aacSectionDataResilienceFlag=").append(z);
            stringbuilder.append(", aacScalefactorDataResilienceFlag=").append(A);
            stringbuilder.append(", aacSpectralDataResilienceFlag=").append(B);
            stringbuilder.append(", extensionFlag3=").append(C);
        }
        if (S)
        {
            stringbuilder.append(", isBaseLayer=").append(E);
            stringbuilder.append(", paraMode=").append(F);
            stringbuilder.append(", paraExtensionFlag=").append(G);
            stringbuilder.append(", hvxcVarMode=").append(H);
            stringbuilder.append(", hvxcRateMode=").append(I);
            stringbuilder.append(", erHvxcExtensionFlag=").append(J);
            stringbuilder.append(", var_ScalableFlag=").append(K);
            stringbuilder.append(", hilnQuantMode=").append(L);
            stringbuilder.append(", hilnMaxNumLine=").append(M);
            stringbuilder.append(", hilnSampleRateCode=").append(N);
            stringbuilder.append(", hilnFrameLength=").append(O);
            stringbuilder.append(", hilnContMode=").append(P);
            stringbuilder.append(", hilnEnhaLayer=").append(Q);
            stringbuilder.append(", hilnEnhaQuantMode=").append(R);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        b = new HashMap();
        c = new HashMap();
        b.put(Integer.valueOf(0), Integer.valueOf(0x17700));
        b.put(Integer.valueOf(1), Integer.valueOf(0x15888));
        b.put(Integer.valueOf(2), Integer.valueOf(64000));
        b.put(Integer.valueOf(3), Integer.valueOf(48000));
        b.put(Integer.valueOf(4), Integer.valueOf(44100));
        b.put(Integer.valueOf(5), Integer.valueOf(32000));
        b.put(Integer.valueOf(6), Integer.valueOf(24000));
        b.put(Integer.valueOf(7), Integer.valueOf(22050));
        b.put(Integer.valueOf(8), Integer.valueOf(16000));
        b.put(Integer.valueOf(9), Integer.valueOf(12000));
        b.put(Integer.valueOf(10), Integer.valueOf(11025));
        b.put(Integer.valueOf(11), Integer.valueOf(8000));
        c.put(Integer.valueOf(1), "AAC main");
        c.put(Integer.valueOf(2), "AAC LC");
        c.put(Integer.valueOf(3), "AAC SSR");
        c.put(Integer.valueOf(4), "AAC LTP");
        c.put(Integer.valueOf(5), "SBR");
        c.put(Integer.valueOf(6), "AAC Scalable");
        c.put(Integer.valueOf(7), "TwinVQ");
        c.put(Integer.valueOf(8), "CELP");
        c.put(Integer.valueOf(9), "HVXC");
        c.put(Integer.valueOf(10), "(reserved)");
        c.put(Integer.valueOf(11), "(reserved)");
        c.put(Integer.valueOf(12), "TTSI");
        c.put(Integer.valueOf(13), "Main synthetic");
        c.put(Integer.valueOf(14), "Wavetable synthesis");
        c.put(Integer.valueOf(15), "General MIDI");
        c.put(Integer.valueOf(16), "Algorithmic Synthesis and Audio FX");
        c.put(Integer.valueOf(17), "ER AAC LC");
        c.put(Integer.valueOf(18), "(reserved)");
        c.put(Integer.valueOf(19), "ER AAC LTP");
        c.put(Integer.valueOf(20), "ER AAC Scalable");
        c.put(Integer.valueOf(21), "ER TwinVQ");
        c.put(Integer.valueOf(22), "ER BSAC");
        c.put(Integer.valueOf(23), "ER AAC LD");
        c.put(Integer.valueOf(24), "ER CELP");
        c.put(Integer.valueOf(25), "ER HVXC");
        c.put(Integer.valueOf(26), "ER HILN");
        c.put(Integer.valueOf(27), "ER Parametric");
        c.put(Integer.valueOf(28), "SSC");
        c.put(Integer.valueOf(29), "PS");
        c.put(Integer.valueOf(30), "MPEG Surround");
        c.put(Integer.valueOf(31), "(escape)");
        c.put(Integer.valueOf(32), "Layer-1");
        c.put(Integer.valueOf(33), "Layer-2");
        c.put(Integer.valueOf(34), "Layer-3");
        c.put(Integer.valueOf(35), "DST");
        c.put(Integer.valueOf(36), "ALS");
        c.put(Integer.valueOf(37), "SLS");
        c.put(Integer.valueOf(38), "SLS non-core");
        c.put(Integer.valueOf(39), "ER AAC ELD");
        c.put(Integer.valueOf(40), "SMR Simple");
        c.put(Integer.valueOf(41), "SMR Main");
    }
}
