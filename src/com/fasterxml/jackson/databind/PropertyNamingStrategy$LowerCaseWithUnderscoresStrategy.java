// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;


public class  extends 
{

    public String translate(String s)
    {
        if (s != null)
        {
            int i = s.length();
            StringBuilder stringbuilder = new StringBuilder(i * 2);
            int j = 0;
            boolean flag = false;
            int k = 0;
            while (j < i) 
            {
                char c = s.charAt(j);
                boolean flag1;
                if (j > 0 || c != '_')
                {
                    int l;
                    char c1;
                    if (Character.isUpperCase(c))
                    {
                        if (!flag && k > 0 && stringbuilder.charAt(k - 1) != '_')
                        {
                            stringbuilder.append('_');
                            k++;
                        }
                        char c2 = Character.toLowerCase(c);
                        flag1 = true;
                        l = k;
                        c1 = c2;
                    } else
                    {
                        l = k;
                        c1 = c;
                        flag1 = false;
                    }
                    stringbuilder.append(c1);
                    k = l + 1;
                } else
                {
                    flag1 = flag;
                }
                j++;
                flag = flag1;
            }
            if (k > 0)
            {
                return stringbuilder.toString();
            }
        }
        return s;
    }

    public ()
    {
    }
}
