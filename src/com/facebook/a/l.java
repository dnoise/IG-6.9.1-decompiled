// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;


// Referenced classes of package com.facebook.a:
//            r

public final class l extends Enum
{

    public static final l a;
    public static final l b;
    public static final l c;
    private static final l h[];
    private final String d;
    private final long e;
    private final r f;
    private final String g[];

    private transient l(String s, int i, String s1, long l1, r r1, String as[])
    {
        super(s, i);
        d = s1;
        e = l1;
        f = r1;
        g = as;
    }

    static String a(l l1)
    {
        return l1.d;
    }

    static String[] b(l l1)
    {
        return l1.g;
    }

    static r c(l l1)
    {
        return l1.f;
    }

    static long d(l l1)
    {
        return l1.e;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/facebook/a/l, s);
    }

    public static l[] values()
    {
        return (l[])h.clone();
    }

    static 
    {
        a = new l("ACRA_CRASH_REPORT", 0, "acra-reports", 51200L, null, new String[] {
            ".stacktrace", ".temp_stacktrace"
        });
        b = new l("NATIVE_CRASH_REPORT", 1, "minidumps", 0x7d000L, r.U, new String[] {
            ".dmp"
        });
        c = new l("ANR_REPORT", 2, "traces", 0x1e000L, r.ac, new String[] {
            ".stacktrace", ".temp_stacktrace"
        });
        l al[] = new l[3];
        al[0] = a;
        al[1] = b;
        al[2] = c;
        h = al;
    }
}
