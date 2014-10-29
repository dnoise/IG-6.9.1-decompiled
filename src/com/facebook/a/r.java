// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;


public final class r extends Enum
{

    public static final r A;
    public static final r B;
    public static final r C;
    public static final r D;
    public static final r E;
    public static final r F;
    public static final r G;
    public static final r H;
    public static final r I;
    public static final r J;
    public static final r K;
    public static final r L;
    public static final r M;
    public static final r N;
    public static final r O;
    public static final r P;
    public static final r Q;
    public static final r R;
    public static final r S;
    public static final r T;
    public static final r U;
    public static final r V;
    public static final r W;
    public static final r X;
    public static final r Y;
    public static final r Z;
    public static final r a;
    public static final r aa;
    public static final r ab;
    public static final r ac;
    public static final r ad;
    public static final r ae;
    private static final r af[];
    public static final r b;
    public static final r c;
    public static final r d;
    public static final r e;
    public static final r f;
    public static final r g;
    public static final r h;
    public static final r i;
    public static final r j;
    public static final r k;
    public static final r l;
    public static final r m;
    public static final r n;
    public static final r o;
    public static final r p;
    public static final r q;
    public static final r r;
    public static final r s;
    public static final r t;
    public static final r u;
    public static final r v;
    public static final r w;
    public static final r x;
    public static final r y;
    public static final r z;

    private r(String s1, int i1)
    {
        super(s1, i1);
    }

    public static r valueOf(String s1)
    {
        return (r)Enum.valueOf(com/facebook/a/r, s1);
    }

    public static r[] values()
    {
        return (r[])af.clone();
    }

    static 
    {
        a = new r("REPORT_ID", 0);
        b = new r("ANDROID_ID", 1);
        c = new r("UID", 2);
        d = new r("APP_VERSION_CODE", 3);
        e = new r("APP_VERSION_NAME", 4);
        f = new r("PACKAGE_NAME", 5);
        g = new r("FILE_PATH", 6);
        h = new r("PHONE_MODEL", 7);
        i = new r("ANDROID_VERSION", 8);
        j = new r("OS_VERSION", 9);
        k = new r("IS_CYANOGENMOD", 10);
        l = new r("BUILD", 11);
        m = new r("BRAND", 12);
        n = new r("PRODUCT", 13);
        o = new r("TOTAL_MEM_SIZE", 14);
        p = new r("AVAILABLE_MEM_SIZE", 15);
        q = new r("CUSTOM_DATA", 16);
        r = new r("STACK_TRACE", 17);
        s = new r("CRASH_CONFIGURATION", 18);
        t = new r("DISPLAY", 19);
        u = new r("USER_APP_START_DATE", 20);
        v = new r("USER_CRASH_DATE", 21);
        w = new r("DUMPSYS_MEMINFO", 22);
        x = new r("DROPBOX", 23);
        y = new r("LOGCAT", 24);
        z = new r("EVENTSLOG", 25);
        A = new r("RADIOLOG", 26);
        B = new r("IS_SILENT", 27);
        C = new r("DEVICE_ID", 28);
        D = new r("INSTALLATION_ID", 29);
        E = new r("USER_EMAIL", 30);
        F = new r("DEVICE_FEATURES", 31);
        G = new r("ENVIRONMENT", 32);
        H = new r("SETTINGS_SYSTEM", 33);
        I = new r("SETTINGS_SECURE", 34);
        J = new r("PROCESS_NAME", 35);
        K = new r("PROCESS_NAME_BY_AMS", 36);
        L = new r("UPLOADED_BY_PROCESS", 37);
        M = new r("ACTIVITY_LOG", 38);
        N = new r("ACRA_INTERNAL", 39);
        O = new r("PROCESS_UPTIME", 40);
        P = new r("DEVICE_UPTIME", 41);
        Q = new r("JAIL_BROKEN", 42);
        R = new r("ACRA_REPORT_FILENAME", 43);
        S = new r("EXCEPTION_CAUSE", 44);
        T = new r("REPORT_LOAD_THROW", 45);
        U = new r("MINIDUMP", 46);
        V = new r("OPEN_FD_COUNT", 47);
        W = new r("OPEN_FD_SOFT_LIMIT", 48);
        X = new r("OPEN_FD_HARD_LIMIT", 49);
        Y = new r("APP_INSTALL_TIME", 50);
        Z = new r("APP_UPGRADE_TIME", 51);
        aa = new r("SERIAL", 52);
        ab = new r("IS_LOW_RAM_DEVICE", 53);
        ac = new r("SIGQUIT", 54);
        ad = new r("LARGE_MEM_HEAP", 55);
        ae = new r("ANDROID_RUNTIME", 56);
        r ar[] = new r[57];
        ar[0] = a;
        ar[1] = b;
        ar[2] = c;
        ar[3] = d;
        ar[4] = e;
        ar[5] = f;
        ar[6] = g;
        ar[7] = h;
        ar[8] = i;
        ar[9] = j;
        ar[10] = k;
        ar[11] = l;
        ar[12] = m;
        ar[13] = n;
        ar[14] = o;
        ar[15] = p;
        ar[16] = q;
        ar[17] = r;
        ar[18] = s;
        ar[19] = t;
        ar[20] = u;
        ar[21] = v;
        ar[22] = w;
        ar[23] = x;
        ar[24] = y;
        ar[25] = z;
        ar[26] = A;
        ar[27] = B;
        ar[28] = C;
        ar[29] = D;
        ar[30] = E;
        ar[31] = F;
        ar[32] = G;
        ar[33] = H;
        ar[34] = I;
        ar[35] = J;
        ar[36] = K;
        ar[37] = L;
        ar[38] = M;
        ar[39] = N;
        ar[40] = O;
        ar[41] = P;
        ar[42] = Q;
        ar[43] = R;
        ar[44] = S;
        ar[45] = T;
        ar[46] = U;
        ar[47] = V;
        ar[48] = W;
        ar[49] = X;
        ar[50] = Y;
        ar[51] = Z;
        ar[52] = aa;
        ar[53] = ab;
        ar[54] = ac;
        ar[55] = ad;
        ar[56] = ae;
        af = ar;
    }
}
