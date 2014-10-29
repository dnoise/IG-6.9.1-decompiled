// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package b.a.a.a.a;


public abstract class b
{

    private final int a = 3;
    protected final byte b = 61;
    protected final int c;
    protected byte d[];
    protected int e;
    protected boolean f;
    protected int g;
    protected int h;
    private final int i = 4;
    private final int j;
    private int k;

    protected b(int l, int i1)
    {
        int j1;
        if (l > 0 && i1 > 0)
        {
            j1 = 4 * (l / 4);
        } else
        {
            j1 = 0;
        }
        c = j1;
        j = i1;
    }

    private int a()
    {
        if (d != null)
        {
            return e - k;
        } else
        {
            return 0;
        }
    }

    private int a(byte abyte0[], int l)
    {
        if (d != null)
        {
            int i1 = Math.min(a(), l);
            System.arraycopy(d, k, abyte0, 0, i1);
            k = i1 + k;
            if (k >= e)
            {
                d = null;
            }
            return i1;
        }
        return !f ? 0 : -1;
    }

    private void b()
    {
        if (d == null)
        {
            d = new byte[8192];
            e = 0;
            k = 0;
            return;
        } else
        {
            byte abyte0[] = new byte[2 * d.length];
            System.arraycopy(d, 0, abyte0, 0, d.length);
            d = abyte0;
            return;
        }
    }

    private void c()
    {
        d = null;
        e = 0;
        k = 0;
        g = 0;
        h = 0;
        f = false;
    }

    protected final void a(int l)
    {
        if (d == null || d.length < l + e)
        {
            b();
        }
    }

    abstract void a(byte abyte0[], int l, int i1);

    protected abstract boolean a(byte byte0);

    public final byte[] a(byte abyte0[])
    {
        c();
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        } else
        {
            b(abyte0, 0, abyte0.length);
            b(abyte0, 0, -1);
            byte abyte1[] = new byte[e];
            a(abyte1, abyte1.length);
            return abyte1;
        }
    }

    abstract void b(byte abyte0[], int l, int i1);

    public final byte[] b(byte abyte0[])
    {
        c();
        if (abyte0 == null || abyte0.length == 0)
        {
            return abyte0;
        } else
        {
            a(abyte0, 0, abyte0.length);
            a(abyte0, 0, -1);
            byte abyte1[] = new byte[e - k];
            a(abyte1, abyte1.length);
            return abyte1;
        }
    }

    protected final boolean c(byte abyte0[])
    {
        if (abyte0 != null)
        {
            int l = abyte0.length;
            int i1 = 0;
            while (i1 < l) 
            {
                byte byte0 = abyte0[i1];
                if (61 == byte0 || a(byte0))
                {
                    return true;
                }
                i1++;
            }
        }
        return false;
    }
}
