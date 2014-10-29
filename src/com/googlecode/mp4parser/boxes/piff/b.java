// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            c, e, d

public abstract class b
{

    int a;

    public b(int i)
    {
        a = i;
    }

    public static List a(ByteBuffer bytebuffer, int i)
    {
        ArrayList arraylist;
        int j;
        arraylist = new ArrayList(i);
        j = 0;
_L6:
        int k;
        int l;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        k = e.e(bytebuffer);
        l = e.e(bytebuffer);
        k;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 111
    //                   2 123
    //                   3 136;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_136;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        Object obj = new c(k);
_L7:
        ((b) (obj)).a((ByteBuffer)bytebuffer.slice().limit(l));
        bytebuffer.position(l + bytebuffer.position());
        arraylist.add(obj);
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        obj = new com.googlecode.mp4parser.boxes.piff.e();
          goto _L7
_L3:
        obj = new c(2);
          goto _L7
        obj = new d();
          goto _L7
        return arraylist;
    }

    public abstract ByteBuffer a();

    public abstract void a(ByteBuffer bytebuffer);

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("PlayReadyRecord");
        stringbuilder.append("{type=").append(a);
        stringbuilder.append(", length=").append(a().limit());
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
