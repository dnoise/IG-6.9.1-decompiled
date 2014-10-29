// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.RemoteInput;

// Referenced classes of package android.support.v4.app:
//            cr

final class cp
{

    static RemoteInput[] a(cr acr[])
    {
        if (acr == null)
        {
            return null;
        }
        RemoteInput aremoteinput[] = new RemoteInput[acr.length];
        for (int i = 0; i < acr.length; i++)
        {
            cr cr1 = acr[i];
            aremoteinput[i] = (new android.app.RemoteInput.Builder(cr1.a())).setLabel(cr1.b()).setChoices(cr1.c()).setAllowFreeFormInput(cr1.d()).addExtras(cr1.e()).build();
        }

        return aremoteinput;
    }
}
