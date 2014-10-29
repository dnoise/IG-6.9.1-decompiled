// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.auth;


// Referenced classes of package ch.boye.httpclientandroidlib.auth:
//            AuthScheme, AuthScope, Credentials

public class AuthState
{

    private AuthScheme authScheme;
    private AuthScope authScope;
    private Credentials credentials;

    public AuthState()
    {
    }

    public AuthScheme getAuthScheme()
    {
        return authScheme;
    }

    public AuthScope getAuthScope()
    {
        return authScope;
    }

    public Credentials getCredentials()
    {
        return credentials;
    }

    public void invalidate()
    {
        authScheme = null;
        authScope = null;
        credentials = null;
    }

    public boolean isValid()
    {
        return authScheme != null;
    }

    public void setAuthScheme(AuthScheme authscheme)
    {
        if (authscheme == null)
        {
            invalidate();
            return;
        } else
        {
            authScheme = authscheme;
            return;
        }
    }

    public void setAuthScope(AuthScope authscope)
    {
        authScope = authscope;
    }

    public void setCredentials(Credentials credentials1)
    {
        credentials = credentials1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("auth scope [");
        stringbuilder.append(authScope);
        stringbuilder.append("]; credentials set [");
        String s;
        if (credentials != null)
        {
            s = "true";
        } else
        {
            s = "false";
        }
        stringbuilder.append(s);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
