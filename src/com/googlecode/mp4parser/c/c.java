// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.c;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.ContainerBox;
import com.coremedia.iso.boxes.a;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class c
{

    static Pattern a = Pattern.compile("(....|\\.\\.)(\\[(.*)\\])?");
    static final boolean b;

    private c()
    {
    }

    public static a a(a a1, String s)
    {
        List list = b(a1, s);
        if (list.isEmpty())
        {
            return null;
        } else
        {
            return (a)list.get(0);
        }
    }

    public static List b(a a1, String s)
    {
        int i = 0;
        if (s.startsWith("/"))
        {
            for (; a1.getParent() != null; a1 = a1.getParent()) { }
            if (!b && !(a1 instanceof IsoFile))
            {
                throw new AssertionError((new StringBuilder()).append(a1.getType()).append(" has no parent").toString());
            } else
            {
                return b(a1, s.substring(1));
            }
        }
        if (s.isEmpty())
        {
            return Collections.singletonList(a1);
        }
        String s1;
        Matcher matcher;
        if (s.contains("/"))
        {
            String s3 = s.substring(1 + s.indexOf('/'));
            s = s.substring(0, s.indexOf('/'));
            s1 = s3;
        } else
        {
            s1 = "";
        }
        matcher = a.matcher(s);
        if (matcher.matches())
        {
            String s2 = matcher.group(1);
            if ("..".equals(s2))
            {
                return b(((a) (a1.getParent())), s1);
            }
            int j;
            LinkedList linkedlist;
            Iterator iterator;
            if (matcher.group(2) != null)
            {
                j = Integer.parseInt(matcher.group(3));
            } else
            {
                j = -1;
            }
            linkedlist = new LinkedList();
            iterator = ((ContainerBox)a1).getBoxes().iterator();
            while (iterator.hasNext()) 
            {
                a a2 = (a)iterator.next();
                int k;
                if (a2.getType().matches(s2))
                {
                    if (j == -1 || j == i)
                    {
                        linkedlist.addAll(b(a2, s1));
                    }
                    k = i + 1;
                } else
                {
                    k = i;
                }
                i = k;
            }
            return linkedlist;
        } else
        {
            throw new RuntimeException((new StringBuilder()).append(s).append(" is invalid path.").toString());
        }
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/c/c.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
