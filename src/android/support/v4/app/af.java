// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;

// Referenced classes of package android.support.v4.app:
//            Fragment

final class af
{

    private final String a;
    private final Class b;
    private final Bundle c;
    private Fragment d;

    static Fragment a(af af1)
    {
        return af1.d;
    }

    static Fragment a(af af1, Fragment fragment)
    {
        af1.d = fragment;
        return fragment;
    }

    static String b(af af1)
    {
        return af1.a;
    }

    static Class c(af af1)
    {
        return af1.b;
    }

    static Bundle d(af af1)
    {
        return af1.c;
    }
}
