// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheStorage;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheUpdateCallback;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            CacheMap, CacheConfig

public class BasicHttpCacheStorage
    implements HttpCacheStorage
{

    private final CacheMap entries;

    public BasicHttpCacheStorage(CacheConfig cacheconfig)
    {
        entries = new CacheMap(cacheconfig.getMaxCacheEntries());
    }

    public HttpCacheEntry getEntry(String s)
    {
        this;
        JVM INSTR monitorenter ;
        HttpCacheEntry httpcacheentry = (HttpCacheEntry)entries.get(s);
        this;
        JVM INSTR monitorexit ;
        return httpcacheentry;
        Exception exception;
        exception;
        throw exception;
    }

    public void putEntry(String s, HttpCacheEntry httpcacheentry)
    {
        this;
        JVM INSTR monitorenter ;
        entries.put(s, httpcacheentry);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void removeEntry(String s)
    {
        this;
        JVM INSTR monitorenter ;
        entries.remove(s);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void updateEntry(String s, HttpCacheUpdateCallback httpcacheupdatecallback)
    {
        this;
        JVM INSTR monitorenter ;
        HttpCacheEntry httpcacheentry = (HttpCacheEntry)entries.get(s);
        entries.put(s, httpcacheupdatecallback.update(httpcacheentry));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
