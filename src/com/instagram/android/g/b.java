// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.android.maps.b.a;
import com.instagram.android.maps.b.h;
import com.instagram.feed.d.ai;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;

public final class b
    implements a, ai
{

    private double a;
    private double b;
    private double c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;

    public b()
    {
    }

    private int a(a a1)
    {
        b b1 = (b)a1;
        return Double.compare(c, b1.c);
    }

    public static b a(l l1)
    {
        b b1 = null;
        do
        {
            if (l1.nextToken() == r.c)
            {
                break;
            }
            String s = l1.getCurrentName();
            if (s != null && b1 == null)
            {
                b1 = new b();
            }
            if ("media_id".equals(s))
            {
                l1.nextToken();
                String s1 = l1.getText();
                String as[] = s1.split("_");
                b1.g = s1;
                b1.c = Double.valueOf(as[0]).doubleValue();
                b1.h = as[1];
            } else
            if ("lat".equals(s))
            {
                l1.nextToken();
                b1.a = l1.getValueAsDouble();
            } else
            if ("lng".equals(s))
            {
                l1.nextToken();
                b1.b = l1.getValueAsDouble();
            } else
            if ("thumbnail".equals(s))
            {
                l1.nextToken();
                b1.d = l1.getText();
            } else
            if ("display_url".equals(s))
            {
                l1.nextToken();
                b1.e = l1.getText();
            } else
            if ("low_res_url".equals(s))
            {
                l1.nextToken();
                b1.f = l1.getText();
            } else
            if ("location".equals(s))
            {
                l1.nextToken();
                b1.i = l1.getText();
            } else
            if (s != null)
            {
                l1.skipChildren();
            }
        } while (true);
        return b1;
    }

    public static String a(ArrayList arraylist)
    {
        String s;
        int k;
        TreeMap treemap;
        Iterator iterator;
        s = null;
        k = 0;
        treemap = new TreeMap();
        iterator = arraylist.iterator();
_L2:
        int i1;
        String s2;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        b b1 = (b)((h)iterator.next()).g();
        String s1 = b1.d();
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        Integer integer = (Integer)treemap.get(s1);
        Integer integer1;
        if (integer == null)
        {
            integer1 = new Integer(1);
        } else
        {
            integer1 = new Integer(1 + integer.intValue());
        }
        treemap.put(s1, integer1);
        if (s != null && integer1.intValue() <= k)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        s2 = b1.d();
        i1 = integer1.intValue();
_L3:
        k = i1;
        s = s2;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        i1 = k;
        s2 = s;
          goto _L3
    }

    private String j()
    {
        return e;
    }

    public final String a()
    {
        return d;
    }

    public final String a(int k)
    {
        if (k <= 150)
        {
            return d;
        }
        if (k <= 306)
        {
            return f;
        } else
        {
            return j();
        }
    }

    public final double b()
    {
        return a;
    }

    public final double c()
    {
        return b;
    }

    public final int compareTo(Object obj)
    {
        return a((a)obj);
    }

    public final String d()
    {
        return i;
    }

    public final String e()
    {
        return d;
    }

    public final boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            b b1 = (b)obj;
            if (g == null ? b1.g != null : !g.equals(b1.g))
            {
                return false;
            }
        }
        return true;
    }

    public final String f()
    {
        return g;
    }

    public final boolean g()
    {
        return false;
    }

    public final String h()
    {
        return null;
    }

    public final int hashCode()
    {
        if (g != null)
        {
            return g.hashCode();
        } else
        {
            return 0;
        }
    }

    public final String i()
    {
        return null;
    }
}
