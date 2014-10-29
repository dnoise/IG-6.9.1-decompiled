// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.message;

import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import ch.boye.httpclientandroidlib.util.LangUtils;

public class BasicHeaderElement
    implements HeaderElement, Cloneable
{

    private final String name;
    private final NameValuePair parameters[];
    private final String value;

    public BasicHeaderElement(String s, String s1)
    {
        this(s, s1, null);
    }

    public BasicHeaderElement(String s, String s1, NameValuePair anamevaluepair[])
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Name may not be null");
        }
        name = s;
        value = s1;
        if (anamevaluepair != null)
        {
            parameters = anamevaluepair;
            return;
        } else
        {
            parameters = new NameValuePair[0];
            return;
        }
    }

    public Object clone()
    {
        return super.clone();
    }

    public boolean equals(Object obj)
    {
        BasicHeaderElement basicheaderelement;
        if (this != obj)
        {
            if (obj instanceof HeaderElement)
            {
                if (!name.equals((basicheaderelement = (BasicHeaderElement)obj).name) || !LangUtils.equals(value, basicheaderelement.value) || !LangUtils.equals(parameters, basicheaderelement.parameters))
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

    public NameValuePair getParameter(int i)
    {
        return parameters[i];
    }

    public NameValuePair getParameterByName(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Name may not be null");
        }
        for (int i = 0; i < parameters.length; i++)
        {
            NameValuePair namevaluepair = parameters[i];
            if (namevaluepair.getName().equalsIgnoreCase(s))
            {
                return namevaluepair;
            }
        }

        return null;
    }

    public int getParameterCount()
    {
        return parameters.length;
    }

    public NameValuePair[] getParameters()
    {
        return (NameValuePair[])(NameValuePair[])parameters.clone();
    }

    public String getValue()
    {
        return value;
    }

    public int hashCode()
    {
        int i = LangUtils.hashCode(LangUtils.hashCode(17, name), value);
        for (int j = 0; j < parameters.length; j++)
        {
            i = LangUtils.hashCode(i, parameters[j]);
        }

        return i;
    }

    public String toString()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(64);
        chararraybuffer.append(name);
        if (value != null)
        {
            chararraybuffer.append("=");
            chararraybuffer.append(value);
        }
        for (int i = 0; i < parameters.length; i++)
        {
            chararraybuffer.append("; ");
            chararraybuffer.append(parameters[i]);
        }

        return chararraybuffer.toString();
    }
}
