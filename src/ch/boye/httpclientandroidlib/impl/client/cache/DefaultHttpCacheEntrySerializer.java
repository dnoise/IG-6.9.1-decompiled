// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntrySerializationException;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntrySerializer;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public class DefaultHttpCacheEntrySerializer
    implements HttpCacheEntrySerializer
{

    public DefaultHttpCacheEntrySerializer()
    {
    }

    public HttpCacheEntry readFrom(InputStream inputstream)
    {
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
        HttpCacheEntry httpcacheentry = (HttpCacheEntry)objectinputstream.readObject();
        objectinputstream.close();
        return httpcacheentry;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        throw new HttpCacheEntrySerializationException((new StringBuilder("Class not found: ")).append(classnotfoundexception.getMessage()).toString(), classnotfoundexception);
        Exception exception;
        exception;
        objectinputstream.close();
        throw exception;
    }

    public void writeTo(HttpCacheEntry httpcacheentry, OutputStream outputstream)
    {
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(outputstream);
        objectoutputstream.writeObject(httpcacheentry);
        objectoutputstream.close();
        return;
        Exception exception;
        exception;
        objectoutputstream.close();
        throw exception;
    }
}
