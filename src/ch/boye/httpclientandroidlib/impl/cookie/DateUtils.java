// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            DateParseException

public final class DateUtils
{

    private static final String DEFAULT_PATTERNS[] = {
        "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy"
    };
    private static final Date DEFAULT_TWO_DIGIT_YEAR_START;
    public static final TimeZone GMT;
    public static final String PATTERN_ASCTIME = "EEE MMM d HH:mm:ss yyyy";
    public static final String PATTERN_RFC1036 = "EEEE, dd-MMM-yy HH:mm:ss zzz";
    public static final String PATTERN_RFC1123 = "EEE, dd MMM yyyy HH:mm:ss zzz";

    private DateUtils()
    {
    }

    public static String formatDate(Date date)
    {
        return formatDate(date, "EEE, dd MMM yyyy HH:mm:ss zzz");
    }

    public static String formatDate(Date date, String s)
    {
        if (date == null)
        {
            throw new IllegalArgumentException("date is null");
        }
        if (s == null)
        {
            throw new IllegalArgumentException("pattern is null");
        } else
        {
            return DateFormatHolder.formatFor(s).format(date);
        }
    }

    public static Date parseDate(String s)
    {
        return parseDate(s, null, null);
    }

    public static Date parseDate(String s, String as[])
    {
        return parseDate(s, as, null);
    }

    public static Date parseDate(String s, String as[], Date date)
    {
        int i;
        int j;
        if (s == null)
        {
            throw new IllegalArgumentException("dateValue is null");
        }
        if (as == null)
        {
            as = DEFAULT_PATTERNS;
        }
        if (date == null)
        {
            date = DEFAULT_TWO_DIGIT_YEAR_START;
        }
        if (s.length() > 1 && s.startsWith("'") && s.endsWith("'"))
        {
            s = s.substring(1, -1 + s.length());
        }
        i = as.length;
        j = 0;
_L2:
        SimpleDateFormat simpledateformat;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        simpledateformat = DateFormatHolder.formatFor(as[j]);
        simpledateformat.set2DigitYearStart(date);
        Date date1 = simpledateformat.parse(s);
        return date1;
        ParseException parseexception;
        parseexception;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        throw new DateParseException((new StringBuilder("Unable to parse the date ")).append(s).toString());
    }

    static 
    {
        GMT = TimeZone.getTimeZone("GMT");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(GMT);
        calendar.set(2000, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        DEFAULT_TWO_DIGIT_YEAR_START = calendar.getTime();
    }

    private class DateFormatHolder
    {

        private static final ThreadLocal THREADLOCAL_FORMATS = new _cls1();

        public static SimpleDateFormat formatFor(String s)
        {
            Map map = (Map)((SoftReference)THREADLOCAL_FORMATS.get()).get();
            Object obj;
            SimpleDateFormat simpledateformat;
            if (map == null)
            {
                HashMap hashmap = new HashMap();
                THREADLOCAL_FORMATS.set(new SoftReference(hashmap));
                obj = hashmap;
            } else
            {
                obj = map;
            }
            simpledateformat = (SimpleDateFormat)((Map) (obj)).get(s);
            if (simpledateformat == null)
            {
                simpledateformat = new SimpleDateFormat(s, Locale.US);
                simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT"));
                ((Map) (obj)).put(s, simpledateformat);
            }
            return simpledateformat;
        }


        DateFormatHolder()
        {
        }

        class _cls1 extends ThreadLocal
        {

            protected final volatile Object initialValue()
            {
                return initialValue();
            }

            protected final SoftReference initialValue()
            {
                return new SoftReference(new HashMap());
            }

                _cls1()
                {
                }
        }

    }

}
