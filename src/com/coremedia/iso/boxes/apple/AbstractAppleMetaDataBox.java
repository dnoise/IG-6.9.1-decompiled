// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.coremedia.iso.k;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.c.a;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.coremedia.iso.boxes.apple:
//            AppleDataBox

public abstract class AbstractAppleMetaDataBox extends AbstractBox
    implements ContainerBox
{

    static final boolean $assertionsDisabled;
    private static Logger LOG = Logger.getLogger(com/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox.getName());
    AppleDataBox appleDataBox;

    public AbstractAppleMetaDataBox(String s)
    {
        super(s);
        appleDataBox = new AppleDataBox();
    }

    public static byte[] hexStringToByteArray(String s)
    {
        int i = s.length();
        byte abyte0[] = new byte[i / 2];
        for (int j = 0; j < i; j += 2)
        {
            abyte0[j / 2] = (byte)((Character.digit(s.charAt(j), 16) << 4) + Character.digit(s.charAt(j + 1), 16));
        }

        return abyte0;
    }

    static long toLong(byte byte0)
    {
        if (byte0 < 0)
        {
            return (long)(byte0 + 256);
        } else
        {
            return (long)byte0;
        }
    }

    public void _parseDetails(ByteBuffer bytebuffer)
    {
        e.b(bytebuffer);
        String s = e.l(bytebuffer);
        if (!$assertionsDisabled && !"data".equals(s))
        {
            throw new AssertionError();
        }
        appleDataBox = new AppleDataBox();
        try
        {
            appleDataBox.parse(new a(bytebuffer), null, bytebuffer.remaining(), null);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        appleDataBox.setParent(this);
    }

    public List getBoxes()
    {
        return Collections.singletonList(appleDataBox);
    }

    public List getBoxes(Class class1)
    {
        return getBoxes(class1, false);
    }

    public List getBoxes(Class class1, boolean flag)
    {
        if (class1.isAssignableFrom(appleDataBox.getClass()))
        {
            return Collections.singletonList(appleDataBox);
        } else
        {
            return null;
        }
    }

    protected void getContent(ByteBuffer bytebuffer)
    {
        try
        {
            appleDataBox.getBox(new a(bytebuffer));
            return;
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("The Channel is based on a ByteBuffer and therefore it shouldn't throw any exception");
        }
    }

    protected long getContentSize()
    {
        return appleDataBox.getSize();
    }

    public long getNumOfBytesToFirstChild()
    {
        return getSize() - appleDataBox.getSize();
    }

    public String getValue()
    {
        int i = 0;
        int j = 1;
        if (appleDataBox.getFlags() == j)
        {
            return k.a(appleDataBox.getData());
        }
        if (appleDataBox.getFlags() == 21)
        {
            byte abyte0[] = appleDataBox.getData();
            int l = abyte0.length;
            int i1 = abyte0.length;
            long l1 = 0L;
            while (i < i1) 
            {
                long l2 = toLong(abyte0[i]);
                int j1 = j + 1;
                l1 += l2 << 8 * (l - j);
                i++;
                j = j1;
            }
            return String.valueOf(l1);
        }
        if (appleDataBox.getFlags() == 0)
        {
            Object aobj[] = new Object[j];
            aobj[0] = new BigInteger(appleDataBox.getData());
            return String.format("%x", aobj);
        } else
        {
            return "unknown";
        }
    }

    public void setBoxes(List list)
    {
        if (list.size() == 1 && (list.get(0) instanceof AppleDataBox))
        {
            appleDataBox = (AppleDataBox)list.get(0);
            return;
        } else
        {
            throw new IllegalArgumentException("This box only accepts one AppleDataBox child");
        }
    }

    public void setValue(String s)
    {
        if (appleDataBox.getFlags() == 1)
        {
            appleDataBox = new AppleDataBox();
            appleDataBox.setVersion(0);
            appleDataBox.setFlags(1);
            appleDataBox.setFourBytes(new byte[4]);
            appleDataBox.setData(k.a(s));
            return;
        }
        if (appleDataBox.getFlags() == 21)
        {
            byte abyte0[] = appleDataBox.getData();
            appleDataBox = new AppleDataBox();
            appleDataBox.setVersion(0);
            appleDataBox.setFlags(21);
            appleDataBox.setFourBytes(new byte[4]);
            ByteBuffer bytebuffer = ByteBuffer.allocate(abyte0.length);
            if (abyte0.length == 1)
            {
                g.d(bytebuffer, 0xff & Byte.parseByte(s));
            } else
            if (abyte0.length == 2)
            {
                g.b(bytebuffer, Integer.parseInt(s));
            } else
            if (abyte0.length == 4)
            {
                g.b(bytebuffer, Long.parseLong(s));
            } else
            if (abyte0.length == 8)
            {
                g.a(bytebuffer, Long.parseLong(s));
            } else
            {
                throw new Error("The content length within the appleDataBox is neither 1, 2, 4 or 8. I can't handle that!");
            }
            appleDataBox.setData(bytebuffer.array());
            return;
        }
        if (appleDataBox.getFlags() == 0)
        {
            appleDataBox = new AppleDataBox();
            appleDataBox.setVersion(0);
            appleDataBox.setFlags(0);
            appleDataBox.setFourBytes(new byte[4]);
            appleDataBox.setData(hexStringToByteArray(s));
            return;
        } else
        {
            LOG.warning((new StringBuilder("Don't know how to handle appleDataBox with flag=")).append(appleDataBox.getFlags()).toString());
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append("{appleDataBox=").append(getValue()).append('}').toString();
    }

    static 
    {
        boolean flag;
        if (!com/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
