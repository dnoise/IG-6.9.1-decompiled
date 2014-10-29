// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.databind.JsonSerializer;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class JsonSerializerMap
{

    private final Bucket _buckets[];
    private final int _size;

    public JsonSerializerMap(Map map)
    {
        int i = findSize(map.size());
        _size = i;
        int j = i - 1;
        Bucket abucket[] = new Bucket[i];
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            com.fasterxml.jackson.databind.ser.SerializerCache.TypeKey typekey = (com.fasterxml.jackson.databind.ser.SerializerCache.TypeKey)entry.getKey();
            int k = j & typekey.hashCode();
            abucket[k] = new Bucket(abucket[k], typekey, (JsonSerializer)entry.getValue());
        }

        _buckets = abucket;
    }

    private static final int findSize(int i)
    {
        int j;
        int k;
        if (i <= 64)
        {
            j = i + i;
        } else
        {
            j = i + (i >> 2);
        }
        for (k = 8; k < j; k += k) { }
        return k;
    }

    public JsonSerializer find(com.fasterxml.jackson.databind.ser.SerializerCache.TypeKey typekey)
    {
        int i = typekey.hashCode() & -1 + _buckets.length;
        Bucket bucket = _buckets[i];
        if (bucket == null)
        {
            return null;
        }
        if (typekey.equals(bucket.key))
        {
            return bucket.value;
        }
        do
        {
            bucket = bucket.next;
            if (bucket != null)
            {
                if (typekey.equals(bucket.key))
                {
                    return bucket.value;
                }
            } else
            {
                return null;
            }
        } while (true);
    }

    public int size()
    {
        return _size;
    }

    private class Bucket
    {

        public final com.fasterxml.jackson.databind.ser.SerializerCache.TypeKey key;
        public final Bucket next;
        public final JsonSerializer value;

        public Bucket(Bucket bucket, com.fasterxml.jackson.databind.ser.SerializerCache.TypeKey typekey, JsonSerializer jsonserializer)
        {
            next = bucket;
            key = typekey;
            value = jsonserializer;
        }
    }

}
