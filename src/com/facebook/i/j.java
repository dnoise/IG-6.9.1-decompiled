// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.facebook.i:
//            i

public final class j
    implements Externalizable
{

    private List a;

    public j()
    {
        a = new ArrayList();
    }

    private int b()
    {
        return a.size();
    }

    public final List a()
    {
        return a;
    }

    public final void readExternal(ObjectInput objectinput)
    {
        int k = objectinput.readInt();
        for (int l = 0; l < k; l++)
        {
            i i1 = new i();
            i1.readExternal(objectinput);
            a.add(i1);
        }

    }

    public final void writeExternal(ObjectOutput objectoutput)
    {
        int k = b();
        objectoutput.writeInt(k);
        for (int l = 0; l < k; l++)
        {
            ((i)a.get(l)).writeExternal(objectoutput);
        }

    }
}
