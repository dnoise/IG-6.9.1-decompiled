// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.message;

import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import ch.boye.httpclientandroidlib.util.LangUtils;
import java.io.Serializable;

public class BasicNameValuePair
    implements NameValuePair, Serializable, Cloneable
{

    private static final long serialVersionUID = 0xa6a85653cc9535f8L;
    private final String name;
    private final String value;

    public BasicNameValuePair(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Name may not be null");
        } else
        {
            name = s;
            value = s1;
            return;
        }
    }

    public Object clone()
    {
        return super.clone();
    }

    public boolean equals(Object obj)
    {
        BasicNameValuePair basicnamevaluepair;
        if (this != obj)
        {
            if (obj instanceof NameValuePair)
            {
                if (!name.equals((basicnamevaluepair = (BasicNameValuePair)obj).name) || !LangUtils.equals(value, basicnamevaluepair.value))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public String getName()
    {
        return name;
    }

    public String getValue()
    {
        return value;
    }

    public int hashCode()
    {
        return LangUtils.hashCode(LangUtils.hashCode(17, name), value);
    }

    public String toString()
    {
        if (value == null)
        {
            return name;
        } else
        {
            CharArrayBuffer chararraybuffer = new CharArrayBuffer(1 + name.length() + value.length());
            chararraybuffer.append(name);
            chararraybuffer.append("=");
            chararraybuffer.append(value);
            return chararraybuffer.toString();
        }
    }
}
