// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.auth;

import ch.boye.httpclientandroidlib.util.LangUtils;
import java.io.Serializable;
import java.security.Principal;
import java.util.Locale;

// Referenced classes of package ch.boye.httpclientandroidlib.auth:
//            Credentials, NTUserPrincipal

public class NTCredentials
    implements Credentials, Serializable
{

    private static final long serialVersionUID = 0x9980b99a99ef68ffL;
    private final String password;
    private final NTUserPrincipal principal;
    private final String workstation;

    public NTCredentials(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Username:password string may not be null");
        }
        int i = s.indexOf(':');
        int j;
        if (i >= 0)
        {
            String s1 = s.substring(0, i);
            password = s.substring(i + 1);
            s = s1;
        } else
        {
            password = null;
        }
        j = s.indexOf('/');
        if (j >= 0)
        {
            principal = new NTUserPrincipal(s.substring(0, j).toUpperCase(Locale.ENGLISH), s.substring(j + 1));
        } else
        {
            principal = new NTUserPrincipal(null, s.substring(j + 1));
        }
        workstation = null;
    }

    public NTCredentials(String s, String s1, String s2, String s3)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("User name may not be null");
        }
        principal = new NTUserPrincipal(s3, s);
        password = s1;
        if (s2 != null)
        {
            workstation = s2.toUpperCase(Locale.ENGLISH);
            return;
        } else
        {
            workstation = null;
            return;
        }
    }

    public boolean equals(Object obj)
    {
        NTCredentials ntcredentials;
        if (this != obj)
        {
            if (!(obj instanceof NTCredentials) || (!LangUtils.equals(principal, (ntcredentials = (NTCredentials)obj).principal) || !LangUtils.equals(workstation, ntcredentials.workstation)))
            {
                return false;
            }
        }
        return true;
    }

    public String getDomain()
    {
        return principal.getDomain();
    }

    public String getPassword()
    {
        return password;
    }

    public String getUserName()
    {
        return principal.getUsername();
    }

    public Principal getUserPrincipal()
    {
        return principal;
    }

    public String getWorkstation()
    {
        return workstation;
    }

    public int hashCode()
    {
        return LangUtils.hashCode(LangUtils.hashCode(17, principal), workstation);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[principal: ");
        stringbuilder.append(principal);
        stringbuilder.append("][workstation: ");
        stringbuilder.append(workstation);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
