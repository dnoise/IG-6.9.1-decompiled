// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.a.a:
//            d, j, f, c

public final class b
{

    private static final List o;
    private static final List p;
    private f a;
    private j b;
    private boolean c;
    private int d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private byte k[];
    private byte l[];
    private boolean m;
    private ByteArrayOutputStream n;

    public b(f f1, j j1)
    {
        c = true;
        k = new byte[0];
        l = new byte[0];
        m = false;
        n = new ByteArrayOutputStream();
        a = f1;
        b = j1;
    }

    private static long a(byte abyte0[], int i1)
    {
        if (abyte0.length < i1)
        {
            throw new IllegalArgumentException("length must be less than or equal to b.length");
        }
        long l1 = 0L;
        for (int j1 = 0; j1 < i1; j1++)
        {
            int k1 = 8 * (i1 - 1 - j1);
            l1 += (0xff & abyte0[j1 + 0]) << k1;
        }

        return l1;
    }

    private void a()
    {
        byte abyte0[] = a(l, k, 0);
        int i1 = g;
        if (i1 == 0)
        {
            if (j == 0)
            {
                throw new d("Mode was not set.");
            }
            n.write(abyte0);
            if (e)
            {
                byte abyte1[] = n.toByteArray();
                if (j == 1)
                {
                    b.onMessage(c(abyte1));
                } else
                {
                    b.onMessage(abyte1);
                }
                b();
            }
        } else
        {
            if (i1 == 1)
            {
                if (e)
                {
                    String s1 = c(abyte0);
                    b.onMessage(s1);
                    return;
                } else
                {
                    j = 1;
                    n.write(abyte0);
                    return;
                }
            }
            if (i1 == 2)
            {
                if (e)
                {
                    b.onMessage(abyte0);
                    return;
                } else
                {
                    j = 2;
                    n.write(abyte0);
                    return;
                }
            }
            if (i1 == 8)
            {
                int j1 = abyte0.length;
                int k1 = 0;
                if (j1 >= 2)
                {
                    k1 = 256 * abyte0[0] + abyte0[1];
                }
                String s;
                if (abyte0.length > 2)
                {
                    s = c(e(abyte0));
                } else
                {
                    s = null;
                }
                (new StringBuilder("Got close op! ")).append(k1).append(" ").append(s);
                b.onDisconnect(k1, s);
                return;
            }
            if (i1 == 9)
            {
                if (abyte0.length > 125)
                {
                    throw new d("Ping payload too large");
                } else
                {
                    b.onPing();
                    a.a(b(abyte0));
                    return;
                }
            }
            if (i1 == 10)
            {
                c(abyte0);
                return;
            }
        }
    }

