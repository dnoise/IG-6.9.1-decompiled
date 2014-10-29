// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import java.lang.ref.SoftReference;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

final class _cls1
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


    _cls1()
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
