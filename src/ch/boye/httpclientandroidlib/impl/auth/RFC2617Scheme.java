// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.auth.MalformedChallengeException;
import ch.boye.httpclientandroidlib.message.BasicHeaderValueParser;
import ch.boye.httpclientandroidlib.message.HeaderValueParser;
import ch.boye.httpclientandroidlib.message.ParserCursor;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.auth:
//            AuthSchemeBase

public abstract class RFC2617Scheme extends AuthSchemeBase
{

    private Map params;

    public RFC2617Scheme()
    {
    }

    public String getParameter(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Parameter name may not be null");
        }
        if (params == null)
        {
            return null;
        } else
        {
            return (String)params.get(s.toLowerCase(Locale.ENGLISH));
        }
    }

    protected Map getParameters()
    {
        if (params == null)
        {
            params = new HashMap();
        }
        return params;
    }

    public String getRealm()
    {
        return getParameter("realm");
    }

    protected void parseChallenge(CharArrayBuffer chararraybuffer, int i, int j)
    {
        HeaderElement aheaderelement[] = BasicHeaderValueParser.DEFAULT.parseElements(chararraybuffer, new ParserCursor(i, chararraybuffer.length()));
        if (aheaderelement.length == 0)
        {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
        params = new HashMap(aheaderelement.length);
        int k = aheaderelement.length;
        for (int l = 0; l < k; l++)
        {
            HeaderElement headerelement = aheaderelement[l];
            params.put(headerelement.getName(), headerelement.getValue());
        }

    }
}
