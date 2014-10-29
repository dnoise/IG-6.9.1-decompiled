// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.auth.AuthScope;
import ch.boye.httpclientandroidlib.auth.Credentials;
import ch.boye.httpclientandroidlib.client.CredentialsProvider;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class BasicCredentialsProvider
    implements CredentialsProvider
{

    private final ConcurrentHashMap credMap = new ConcurrentHashMap();

    public BasicCredentialsProvider()
    {
    }

    private static Credentials matchCredentials(Map map, AuthScope authscope)
    {
        Credentials credentials = (Credentials)map.get(authscope);
        if (credentials == null)
        {
            int i = -1;
            AuthScope authscope1 = null;
            Iterator iterator = map.keySet().iterator();
            while (iterator.hasNext()) 
            {
                AuthScope authscope2 = (AuthScope)iterator.next();
                int j = authscope.match(authscope2);
                int k;
                if (j > i)
                {
                    k = j;
                } else
                {
                    authscope2 = authscope1;
                    k = i;
                }
                i = k;
                authscope1 = authscope2;
            }
            if (authscope1 != null)
            {
                credentials = (Credentials)map.get(authscope1);
            }
        }
        return credentials;
    }

    public void clear()
    {
        credMap.clear();
    }

    public Credentials getCredentials(AuthScope authscope)
    {
        if (authscope == null)
        {
            throw new IllegalArgumentException("Authentication scope may not be null");
        } else
        {
            return matchCredentials(credMap, authscope);
        }
    }

    public void setCredentials(AuthScope authscope, Credentials credentials)
    {
        if (authscope == null)
        {
            throw new IllegalArgumentException("Authentication scope may not be null");
        } else
        {
            credMap.put(authscope, credentials);
            return;
        }
    }

    public String toString()
    {
        return credMap.toString();
    }
}
