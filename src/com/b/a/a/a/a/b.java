// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a.a.a.a;


// Referenced classes of package com.b.a.a.a.a:
//            c

public abstract class b
{

    private static final ThreadLocal a = new c();

    public b()
    {
    }

    private static final char[] a(char ac[], int i, int j)
    {
        char ac1[] = new char[j];
        if (i > 0)
        {
            System.arraycopy(ac, 0, ac1, 0, i);
        }
        return ac1;
    }

    private static int b(CharSequence charsequence, int i, int j)
    {
        if (i < j)
        {
            int k = i + 1;
            char c1 = charsequence.charAt(i);
            if (c1 < '\uD800' || c1 > '\uDFFF')
            {
                return c1;
            }
            if (c1 <= '\uDBFF')
            {
                if (k == j)
                {
                    return -c1;
                }
                char c2 = charsequence.charAt(k);
                if (Character.isLowSurrogate(c2))
                {
                    return Character.toCodePoint(c1, c2);
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder("Expected low surrogate but got char '")).append(c2).append("' with value ").append(c2).append(" at index ").append(k).toString());
                }
            } else
            {
                throw new IllegalArgumentException((new StringBuilder("Unexpected low surrogate character '")).append(c1).append("' with value ").append(c1).append(" at index ").append(k - 1).toString());
            }
        } else
        {
            throw new IndexOutOfBoundsException("Index exceeds specified range");
        }
    }

    protected int a(CharSequence charsequence, int i, int j)
    {
        do
        {
            if (i >= j)
            {
                break;
            }
            int k = b(charsequence, i, j);
            if (k < 0 || a(k) != null)
            {
                break;
            }
            byte byte0;
            if (Character.isSupplementaryCodePoint(k))
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            i += byte0;
        } while (true);
        return i;
    }

    public String a(String s)
    {
        int i = s.length();
        int j = a(((CharSequence) (s)), 0, i);
        if (j == i)
        {
            return s;
        } else
        {
            return a(s, j);
        }
    }

    protected final String a(String s, int i)
    {
        int j = s.length();
        char ac[] = (char[])a.get();
        int k = 0;
        char ac1[] = ac;
        int l = 0;
        while (i < j) 
        {
            int k1 = b(s, i, j);
            if (k1 < 0)
            {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char ac2[] = a(k1);
            if (ac2 != null)
            {
                int i2 = i - k;
                int j2 = l + i2 + ac2.length;
                if (ac1.length < j2)
                {
                    ac1 = a(ac1, l, 32 + (j2 + (j - i)));
                }
                if (i2 > 0)
                {
                    s.getChars(k, i, ac1, l);
                    l += i2;
                }
                if (ac2.length > 0)
                {
                    System.arraycopy(ac2, 0, ac1, l, ac2.length);
                    l += ac2.length;
                }
            }
            byte byte0;
            int l1;
            if (Character.isSupplementaryCodePoint(k1))
            {
                byte0 = 2;
            } else
            {
                byte0 = 1;
            }
            l1 = byte0 + i;
            i = a(((CharSequence) (s)), l1, j);
            k = l1;
        }
        int i1 = j - k;
        if (i1 > 0)
        {
            int j1 = i1 + l;
            if (ac1.length < j1)
            {
                ac1 = a(ac1, l, j1);
            }
            s.getChars(k, j, ac1, l);
            l = j1;
        }
        return new String(ac1, 0, l);
    }

    protected abstract char[] a(int i);

}
