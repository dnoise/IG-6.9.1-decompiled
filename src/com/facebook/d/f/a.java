// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.f;

import java.util.Formattable;

public final class a
{

    private static int a(StringBuilder stringbuilder, String s, Object aobj[])
    {
        int i;
        int j;
        boolean flag;
        int l;
        boolean flag1;
        boolean flag2;
        int i2;
        boolean flag3;
        int j2;
        i = 0;
        j = 0;
        int k = s.length();
        boolean flag4;
        if (stringbuilder == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = 0;
        flag1 = false;
        flag2 = false;
        if (i >= k) goto _L2; else goto _L1
_L1:
        if (flag2) goto _L4; else goto _L3
_L3:
        char c1 = s.charAt(i);
        if (c1 == '%')
        {
            flag2 = true;
            j2 = j;
            i2 = l;
            flag3 = true;
        } else
        if (flag)
        {
            int l2 = l + 1;
            boolean flag6 = flag1;
            j2 = j;
            i2 = l2;
            flag3 = flag6;
        } else
        {
            stringbuilder.append(c1);
            boolean flag5 = flag1;
            j2 = j;
            i2 = l;
            flag3 = flag5;
        }
_L6:
        i++;
        flag4 = flag3;
        l = i2;
        j = j2;
        flag1 = flag4;
        break MISSING_BLOCK_LABEL_27;
_L4:
        char c;
        int l1;
        c = s.charAt(i);
        if (c != '%')
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            l++;
            l1 = j;
        } else
        {
            stringbuilder.append('%');
            l1 = j;
        }
_L11:
        i2 = l;
        flag3 = flag1;
        j2 = l1;
        flag2 = false;
        if (true) goto _L6; else goto _L5
_L5:
        if (aobj != null && j < aobj.length) goto _L8; else goto _L7
_L7:
        if (!flag) goto _L10; else goto _L9
_L9:
        l = -1;
_L13:
        return l;
_L10:
        throw new AssertionError();
_L8:
        Object obj = aobj[j];
        int i1;
        switch (c)
        {
        default:
            if (flag)
            {
                return -1;
            } else
            {
                throw new AssertionError();
            }

        case 100: // 'd'
            break MISSING_BLOCK_LABEL_424;

        case 115: // 's'
            if (obj instanceof Formattable)
            {
                if (flag)
                {
                    return -1;
                } else
                {
                    throw new AssertionError();
                }
            }
            int j1;
            int k1;
            if (obj instanceof String)
            {
                if (flag)
                {
                    i1 = l + ((String)obj).length();
                } else
                {
                    stringbuilder.append(obj);
                    i1 = l;
                }
            } else
            if (flag)
            {
                String s1;
                int k2;
                if (obj == null)
                {
                    s1 = "null";
                } else
                {
                    s1 = obj.toString();
                }
                k2 = l + s1.length();
                aobj[j] = s1;
                i1 = k2;
            } else
            {
                stringbuilder.append(obj);
                i1 = l;
            }
            break;
        }
        j1 = j + 1;
        k1 = i1;
        l1 = j1;
        l = k1;
          goto _L11
        if (obj == null)
        {
            if (flag)
            {
                i1 = l + 4;
            } else
            {
                stringbuilder.append("null");
                i1 = l;
            }
        } else
        if (obj instanceof Integer)
        {
            if (flag)
            {
                i1 = l + 11;
            } else
            {
                stringbuilder.append(((Number)obj).intValue());
                i1 = l;
            }
        } else
        if (obj instanceof Short)
        {
            if (flag)
            {
                i1 = l + 6;
            } else
            {
                stringbuilder.append(((Number)obj).intValue());
                i1 = l;
            }
        } else
        if (obj instanceof Byte)
        {
            if (flag)
            {
                i1 = l + 4;
            } else
            {
                stringbuilder.append(((Number)obj).intValue());
                i1 = l;
            }
        } else
        if (obj instanceof Long)
        {
            if (flag)
            {
                i1 = l + 20;
            } else
            {
                stringbuilder.append(((Long)obj).longValue());
                i1 = l;
            }
        } else
        if (flag)
        {
            return -1;
        } else
        {
            throw new AssertionError();
        }
        break MISSING_BLOCK_LABEL_328;
_L2:
        if (flag2)
        {
            if (flag)
            {
                return -1;
            } else
            {
                throw new AssertionError();
            }
        }
        if (flag1) goto _L13; else goto _L12
_L12:
        return -2;
          goto _L11
    }

    public static transient String a(String s, Object aobj[])
    {
        int i = b(s, aobj);
        if (i == -1)
        {
            s = String.format(null, s, aobj);
        } else
        if (i != -2)
        {
            StringBuilder stringbuilder = new StringBuilder(i);
            a(stringbuilder, s, aobj);
            return stringbuilder.toString();
        }
        return s;
    }

    private static int b(String s, Object aobj[])
    {
        return a(null, s, aobj);
    }
}
