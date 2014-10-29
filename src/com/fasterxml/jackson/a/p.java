// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import java.io.IOException;

// Referenced classes of package com.fasterxml.jackson.a:
//            j

public class p extends IOException
{

    static final long serialVersionUID = 123L;
    protected j _location;

    protected p(String s)
    {
        super(s);
    }

    protected p(String s, j j1)
    {
        this(s, j1, null);
    }

    protected p(String s, j j1, Throwable throwable)
    {
        super(s);
        if (throwable != null)
        {
            initCause(throwable);
        }
        _location = j1;
    }

    protected p(String s, Throwable throwable)
    {
        this(s, null, throwable);
    }

    protected p(Throwable throwable)
    {
        this(null, null, throwable);
    }

    public j getLocation()
    {
        return _location;
    }

    public String getMessage()
    {
        String s = super.getMessage();
        if (s == null)
        {
            s = "N/A";
        }
        j j1 = getLocation();
        String s1 = getMessageSuffix();
        if (j1 != null || s1 != null)
        {
            StringBuilder stringbuilder = new StringBuilder(100);
            stringbuilder.append(s);
            if (s1 != null)
            {
                stringbuilder.append(s1);
            }
            if (j1 != null)
            {
                stringbuilder.append('\n');
                stringbuilder.append(" at ");
                stringbuilder.append(j1.toString());
            }
            s = stringbuilder.toString();
        }
        return s;
    }

    protected String getMessageSuffix()
    {
        return null;
    }

    public String getOriginalMessage()
    {
        return super.getMessage();
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append(": ").append(getMessage()).toString();
    }
}
