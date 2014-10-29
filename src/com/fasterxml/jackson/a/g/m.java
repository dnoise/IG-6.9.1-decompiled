// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.g;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.a.g:
//            l

public final class m extends com.fasterxml.jackson.a.g.l
{

    protected final l b[];
    protected int c;

    private m(l al[])
    {
        super(al[0]);
        b = al;
        c = 1;
    }

    public static m a(l l1, l l2)
    {
        if (!(l1 instanceof m) && !(l2 instanceof m))
        {
            return new m(new l[] {
                l1, l2
            });
        }
        ArrayList arraylist = new ArrayList();
        if (l1 instanceof m)
        {
            ((m)l1).a(((List) (arraylist)));
        } else
        {
            arraylist.add(l1);
        }
        if (l2 instanceof m)
        {
            ((m)l2).a(((List) (arraylist)));
        } else
        {
            arraylist.add(l2);
        }
        return new m((l[])arraylist.toArray(new l[arraylist.size()]));
    }

    private void a(List list)
    {
        int i = -1 + c;
        int j = b.length;
        int k = i;
        while (k < j) 
        {
            l l1 = b[k];
            if (l1 instanceof m)
            {
                ((m)l1).a(list);
            } else
            {
                list.add(l1);
            }
            k++;
        }
    }

    private boolean a()
    {
        if (c >= b.length)
        {
            return false;
        } else
        {
            l al[] = b;
            int i = c;
            c = i + 1;
            a = al[i];
            return true;
        }
    }

    public final void close()
    {
        do
        {
            a.close();
        } while (a());
    }

    public final r nextToken()
    {
        r r = a.nextToken();
        if (r != null)
        {
            return r;
        }
        while (a()) 
        {
            r r1 = a.nextToken();
            if (r1 != null)
            {
                return r1;
            }
        }
        return null;
    }
}
