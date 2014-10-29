// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.cache;


// Referenced classes of package ch.boye.httpclientandroidlib.client.cache:
//            HttpCacheEntry, HttpCacheUpdateCallback

public interface HttpCacheStorage
{

    public abstract HttpCacheEntry getEntry(String s);

    public abstract void putEntry(String s, HttpCacheEntry httpcacheentry);

    public abstract void removeEntry(String s);

    public abstract void updateEntry(String s, HttpCacheUpdateCallback httpcacheupdatecallback);
}
