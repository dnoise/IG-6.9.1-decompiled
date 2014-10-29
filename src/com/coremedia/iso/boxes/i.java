// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.coremedia.iso.boxes:
//            j

public final class i
{

    private long a;
    private int b;
    private List c;

    public i()
    {
        c = new ArrayList();
    }

    public final long a()
    {
        return a;
    }

    public final void a(long l)
    {
        a = l;
    }

    public final void a(j j)
    {
        c.add(j);
        b = 1 + b;
    }

    public final int b()
    {
        return b;
    }

    public final List c()
    {
        return c;
    }

    public final String toString()
    {
        return (new StringBuilder("SampleEntry{sampleDelta=")).append(a).append(", subsampleCount=").append(b).append(", subsampleEntries=").append(c).append('}').toString();
    }
}
