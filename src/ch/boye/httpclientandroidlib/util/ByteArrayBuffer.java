// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.util;

import java.io.Serializable;

// Referenced classes of package ch.boye.httpclientandroidlib.util:
//            CharArrayBuffer

public final class ByteArrayBuffer
    implements Serializable
{

    private static final long serialVersionUID = 0x3c7eae24203b8ca4L;
    private byte buffer[];
    private int len;

    public ByteArrayBuffer(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("Buffer capacity may not be negative");
        } else
        {
            buffer = new byte[i];
            return;
        }
    }

    private void expand(int i)
    {
        byte abyte0[] = new byte[Math.max(buffer.length << 1, i)];
        System.arraycopy(buffer, 0, abyte0, 0, len);
        buffer = abyte0;
    }

    public final void append(int i)
    {
        int j = 1 + len;
        if (j > buffer.length)
        {
            expand(j);
        }
        buffer[len] = (byte)i;
        len = j;
    }

    public final void append(CharArrayBuffer chararraybuffer, int i, int j)
    {
        if (chararraybuffer == null)
        {
            return;
        } else
        {
            append(chararraybuffer.buffer(), i, j);
            return;
        }
    }

    public final void append(byte abyte0[], int i, int j)
    {
        if (abyte0 != null)
        {
            if (i < 0 || i > abyte0.length || j < 0 || i + j < 0 || i + j > abyte0.length)
            {
                throw new IndexOutOfBoundsException((new StringBuilder("off: ")).append(i).append(" len: ").append(j).append(" b.length: ").append(abyte0.length).toString());
            }
            if (j != 0)
            {
                int k = j + len;
                if (k > buffer.length)
                {
                    expand(k);
                }
                System.arraycopy(abyte0, i, buffer, len, j);
                len = k;
                return;
            }
        }
    }

    public final void append(char ac[], int i, int j)
    {
        if (ac != null)
        {
            if (i < 0 || i > ac.length || j < 0 || i + j < 0 || i + j > ac.length)
            {
                throw new IndexOutOfBoundsException((new StringBuilder("off: ")).append(i).append(" len: ").append(j).append(" b.length: ").append(ac.length).toString());
            }
            if (j != 0)
            {
                int k = len;
                int l = k + j;
                if (l > buffer.length)
                {
                    expand(l);
                }
                for (; k < l; k++)
                {
                    buffer[k] = (byte)ac[i];
                    i++;
                }

                len = l;
                return;
            }
        }
    }

    public final byte[] buffer()
    {
        return buffer;
    }

    public final int byteAt(int i)
    {
        return buffer[i];
    }

    public final int capacity()
    {
        return buffer.length;
    }

    public final void clear()
    {
        len = 0;
    }

    public final void ensureCapacity(int i)
    {
        while (i <= 0 || i <= buffer.length - len) 
        {
            return;
        }
        expand(i + len);
    }

    public final int indexOf(byte byte0)
    {
        return indexOf(byte0, 0, len);
    }

    public final int indexOf(byte byte0, int i, int j)
    {
        if (i < 0)
        {
            i = 0;
        }
        if (j > len)
        {
            j = len;
        }
        if (i <= j)
        {
            break MISSING_BLOCK_LABEL_49;
        }
_L2:
        return -1;
_L4:
        int k;
        k++;
_L5:
        if (k >= j) goto _L2; else goto _L1
_L1:
        if (buffer[k] != byte0) goto _L4; else goto _L3
_L3:
        return k;
        k = i;
          goto _L5
    }

    public final boolean isEmpty()
    {
        return len == 0;
    }

    public final boolean isFull()
    {
        return len == buffer.length;
    }

    public final int length()
    {
        return len;
    }

    public final void setLength(int i)
    {
        if (i < 0 || i > buffer.length)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("len: ")).append(i).append(" < 0 or > buffer len: ").append(buffer.length).toString());
        } else
        {
            len = i;
            return;
        }
    }

    public final byte[] toByteArray()
    {
        byte abyte0[] = new byte[len];
        if (len > 0)
        {
            System.arraycopy(buffer, 0, abyte0, 0, len);
        }
        return abyte0;
    }
}
