// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;


// Referenced classes of package com.instagram.camera:
//            e

public final class p extends e
{

    public p()
    {
    }

    public final int a(int i, int j)
    {
        int k = 90;
        if (!a(i)) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR lookupswitch 4: default 56
    //                   0: 66
    //                   90: 68
    //                   180: 66
    //                   270: 72;
           goto _L2 _L3 _L4 _L3 _L5
_L2:
        k = a[i].orientation;
_L3:
        return k;
_L4:
        return 270;
_L5:
        return 270;
    }

    public final boolean c(int i)
    {
        return false;
    }
}
