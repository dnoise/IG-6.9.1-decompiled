// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;


public final class c
{

    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;

    public c()
    {
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{fscod=")).append(a).append(", bsid=").append(b).append(", bsmod=").append(c).append(", acmod=").append(d).append(", lfeon=").append(e).append(", reserved=").append(f).append(", num_dep_sub=").append(g).append(", chan_loc=").append(h).append(", reserved2=").append(i).append('}').toString();
    }
}
