// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.graphics.Bitmap;

// Referenced classes of package android.support.v4.app:
//            bk, ba

public final class ay extends bk
{

    Bitmap a;
    Bitmap b;
    boolean c;

    public ay()
    {
    }

    public ay(ba ba)
    {
        a(ba);
    }

    public final ay a(Bitmap bitmap)
    {
        a = bitmap;
        return this;
    }

    public final ay a(CharSequence charsequence)
    {
        f = charsequence;
        g = true;
        return this;
    }
}
