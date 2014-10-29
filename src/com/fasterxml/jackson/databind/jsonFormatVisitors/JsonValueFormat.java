// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;


public class JsonValueFormat extends Enum
{

    private static final JsonValueFormat $VALUES[];
    public static final JsonValueFormat COLOR;
    public static final JsonValueFormat DATE;
    public static final JsonValueFormat DATE_TIME;
    public static final JsonValueFormat EMAIL;
    public static final JsonValueFormat HOST_NAME;
    public static final JsonValueFormat IPV6;
    public static final JsonValueFormat IP_ADDRESS;
    public static final JsonValueFormat PHONE;
    public static final JsonValueFormat REGEX;
    public static final JsonValueFormat STYLE;
    public static final JsonValueFormat TIME;
    public static final JsonValueFormat URI;
    public static final JsonValueFormat UTC_MILLISEC;

    private JsonValueFormat(String s, int i)
    {
        super(s, i);
    }

    JsonValueFormat(String s, int i, _cls1 _pcls1)
    {
        this(s, i);
    }

    public static JsonValueFormat valueOf(String s)
    {
        return (JsonValueFormat)Enum.valueOf(com/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat, s);
    }

    public static JsonValueFormat[] values()
    {
        return (JsonValueFormat[])$VALUES.clone();
    }

    static 
    {
        DATE_TIME = new _cls1("DATE_TIME", 0);
        DATE = new _cls2("DATE", 1);
        TIME = new _cls3("TIME", 2);
        UTC_MILLISEC = new _cls4("UTC_MILLISEC", 3);
        REGEX = new _cls5("REGEX", 4);
        COLOR = new _cls6("COLOR", 5);
        STYLE = new _cls7("STYLE", 6);
        PHONE = new _cls8("PHONE", 7);
        URI = new _cls9("URI", 8);
        EMAIL = new _cls10("EMAIL", 9);
        IP_ADDRESS = new _cls11("IP_ADDRESS", 10);
        IPV6 = new _cls12("IPV6", 11);
        HOST_NAME = new _cls13("HOST_NAME", 12);
        JsonValueFormat ajsonvalueformat[] = new JsonValueFormat[13];
        ajsonvalueformat[0] = DATE_TIME;
        ajsonvalueformat[1] = DATE;
        ajsonvalueformat[2] = TIME;
        ajsonvalueformat[3] = UTC_MILLISEC;
        ajsonvalueformat[4] = REGEX;
        ajsonvalueformat[5] = COLOR;
        ajsonvalueformat[6] = STYLE;
        ajsonvalueformat[7] = PHONE;
        ajsonvalueformat[8] = URI;
        ajsonvalueformat[9] = EMAIL;
        ajsonvalueformat[10] = IP_ADDRESS;
        ajsonvalueformat[11] = IPV6;
        ajsonvalueformat[12] = HOST_NAME;
        $VALUES = ajsonvalueformat;
    }

    private class _cls1 extends JsonValueFormat
    {

        public final String toString()
        {
            return "date-time";
        }

        _cls1(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls2 extends JsonValueFormat
    {

        public final String toString()
        {
            return "date";
        }

        _cls2(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls3 extends JsonValueFormat
    {

        public final String toString()
        {
            return "time";
        }

        _cls3(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls4 extends JsonValueFormat
    {

        public final String toString()
        {
            return "utc-millisec";
        }

        _cls4(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls5 extends JsonValueFormat
    {

        public final String toString()
        {
            return "regex";
        }

        _cls5(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls6 extends JsonValueFormat
    {

        public final String toString()
        {
            return "color";
        }

        _cls6(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls7 extends JsonValueFormat
    {

        public final String toString()
        {
            return "style";
        }

        _cls7(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls8 extends JsonValueFormat
    {

        public final String toString()
        {
            return "phone";
        }

        _cls8(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls9 extends JsonValueFormat
    {

        public final String toString()
        {
            return "uri";
        }

        _cls9(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls10 extends JsonValueFormat
    {

        public final String toString()
        {
            return "email";
        }

        _cls10(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls11 extends JsonValueFormat
    {

        public final String toString()
        {
            return "ip-address";
        }

        _cls11(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls12 extends JsonValueFormat
    {

        public final String toString()
        {
            return "ipv6";
        }

        _cls12(String s, int i)
        {
            super(s, i, null);
        }
    }


    private class _cls13 extends JsonValueFormat
    {

        public final String toString()
        {
            return "host-name";
        }

        _cls13(String s, int i)
        {
            super(s, i, null);
        }
    }

}