    private void a(byte byte0)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        if ((byte0 & 0x40) == 64)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((byte0 & 0x20) == 32)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if ((byte0 & 0x10) == 16)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag || flag1 || flag2)
        {
            throw new d("RSV not zero");
        }
        boolean flag3;
        if ((byte0 & 0x80) == 128)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        e = flag3;
        g = byte0 & 0xf;
        k = new byte[0];
        l = new byte[0];
        if (!o.contains(Integer.valueOf(g)))
        {
            throw new d("Bad opcode");
        }
        if (!p.contains(Integer.valueOf(g)) && !e)
        {
            throw new d("Expected non-final packet");
        } else
        {
            d = 1;
            return;
        }
    }

    private void a(byte abyte0[])
    {
        i = d(abyte0);
        int i1;
        if (f)
        {
            i1 = 3;
        } else
        {
            i1 = 4;
        }
        d = i1;
    }

    private byte[] a(Object obj, int i1, int j1)
    {
        if (m)
        {
            return null;
        }
        (new StringBuilder("Creating frame for: ")).append(obj).append(" op: ").append(i1).append(" err: -1");
        byte abyte0[];
        int k1;
        byte byte0;
        byte byte1;
        int l1;
        char c1;
        byte abyte1[];
        if (obj instanceof String)
        {
            abyte0 = c((String)obj);
        } else
        {
            abyte0 = (byte[])(byte[])obj;
        }
        k1 = 0 + abyte0.length;
        if (k1 <= 125)
        {
            byte0 = 2;
        } else
        if (k1 <= 65535)
        {
            byte0 = 4;
        } else
        {
            byte0 = 10;
        }
        if (c)
        {
            byte1 = 4;
        } else
        {
            byte1 = 0;
        }
        l1 = byte0 + byte1;
        if (c)
        {
            c1 = '\200';
        } else
        {
            c1 = '\0';
        }
        abyte1 = new byte[k1 + l1];
        abyte1[0] = (byte)(0xffffff80 | (byte)i1);
        if (k1 <= 125)
        {
            abyte1[1] = (byte)(c1 | k1);
        } else
        if (k1 <= 65535)
        {
            abyte1[1] = (byte)(c1 | 0x7e);
            abyte1[2] = (byte)(int)Math.floor(k1 / 256);
            abyte1[3] = (byte)(k1 & 0xff);
        } else
        {
            abyte1[1] = (byte)(c1 | 0x7f);
            abyte1[2] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 56D)));
            abyte1[3] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 48D)));
            abyte1[4] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 40D)));
            abyte1[5] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 32D)));
            abyte1[6] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 24D)));
            abyte1[7] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 16D)));
            abyte1[8] = (byte)(0xff & (int)Math.floor((double)k1 / Math.pow(2D, 8D)));
            abyte1[9] = (byte)(k1 & 0xff);
        }
        System.arraycopy(abyte0, 0, abyte1, l1 + 0, abyte0.length);
        if (c)
        {
            byte abyte2[] = new byte[4];
            abyte2[0] = (byte)(int)Math.floor(256D * Math.random());
            abyte2[1] = (byte)(int)Math.floor(256D * Math.random());
            abyte2[2] = (byte)(int)Math.floor(256D * Math.random());
            abyte2[3] = (byte)(int)Math.floor(256D * Math.random());
            System.arraycopy(abyte2, 0, abyte1, byte0, 4);
            a(abyte1, abyte2, l1);
        }
        return abyte1;
    }

    private static byte[] a(byte abyte0[], byte abyte1[], int i1)
    {
        if (abyte1.length != 0)
        {
            int j1 = 0;
            while (j1 < abyte0.length - i1) 
            {
                abyte0[i1 + j1] = (byte)(abyte0[i1 + j1] ^ abyte1[j1 % 4]);
                j1++;
            }
        }
        return abyte0;
    }

    private void b()
    {
        j = 0;
        n.reset();
    }

    private void b(byte byte0)
    {
        boolean flag;
        if ((byte0 & 0x80) == 128)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        f = flag;
        i = byte0 & 0x7f;
        if (i >= 0 && i <= 125)
        {
            int j1;
            if (f)
            {
                j1 = 3;
            } else
            {
                j1 = 4;
            }
            d = j1;
            return;
        }
        int i1;
        if (i == 126)
        {
            i1 = 2;
        } else
        {
            i1 = 8;
        }
        h = i1;
        d = 2;
    }

    private byte[] b(String s)
    {
        return a(s, 1, -1);
    }

    private byte[] b(byte abyte0[])
    {
        return a(abyte0, 10, -1);
    }

    private static String c(byte abyte0[])
    {
        String s;
        try
        {
            s = new String(abyte0, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return s;
    }

    private static byte[] c(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            throw new RuntimeException(unsupportedencodingexception);
        }
        return abyte0;
    }

    private static int d(byte abyte0[])
    {
        long l1 = a(abyte0, abyte0.length);
        if (l1 < 0L || l1 > 0x7fffffffL)
        {
            throw new d((new StringBuilder("Bad integer: ")).append(l1).toString());
        } else
        {
            return (int)l1;
        }
    }

    private static byte[] e(byte abyte0[])
    {
        return Arrays.copyOfRange(abyte0, 2, abyte0.length);
    }

    public final void a(c c1)
    {
        do
        {
            if (c1.available() != -1)
            {
                switch (d)
                {
                case 0: // '\0'
                    a(c1.readByte());
                    break;

                case 1: // '\001'
                    b(c1.readByte());
                    break;

                case 2: // '\002'
                    a(c1.a(h));
                    break;

                case 3: // '\003'
                    k = c1.a(4);
                    d = 4;
                    break;

                case 4: // '\004'
                    l = c1.a(i);
                    a();
                    d = 0;
                    break;
                }
            } else
            {
                b.onDisconnect(0, "EOF");
                return;
            }
        } while (true);
    }

    public final byte[] a(String s)
    {
        return b(s);
    }

    static 
    {
        Integer ainteger[] = new Integer[6];
        ainteger[0] = Integer.valueOf(0);
        ainteger[1] = Integer.valueOf(1);
        ainteger[2] = Integer.valueOf(2);
        ainteger[3] = Integer.valueOf(8);
        ainteger[4] = Integer.valueOf(9);
        ainteger[5] = Integer.valueOf(10);
        o = Arrays.asList(ainteger);
        Integer ainteger1[] = new Integer[3];
        ainteger1[0] = Integer.valueOf(0);
        ainteger1[1] = Integer.valueOf(1);
        ainteger1[2] = Integer.valueOf(2);
        p = Arrays.asList(ainteger1);
    }
}
