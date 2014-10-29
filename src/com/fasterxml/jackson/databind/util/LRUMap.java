// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.LinkedHashMap;

public class LRUMap extends LinkedHashMap
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected transient int _jdkSerializeMaxEntries;
    protected final int _maxEntries;

    public LRUMap(int i, int j)
    {
        super(i, 0.8F, true);
        _maxEntries = j;
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        _jdkSerializeMaxEntries = objectinputstream.readInt();
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream.writeInt(_jdkSerializeMaxEntries);
    }

    protected Object readResolve()
    {
        return new LRUMap(_jdkSerializeMaxEntries, _jdkSerializeMaxEntries);
    }

    protected boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        return size() > _maxEntries;
    }
}
