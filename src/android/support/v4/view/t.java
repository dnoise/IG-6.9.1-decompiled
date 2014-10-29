// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.KeyEvent;

// Referenced classes of package android.support.v4.view:
//            w

class t
    implements w
{

    t()
    {
    }

    private static int a(int i, int j, int k, int l, int i1)
    {
        boolean flag = true;
        boolean flag1;
        int j1;
        if ((j & k) != 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        j1 = l | i1;
        if ((j & j1) == 0)
        {
            flag = false;
        }
        if (flag1)
        {
            if (flag)
            {
                throw new IllegalArgumentException("bad arguments");
            }
            i &= ~j1;
        } else
        if (flag)
        {
            return i & ~k;
        }
        return i;
    }

    public int a(int i)
    {
        int j;
        if ((i & 0xc0) != 0)
        {
            j = i | 1;
        } else
        {
            j = i;
        }
        if ((j & 0x30) != 0)
        {
            j |= 2;
        }
        return j & 0xf7;
    }

    public void a(KeyEvent keyevent)
    {
    }

    public boolean a(int i, int j)
    {
        return a(a(0xf7 & a(i), 1, 1, 64, 128), 1, 2, 16, 32) == 1;
    }

    public boolean b(int i)
    {
        return (0xf7 & a(i)) == 0;
    }
}
