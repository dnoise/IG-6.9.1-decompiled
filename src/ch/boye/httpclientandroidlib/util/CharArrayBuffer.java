// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.util;

import ch.boye.httpclientandroidlib.protocol.HTTP;
import java.io.Serializable;

// Referenced classes of package ch.boye.httpclientandroidlib.util:
//            ByteArrayBuffer

public final class CharArrayBuffer
    implements Serializable
{

    private static final long serialVersionUID = 0xa9d55e649986df41L;
    private char buffer[];
    private int len;

    public CharArrayBuffer(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException("Buffer capacity may not be negative");
        } else
        {
            buffer = new char[i];
            return;
        }
    }

    private void expand(int i)
    {
        char ac[] = new char[Math.max(buffer.length << 1, i)];
        System.arraycopy(buffer, 0, ac, 0, len);
        buffer = ac;
    }

    public final void append(char c)
    {
        int i = 1 + len;
        if (i > buffer.length)
        {
            expand(i);
        }
        buffer[len] = c;
        len = i;
    }

    public final void append(ByteArrayBuffer bytearraybuffer, int i, int j)
    {
        if (bytearraybuffer == null)
        {
            return;
        } else
        {
            append(bytearraybuffer.buffer(), i, j);
            return;
        }
    }

    public final void append(CharArrayBuffer chararraybuffer)
    {
        if (chararraybuffer == null)
        {
            return;
        } else
        {
            append(chararraybuffer.buffer, 0, chararraybuffer.len);
            return;
        }
    }

    public final void append(CharArrayBuffer chararraybuffer, int i, int j)
    {
        if (chararraybuffer == null)
        {
            return;
        } else
        {
            append(chararraybuffer.buffer, i, j);
            return;
        }
    }

    public final void append(Object obj)
    {
        append(String.valueOf(obj));
    }

    public final void append(String s)
    {
        if (s == null)
        {
            s = "null";
        }
        int i = s.length();
        int j = i + len;
        if (j > buffer.length)
        {
            expand(j);
        }
        s.getChars(0, i, buffer, len);
        len = j;
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
                int k = len;
                int l = k + j;
                if (l > buffer.length)
                {
                    expand(l);
                }
                for (; k < l; k++)
                {
                    buffer[k] = (char)(0xff & abyte0[i]);
                    i++;
                }

                len = l;
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
                int k = j + len;
                if (k > buffer.length)
                {
                    expand(k);
                }
                System.arraycopy(ac, i, buffer, len, j);
                len = k;
                return;
            }
        }
    }

    public final char[] buffer()
    {
        return buffer;
    }

    public final int capacity()
    {
        return buffer.length;
    }

    public final char charAt(int i)
    {
        return buffer[i];
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

    public final int indexOf(int i)
    {
        return indexOf(i, 0, len);
    }

    public final int indexOf(int i, int j, int k)
    {
        if (j < 0)
        {
            j = 0;
        }
        if (k > len)
        {
            k = len;
        }
        if (j <= k)
        {
            break MISSING_BLOCK_LABEL_49;
        }
_L2:
        return -1;
_L4:
        int l;
        l++;
_L5:
        if (l >= k) goto _L2; else goto _L1
_L1:
        if (buffer[l] != i) goto _L4; else goto _L3
_L3:
        return l;
        l = j;
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

    public final String substring(int i, int j)
    {
        return new String(buffer, i, j - i);
    }

    public final String substringTrimmed(int i, int j)
    {
        if (i < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("Negative beginIndex: ")).append(i).toString());
        }
        if (j > len)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("endIndex: ")).append(j).append(" > length: ").append(len).toString());
        }
        if (i > j)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("beginIndex: ")).append(i).append(" > endIndex: ").append(j).toString());
        }
        for (; i < j && HTTP.isWhitespace(buffer[i]); i++) { }
        for (; j > i && HTTP.isWhitespace(buffer[j - 1]); j--) { }
        return new String(buffer, i, j - i);
    }

    public final char[] toCharArray()
    {
        char ac[] = new char[len];
        if (len > 0)
        {
            System.arraycopy(buffer, 0, ac, 0, len);
        }
        return ac;
    }

    public final String toString()
    {
        return new String(buffer, 0, len);
    }
}
