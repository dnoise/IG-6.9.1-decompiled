// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.l.a;


public final class g extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    public static final g g;
    public static final g h;
    public static final g i;
    public static final g j;
    private static final g k[];

    private g(String s, int l)
    {
        super(s, l);
    }

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/instagram/android/l/a/g, s);
    }

    public static g[] values()
    {
        return (g[])k.clone();
    }

    static 
    {
        a = new g("IDLE", 0);
        b = new g("INITIALIZED", 1);
        c = new g("PREPARING", 2);
        d = new g("PREPARED", 3);
        e = new g("STARTED", 4);
        f = new g("PAUSED", 5);
        g = new g("STOPPED", 6);
        h = new g("PLAYBACK_COMPLETED", 7);
        i = new g("ERROR", 8);
        j = new g("END", 9);
        g ag[] = new g[10];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        ag[6] = g;
        ag[7] = h;
        ag[8] = i;
        ag[9] = j;
        k = ag;
    }
}
