// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;

// Referenced classes of package android.support.v4.app:
//            cr

final class ct
{

    private static Bundle a(cr cr1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("resultKey", cr1.a());
        bundle.putCharSequence("label", cr1.b());
        bundle.putCharSequenceArray("choices", cr1.c());
        bundle.putBoolean("allowFreeFormInput", cr1.d());
        bundle.putBundle("extras", cr1.e());
        return bundle;
    }

    static Bundle[] a(cr acr[])
    {
        if (acr == null)
        {
            return null;
        }
        Bundle abundle[] = new Bundle[acr.length];
        for (int i = 0; i < acr.length; i++)
        {
            abundle[i] = a(acr[i]);
        }

        return abundle;
    }
}
