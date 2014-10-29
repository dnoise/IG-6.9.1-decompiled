// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.d;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes:
//            AbstractSampleEncryptionBox, b

public final class a
{

    public byte a[];
    public List b;
    final AbstractSampleEncryptionBox c;

    public a(AbstractSampleEncryptionBox abstractsampleencryptionbox)
    {
        c = abstractsampleencryptionbox;
        super();
        b = new LinkedList();
    }

    public final int a()
    {
        int i;
        if (c.isOverrideTrackEncryptionBoxParameters())
        {
            i = c.ivSize;
        } else
        {
            i = a.length;
        }
        if (c.isSubSampleEncryption())
        {
            i += 2;
            for (Iterator iterator = b.iterator(); iterator.hasNext();)
            {
                iterator.next();
                i += 6;
            }

        }
        return i;
    }

    public final b a(int i, long l)
    {
        return new b(this, i, l);
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            a a1 = (a)obj;
            if (!(new BigInteger(a)).equals(new BigInteger(a1.a)))
            {
                return false;
            }
            if (b == null ? a1.b != null : !b.equals(a1.b))
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        int i;
        int j;
        List list;
        int k;
        if (a != null)
        {
            i = Arrays.hashCode(a);
        } else
        {
            i = 0;
        }
        j = i * 31;
        list = b;
        k = 0;
        if (list != null)
        {
            k = b.hashCode();
        }
        return j + k;
    }

    public final String toString()
    {
        return (new StringBuilder("Entry{iv=")).append(d.a(a)).append(", pairs=").append(b).append('}').toString();
    }
}
