// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.a.c.h;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class StdDateFormat extends DateFormat
{

    protected static final String ALL_FORMATS[] = {
        "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"
    };
    protected static final DateFormat DATE_FORMAT_ISO8601;
    protected static final DateFormat DATE_FORMAT_ISO8601_Z;
    protected static final DateFormat DATE_FORMAT_PLAIN;
    protected static final DateFormat DATE_FORMAT_RFC1123;
    protected static final String DATE_FORMAT_STR_ISO8601 = "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
    protected static final String DATE_FORMAT_STR_ISO8601_Z = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    protected static final String DATE_FORMAT_STR_PLAIN = "yyyy-MM-dd";
    protected static final String DATE_FORMAT_STR_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";
    private static final TimeZone DEFAULT_TIMEZONE;
    public static final StdDateFormat instance = new StdDateFormat();
    protected transient DateFormat _formatISO8601;
    protected transient DateFormat _formatISO8601_z;
    protected transient DateFormat _formatPlain;
    protected transient DateFormat _formatRFC1123;
    protected transient TimeZone _timezone;

    public StdDateFormat()
    {
    }

    public StdDateFormat(TimeZone timezone)
    {
        _timezone = timezone;
    }

    private final DateFormat _cloneFormat(DateFormat dateformat)
    {
        return _cloneFormat(dateformat, _timezone);
    }

    private static final DateFormat _cloneFormat(DateFormat dateformat, TimeZone timezone)
    {
        DateFormat dateformat1 = (DateFormat)dateformat.clone();
        if (timezone != null)
        {
            dateformat1.setTimeZone(timezone);
        }
        return dateformat1;
    }

    public static DateFormat getBlueprintISO8601Format()
    {
        return DATE_FORMAT_ISO8601;
    }

    public static DateFormat getBlueprintRFC1123Format()
    {
        return DATE_FORMAT_RFC1123;
    }

    public static TimeZone getDefaultTimeZone()
    {
        return DEFAULT_TIMEZONE;
    }

    public static DateFormat getISO8601Format(TimeZone timezone)
    {
        return _cloneFormat(DATE_FORMAT_ISO8601, timezone);
    }

    public static DateFormat getRFC1123Format(TimeZone timezone)
    {
        return _cloneFormat(DATE_FORMAT_RFC1123, timezone);
    }

    private static final boolean hasTimeZone(String s)
    {
        int i = s.length();
        if (i < 6) goto _L2; else goto _L1
_L1:
        char c = s.charAt(i - 6);
        if (c != '+' && c != '-') goto _L4; else goto _L3
_L3:
        char c1;
        return true;
_L4:
        char c2;
        if ((c1 = s.charAt(i - 5)) == '+' || c1 == '-' || ((c2 = s.charAt(i - 3)) == '+' || c2 == '-')) goto _L3; else goto _L2
_L2:
        return false;
    }

    public StdDateFormat clone()
    {
        return new StdDateFormat();
    }

    public volatile Object clone()
    {
        return clone();
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        if (_formatISO8601 == null)
        {
            _formatISO8601 = _cloneFormat(DATE_FORMAT_ISO8601);
        }
        return _formatISO8601.format(date, stringbuffer, fieldposition);
    }

    protected boolean looksLikeISO8601(String s)
    {
        int i = s.length();
        boolean flag = false;
        if (i >= 5)
        {
            boolean flag1 = Character.isDigit(s.charAt(0));
            flag = false;
            if (flag1)
            {
                boolean flag2 = Character.isDigit(s.charAt(3));
                flag = false;
                if (flag2)
                {
                    char c = s.charAt(4);
                    flag = false;
                    if (c == '-')
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public Date parse(String s)
    {
        String s1 = s.trim();
        ParsePosition parseposition = new ParsePosition(0);
        Date date = parse(s1, parseposition);
        if (date != null)
        {
            return date;
        }
        StringBuilder stringbuilder = new StringBuilder();
        String as[] = ALL_FORMATS;
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s2 = as[j];
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("\", \"");
            } else
            {
                stringbuilder.append('"');
            }
            stringbuilder.append(s2);
            j++;
        }
        stringbuilder.append('"');
        Object aobj[] = new Object[2];
        aobj[0] = s1;
        aobj[1] = stringbuilder.toString();
        throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", aobj), parseposition.getErrorIndex());
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        if (looksLikeISO8601(s))
        {
            return parseAsISO8601(s, parseposition);
        }
        int i = s.length();
        char c;
        do
        {
            if (--i < 0)
            {
                break;
            }
            c = s.charAt(i);
        } while (c >= '0' && c <= '9' || i <= 0 && c == '-');
        if (i < 0 && h.c(s))
        {
            return new Date(Long.parseLong(s));
        } else
        {
            return parseAsRFC1123(s, parseposition);
        }
    }

    protected Date parseAsISO8601(String s, ParsePosition parseposition)
    {
        int i;
        char c;
        i = s.length();
        c = s.charAt(i - 1);
        if (i > 10 || !Character.isDigit(c)) goto _L2; else goto _L1
_L1:
        DateFormat dateformat;
        dateformat = _formatPlain;
        if (dateformat == null)
        {
            dateformat = _cloneFormat(DATE_FORMAT_PLAIN);
            _formatPlain = dateformat;
        }
_L9:
        return dateformat.parse(s, parseposition);
_L2:
        if (c == 'Z')
        {
            dateformat = _formatISO8601_z;
            if (dateformat == null)
            {
                dateformat = _cloneFormat(DATE_FORMAT_ISO8601_Z);
                _formatISO8601_z = dateformat;
            }
            if (s.charAt(i - 4) == ':')
            {
                StringBuilder stringbuilder3 = new StringBuilder(s);
                stringbuilder3.insert(i - 1, ".000");
                s = stringbuilder3.toString();
            }
            continue; /* Loop/switch isn't completed */
        }
        if (!hasTimeZone(s)) goto _L4; else goto _L3
_L3:
        char c1 = s.charAt(i - 3);
        if (c1 != ':') goto _L6; else goto _L5
_L5:
        StringBuilder stringbuilder1 = new StringBuilder(s);
        stringbuilder1.delete(i - 3, i - 2);
        s = stringbuilder1.toString();
_L7:
        int j = s.length();
        if (Character.isDigit(s.charAt(j - 9)))
        {
            StringBuilder stringbuilder2 = new StringBuilder(s);
            stringbuilder2.insert(j - 5, ".000");
            s = stringbuilder2.toString();
        }
        dateformat = _formatISO8601;
        if (_formatISO8601 == null)
        {
            dateformat = _cloneFormat(DATE_FORMAT_ISO8601);
            _formatISO8601 = dateformat;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (c1 == '+' || c1 == '-')
        {
            s = (new StringBuilder()).append(s).append("00").toString();
        }
        if (true) goto _L7; else goto _L4
_L4:
        StringBuilder stringbuilder = new StringBuilder(s);
        if (-1 + (i - s.lastIndexOf('T')) <= 8)
        {
            stringbuilder.append(".000");
        }
        stringbuilder.append('Z');
        s = stringbuilder.toString();
        dateformat = _formatISO8601_z;
        if (dateformat == null)
        {
            dateformat = _cloneFormat(DATE_FORMAT_ISO8601_Z);
            _formatISO8601_z = dateformat;
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    protected Date parseAsRFC1123(String s, ParsePosition parseposition)
    {
        if (_formatRFC1123 == null)
        {
            _formatRFC1123 = _cloneFormat(DATE_FORMAT_RFC1123);
        }
        return _formatRFC1123.parse(s, parseposition);
    }

    public void setTimeZone(TimeZone timezone)
    {
        if (timezone != _timezone)
        {
            _formatRFC1123 = null;
            _formatISO8601 = null;
            _formatISO8601_z = null;
            _formatPlain = null;
            _timezone = timezone;
        }
    }

    public StdDateFormat withTimeZone(TimeZone timezone)
    {
        if (timezone == null)
        {
            timezone = DEFAULT_TIMEZONE;
        }
        return new StdDateFormat(timezone);
    }

    static 
    {
        DEFAULT_TIMEZONE = TimeZone.getTimeZone("GMT");
        SimpleDateFormat simpledateformat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        DATE_FORMAT_RFC1123 = simpledateformat;
        simpledateformat.setTimeZone(DEFAULT_TIMEZONE);
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
        DATE_FORMAT_ISO8601 = simpledateformat1;
        simpledateformat1.setTimeZone(DEFAULT_TIMEZONE);
        SimpleDateFormat simpledateformat2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        DATE_FORMAT_ISO8601_Z = simpledateformat2;
        simpledateformat2.setTimeZone(DEFAULT_TIMEZONE);
        SimpleDateFormat simpledateformat3 = new SimpleDateFormat("yyyy-MM-dd");
        DATE_FORMAT_PLAIN = simpledateformat3;
        simpledateformat3.setTimeZone(DEFAULT_TIMEZONE);
    }
}
