// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            PublicSuffixFilter

public class PublicSuffixListParser
{

    private static final int MAX_LINE_LEN = 256;
    private final PublicSuffixFilter filter;

    PublicSuffixListParser(PublicSuffixFilter publicsuffixfilter)
    {
        filter = publicsuffixfilter;
    }

    private boolean readLine(Reader reader, StringBuilder stringbuilder)
    {
        stringbuilder.setLength(0);
        boolean flag = false;
        int i;
        do
        {
            i = reader.read();
            if (i == -1)
            {
                break;
            }
            char c = (char)i;
            if (c == '\n')
            {
                break;
            }
            if (Character.isWhitespace(c))
            {
                flag = true;
            }
            if (!flag)
            {
                stringbuilder.append(c);
            }
            if (stringbuilder.length() > 256)
            {
                throw new IOException("Line too long");
            }
        } while (true);
        boolean flag1 = false;
        if (i != -1)
        {
            flag1 = true;
        }
        return flag1;
    }

    public void parse(Reader reader)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        BufferedReader bufferedreader = new BufferedReader(reader);
        StringBuilder stringbuilder = new StringBuilder(256);
        for (boolean flag = true; flag;)
        {
            boolean flag1 = readLine(bufferedreader, stringbuilder);
            String s = stringbuilder.toString();
            if (s.length() != 0 && !s.startsWith("//"))
            {
                if (s.startsWith("."))
                {
                    s = s.substring(1);
                }
                boolean flag2 = s.startsWith("!");
                if (flag2)
                {
                    s = s.substring(1);
                }
                if (flag2)
                {
                    arraylist1.add(s);
                    flag = flag1;
                } else
                {
                    arraylist.add(s);
                    flag = flag1;
                }
            } else
            {
                flag = flag1;
            }
        }

        filter.setPublicSuffixes(arraylist);
        filter.setExceptions(arraylist1);
    }
}
