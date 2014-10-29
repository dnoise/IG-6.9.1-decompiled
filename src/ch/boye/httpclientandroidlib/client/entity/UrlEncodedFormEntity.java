// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.entity;

import ch.boye.httpclientandroidlib.client.utils.URLEncodedUtils;
import ch.boye.httpclientandroidlib.entity.StringEntity;
import java.util.List;

public class UrlEncodedFormEntity extends StringEntity
{

    public UrlEncodedFormEntity(List list)
    {
        this(list, "ISO-8859-1");
    }

    public UrlEncodedFormEntity(List list, String s)
    {
        super(URLEncodedUtils.format(list, s), s);
        StringBuilder stringbuilder = new StringBuilder("application/x-www-form-urlencoded; charset=");
        if (s == null)
        {
            s = "ISO-8859-1";
        }
        setContentType(stringbuilder.append(s).toString());
    }
}
