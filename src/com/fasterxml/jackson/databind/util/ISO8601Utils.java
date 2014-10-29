// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class ISO8601Utils
{

    private static final String GMT_ID = "GMT";
    private static final TimeZone TIMEZONE_GMT = TimeZone.getTimeZone("GMT");

    public ISO8601Utils()
    {
    }

    private static void checkOffset(String s, int i, char c)
    {
        char c1 = s.charAt(i);
        if (c1 != c)
        {
            throw new IndexOutOfBoundsException((new StringBuilder("Expected '")).append(c).append("' character but found '").append(c1).append("'").toString());
        } else
        {
            return;
        }
    }

    public static String format(Date date)
    {
        return format(date, false, TIMEZONE_GMT);
    }

    public static String format(Date date, boolean flag)
    {
        return format(date, flag, TIMEZONE_GMT);
    }

    public static String format(Date date, boolean flag, TimeZone timezone)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar(timezone, Locale.US);
        gregoriancalendar.setTime(date);
        byte byte0;
        int i;
        int j;
        StringBuilder stringbuilder;
        int k;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        i = byte0 + 19;
        if (timezone.getRawOffset() == 0)
        {
            j = 1;
        } else
        {
            j = 6;
        }
        stringbuilder = new StringBuilder(j + i);
        padInt(stringbuilder, gregoriancalendar.get(1), 4);
        stringbuilder.append('-');
        padInt(stringbuilder, 1 + gregoriancalendar.get(2), 2);
        stringbuilder.append('-');
        padInt(stringbuilder, gregoriancalendar.get(5), 2);
        stringbuilder.append('T');
        padInt(stringbuilder, gregoriancalendar.get(11), 2);
        stringbuilder.append(':');
        padInt(stringbuilder, gregoriancalendar.get(12), 2);
        stringbuilder.append(':');
        padInt(stringbuilder, gregoriancalendar.get(13), 2);
        if (flag)
        {
            stringbuilder.append('.');
            padInt(stringbuilder, gregoriancalendar.get(14), 3);
        }
        k = timezone.getOffset(gregoriancalendar.getTimeInMillis());
        if (k != 0)
        {
            int l = Math.abs(k / 60000 / 60);
            int i1 = Math.abs((k / 60000) % 60);
            char c;
            if (k < 0)
            {
                c = '-';
            } else
            {
                c = '+';
            }
            stringbuilder.append(c);
            padInt(stringbuilder, l, 2);
            stringbuilder.append(':');
            padInt(stringbuilder, i1, 2);
        } else
        {
            stringbuilder.append('Z');
        }
        return stringbuilder.toString();
    }

    private static void padInt(StringBuilder stringbuilder, int i, int j)
    {
        String s = Integer.toString(i);
        for (int k = j - s.length(); k > 0; k--)
        {
            stringbuilder.append('0');
        }

        stringbuilder.append(s);
    }

    public static Date parse(String s)
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        i = parseInt(s, 0, 4);
        checkOffset(s, 4, '-');
        j = parseInt(s, 5, 7);
        checkOffset(s, 7, '-');
        k = parseInt(s, 8, 10);
        checkOffset(s, 10, 'T');
        l = parseInt(s, 11, 13);
        checkOffset(s, 13, ':');
        i1 = parseInt(s, 14, 16);
        checkOffset(s, 16, ':');
        j1 = parseInt(s, 17, 19);
        if (s.charAt(19) != '.') goto _L2; else goto _L1
_L1:
        int l1;
        checkOffset(s, 19, '.');
        l1 = parseInt(s, 20, 23);
        byte byte0;
        int k1;
        byte0 = 23;
        k1 = l1;
_L5:
        char c;
        String s1;
        TimeZone timezone;
        GregorianCalendar gregoriancalendar;
        Date date;
        try
        {
            c = s.charAt(byte0);
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to parse date ")).append(s).toString(), indexoutofboundsexception);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to parse date ")).append(s).toString(), numberformatexception);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Failed to parse date ")).append(s).toString(), illegalargumentexception);
        }
        if (c != '+' && c != '-')
        {
            break MISSING_BLOCK_LABEL_232;
        }
        s1 = (new StringBuilder("GMT")).append(s.substring(byte0)).toString();
_L3:
        timezone = TimeZone.getTimeZone(s1);
        if (!timezone.getID().equals(s1))
        {
            throw new IndexOutOfBoundsException();
        }
        break MISSING_BLOCK_LABEL_297;
label0:
        {
            if (c != 'Z')
            {
                break label0;
            }
            s1 = "GMT";
        }
          goto _L3
        throw new IndexOutOfBoundsException((new StringBuilder("Invalid time zone indicator ")).append(c).toString());
        gregoriancalendar = new GregorianCalendar(timezone);
        gregoriancalendar.setLenient(false);
        gregoriancalendar.set(1, i);
        gregoriancalendar.set(2, j - 1);
        gregoriancalendar.set(5, k);
        gregoriancalendar.set(11, l);
        gregoriancalendar.set(12, i1);
        gregoriancalendar.set(13, j1);
        gregoriancalendar.set(14, k1);
        date = gregoriancalendar.getTime();
        return date;
_L2:
        byte0 = 19;
        k1 = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static int parseInt(String s, int i, int j)
    {
        if (i < 0 || j > s.length() || i > j)
        {
            throw new NumberFormatException(s);
        }
        int k = 0;
        if (i < j)
        {
            int j1 = i + 1;
            int k1 = Character.digit(s.charAt(i), 10);
            if (k1 < 0)
            {
                throw new NumberFormatException((new StringBuilder("Invalid number: ")).append(s).toString());
            }
            k = -k1;
            i = j1;
        }
        int l;
        for (; i < j; i = l)
        {
            l = i + 1;
            int i1 = Character.digit(s.charAt(i), 10);
            if (i1 < 0)
            {
                throw new NumberFormatException((new StringBuilder("Invalid number: ")).append(s).toString());
            }
            k = k * 10 - i1;
        }

        return -k;
    }

    public static TimeZone timeZoneGMT()
    {
        return TIMEZONE_GMT;
    }

}
