// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.d;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

// Referenced classes of package com.googlecode.mp4parser.boxes.piff:
//            a

public class f
{

    protected static Map a;
    ByteBuffer b;

    public f()
    {
    }

    public static f a(UUID uuid, ByteBuffer bytebuffer)
    {
        Class class1 = (Class)a.get(uuid);
        f f1 = new f();
        f f2;
        if (class1 != null)
        {
            try
            {
                f2 = (f)class1.newInstance();
            }
            catch (InstantiationException instantiationexception)
            {
                throw new RuntimeException(instantiationexception);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new RuntimeException(illegalaccessexception);
            }
        } else
        {
            f2 = f1;
        }
        f2.a(bytebuffer);
        return f2;
    }

    public ByteBuffer a()
    {
        return b;
    }

    public void a(ByteBuffer bytebuffer)
    {
        b = bytebuffer;
    }

    public boolean equals(Object obj)
    {
        if ((obj instanceof f) && getClass().equals(obj.getClass()))
        {
            return b.equals(((f)obj).b);
        } else
        {
            return false;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ProtectionSpecificHeader");
        stringbuilder.append("{data=");
        ByteBuffer bytebuffer = a().duplicate();
        bytebuffer.rewind();
        byte abyte0[] = new byte[bytebuffer.limit()];
        bytebuffer.get(abyte0);
        stringbuilder.append(d.a(abyte0));
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    static 
    {
        HashMap hashmap = new HashMap();
        a = hashmap;
        hashmap.put(UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95"), com/googlecode/mp4parser/boxes/piff/a);
    }
}
