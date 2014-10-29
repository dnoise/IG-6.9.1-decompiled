// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import android.support.v4.c.d;
import android.text.TextUtils;
import com.facebook.e.a.a;
import java.util.List;

// Referenced classes of package com.facebook.e.c:
//            n, g, i

class j
{

    private static final Class a = com/facebook/e/c/j;

    j()
    {
    }

    private static String a(int k, List list, d d1)
    {
        StringBuilder stringbuilder;
        long l;
        long l1;
        int i1;
        long l2;
        int j1;
        boolean flag;
        stringbuilder = new StringBuilder();
        l = com.facebook.e.c.n.a();
        l1 = -1L;
        i1 = 0;
        l2 = -1L;
        j1 = 0;
        flag = false;
_L6:
        if (j1 >= list.size()) goto _L2; else goto _L1
_L1:
        g g2 = (g)list.get(j1);
        if (g2 == null) goto _L4; else goto _L3
_L3:
        if (flag)
        {
            break MISSING_BLOCK_LABEL_446;
        }
        if (g2.b() != k) goto _L4; else goto _L5
_L5:
        boolean flag2;
        l1 = g2.f();
        flag2 = true;
_L8:
        long l4;
        boolean flag1;
        int k2;
        i j3 = g2.c();
        if (j3 != i.f)
        {
            int k1;
            int i2;
            g g1;
            long l3;
            int i3;
            int i4;
            long l5;
            if (j3 == i.b || j3 == com.facebook.e.c.i.d)
            {
                if (i1 == 0)
                {
                    com.facebook.e.a.a.a(a, (new StringBuilder("Trace contains a stop event without a corresponding start: ")).append(list).toString());
                    i4 = i1;
                } else
                {
                    i4 = i1 - 1;
                }
            } else
            {
                i4 = i1;
            }
            stringbuilder.append(" ");
            g2.a(stringbuilder, l1, l2, i4);
            stringbuilder.append(" ");
            l5 = g2.f();
            stringbuilder.append("\n");
            if (j3 == com.facebook.e.c.i.a || j3 == i.c)
            {
                int j4 = i4 + 1;
                boolean flag4 = flag2;
                l4 = l5;
                flag1 = flag4;
                k2 = j4;
            } else
            {
                boolean flag5 = flag2;
                l4 = l5;
                k2 = i4;
                flag1 = flag5;
            }
        } else
        {
            boolean flag3 = flag2;
            int k3 = i1;
            l4 = l2;
            flag1 = flag3;
            k2 = k3;
        }
_L7:
        j1++;
        flag = flag1;
        i3 = k2;
        l2 = l4;
        i1 = i3;
          goto _L6
_L2:
        if (d1.a() != 0)
        {
            stringbuilder.append(" Unstopped timers:\n");
            k1 = d1.a();
            for (i2 = 0; i2 < k1; i2++)
            {
                g1 = (g)d1.e(i2);
                l3 = g1.f();
                stringbuilder.append("  ");
                stringbuilder.append(g1);
                stringbuilder.append(" (");
                stringbuilder.append((l - l3) / 0xf4240L);
                stringbuilder.append(" ms, started at ");
                stringbuilder.append(com.facebook.e.c.g.a(l3 / 0xf4240L));
                stringbuilder.append("\n");
            }

        }
        return stringbuilder.toString();
_L4:
        int j2 = i1;
        l4 = l2;
        flag1 = flag;
        k2 = j2;
          goto _L7
        flag2 = flag;
          goto _L8
    }

    static void a(int k, int l, String s, List list, d d1)
    {
        String s1;
        if (com.facebook.e.a.a.b(l))
        {
            if (!TextUtils.isEmpty(s1 = a(k, list, d1)))
            {
                if (s1.length() > 4000)
                {
                    String as[] = s1.split("\n");
                    StringBuilder stringbuilder1 = new StringBuilder();
                    a(stringbuilder1, 0, null, null);
                    int i1 = stringbuilder1.length();
                    int j1 = 0;
                    for (int k1 = 0; k1 < as.length;)
                    {
                        String s2;
                        String s3;
                        if (k1 != 0)
                        {
                            s2 = as[k1 - 1];
                        } else
                        {
                            s2 = null;
                        }
                        s3 = as[k1];
                        if (i1 == 0 || i1 + s3.length() < 4000)
                        {
                            stringbuilder1.append(s3);
                            stringbuilder1.append("\n");
                            i1 += 1 + s3.length();
                            k1++;
                        } else
                        {
                            com.facebook.e.a.a.a(l, s, stringbuilder1.toString());
                            stringbuilder1.setLength(0);
                            j1++;
                            a(stringbuilder1, j1, s2, s3);
                            i1 = stringbuilder1.length();
                        }
                    }

                    if (i1 > 0)
                    {
                        com.facebook.e.a.a.a(l, s, stringbuilder1.toString());
                        return;
                    }
                } else
                {
                    StringBuilder stringbuilder = new StringBuilder();
                    a(stringbuilder);
                    stringbuilder.append(s1);
                    com.facebook.e.a.a.a(l, s, stringbuilder.toString());
                    return;
                }
            }
        }
    }

    private static void a(StringBuilder stringbuilder)
    {
        a(stringbuilder, 0, null, null);
    }

    private static void a(StringBuilder stringbuilder, int k, String s, String s1)
    {
        stringbuilder.append("Thread trace:(").append(k).append(")");
        if (k >= 10) goto _L2; else goto _L1
_L1:
        stringbuilder.append("    ");
_L4:
        stringbuilder.append("                 ");
        a(stringbuilder, s, s1);
        stringbuilder.append("\n");
        stringbuilder.append(" .                   TOTAL   THREAD  ");
        a(stringbuilder, s, s1);
        stringbuilder.append("\n");
        return;
_L2:
        if (k < 100)
        {
            stringbuilder.append("   ");
        } else
        if (k < 1000)
        {
            stringbuilder.append("  ");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void a(StringBuilder stringbuilder, String s, String s1)
    {
        if (s != null && s1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k;
        int l;
        int i1;
        int j1;
        k = Math.max(s.length(), s1.length());
        l = 0;
        i1 = 0;
        j1 = 0;
_L5:
        if (l >= k) goto _L1; else goto _L3
_L3:
        char c;
        char c1;
        if (l < s.length())
        {
            c = s.charAt(l);
        } else
        {
            c = '\0';
        }
        if (l < s1.length())
        {
            c1 = s1.charAt(l);
        } else
        {
            c1 = '\0';
        }
        if (j1 == 0 && c == '|')
        {
            j1 = 1;
        } else
        if (j1 == 1 && !Character.isWhitespace(c) && c != '|')
        {
            j1 = 2;
        }
        if (i1 == 0 && c1 == '|')
        {
            i1 = 1;
        } else
        if (i1 == 1 && !Character.isWhitespace(c1) && c1 != '|')
        {
            i1 = 2;
        }
        if (j1 == 2 && i1 == 2) goto _L1; else goto _L4
_L4:
        if (j1 == 1)
        {
            stringbuilder.append(c);
        } else
        if (i1 == 1)
        {
            stringbuilder.append(c1);
        }
        l++;
          goto _L5
    }

}
