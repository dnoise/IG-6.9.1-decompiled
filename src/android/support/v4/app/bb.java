// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import java.util.ArrayList;

// Referenced classes of package android.support.v4.app:
//            bk, ba

public final class bb extends bk
{

    ArrayList a;

    public bb()
    {
        a = new ArrayList();
    }

    public bb(ba ba)
    {
        a = new ArrayList();
        a(ba);
    }

    public final bb a(CharSequence charsequence)
    {
        f = charsequence;
        g = true;
        return this;
    }

    public final bb b(CharSequence charsequence)
    {
        a.add(charsequence);
        return this;
    }
}
