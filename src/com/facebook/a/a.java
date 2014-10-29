// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.content.Context;
import com.facebook.a.a.b;

// Referenced classes of package com.facebook.a:
//            r, i

public class a
{

    public static final String a = com/facebook/a/a.getSimpleName();
    public static final r b[];
    public static final r c[];
    private static b d;

    public a()
    {
    }

    public static b a()
    {
        return d;
    }

    public static i a(b b1, String s, boolean flag)
    {
        i j = i.a();
        if (d == null)
        {
            d = b1;
            Context context = b1.d();
            String _tmp = a;
            (new StringBuilder("ACRA is enabled for ")).append(context.getPackageName()).append(", intializing...");
            j.a(context, flag);
            Thread.setDefaultUncaughtExceptionHandler(j);
            if (s != null)
            {
                j.a(new com.facebook.a.b.a(s));
            }
            j.b();
        }
        return j;
    }

    static 
    {
        r ar[] = new r[53];
        ar[0] = r.a;
        ar[1] = r.d;
        ar[2] = r.e;
        ar[3] = r.Y;
        ar[4] = r.Z;
        ar[5] = r.f;
        ar[6] = r.g;
        ar[7] = r.h;
        ar[8] = r.m;
        ar[9] = r.n;
        ar[10] = r.i;
        ar[11] = r.j;
        ar[12] = r.l;
        ar[13] = r.o;
        ar[14] = r.k;
        ar[15] = r.p;
        ar[16] = r.q;
        ar[17] = r.r;
        ar[18] = r.s;
        ar[19] = r.t;
        ar[20] = r.u;
        ar[21] = r.v;
        ar[22] = r.w;
        ar[23] = r.x;
        ar[24] = r.y;
        ar[25] = r.z;
        ar[26] = r.A;
        ar[27] = r.C;
        ar[28] = r.D;
        ar[29] = r.F;
        ar[30] = r.G;
        ar[31] = r.H;
        ar[32] = r.I;
        ar[33] = r.J;
        ar[34] = r.K;
        ar[35] = r.M;
        ar[36] = r.Q;
        ar[37] = r.O;
        ar[38] = r.P;
        ar[39] = r.R;
        ar[40] = r.S;
        ar[41] = r.T;
        ar[42] = r.U;
        ar[43] = com.facebook.a.r.b;
        ar[44] = r.c;
        ar[45] = r.L;
        ar[46] = r.V;
        ar[47] = r.W;
        ar[48] = r.X;
        ar[49] = r.ab;
        ar[50] = r.ac;
        ar[51] = r.ad;
        ar[52] = r.ae;
        b = ar;
        r ar1[] = new r[49];
        ar1[0] = r.a;
        ar1[1] = r.d;
        ar1[2] = r.e;
        ar1[3] = r.Y;
        ar1[4] = r.Z;
        ar1[5] = r.f;
        ar1[6] = r.g;
        ar1[7] = r.h;
        ar1[8] = r.m;
        ar1[9] = r.n;
        ar1[10] = r.i;
        ar1[11] = r.j;
        ar1[12] = r.l;
        ar1[13] = r.o;
        ar1[14] = r.k;
        ar1[15] = r.p;
        ar1[16] = r.q;
        ar1[17] = r.r;
        ar1[18] = r.s;
        ar1[19] = r.t;
        ar1[20] = r.u;
        ar1[21] = r.v;
        ar1[22] = r.w;
        ar1[23] = r.x;
        ar1[24] = r.y;
        ar1[25] = r.z;
        ar1[26] = r.A;
        ar1[27] = r.C;
        ar1[28] = r.D;
        ar1[29] = r.F;
        ar1[30] = r.G;
        ar1[31] = r.H;
        ar1[32] = r.I;
        ar1[33] = r.J;
        ar1[34] = r.K;
        ar1[35] = r.M;
        ar1[36] = r.Q;
        ar1[37] = r.O;
        ar1[38] = r.P;
        ar1[39] = r.R;
        ar1[40] = r.S;
        ar1[41] = r.T;
        ar1[42] = r.U;
        ar1[43] = com.facebook.a.r.b;
        ar1[44] = r.c;
        ar1[45] = r.L;
        ar1[46] = r.ab;
        ar1[47] = r.ad;
        ar1[48] = r.ae;
        c = ar1;
    }
}
