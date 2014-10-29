// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class BeanPropertyMap
    implements Serializable, Iterable
{

    private static final long serialVersionUID = 1L;
    private final Bucket _buckets[];
    private final int _hashMask;
    private int _nextBucketIndex;
    private final int _size;

    public BeanPropertyMap(Collection collection)
    {
        _nextBucketIndex = 0;
        _size = collection.size();
        int i = findSize(_size);
        _hashMask = i - 1;
        Bucket abucket[] = new Bucket[i];
        for (Iterator iterator1 = collection.iterator(); iterator1.hasNext();)
        {
            SettableBeanProperty settablebeanproperty = (SettableBeanProperty)iterator1.next();
            String s = settablebeanproperty.getName();
            int j = s.hashCode() & _hashMask;
            Bucket bucket = abucket[j];
            int k = _nextBucketIndex;
            _nextBucketIndex = k + 1;
            abucket[j] = new Bucket(bucket, s, settablebeanproperty, k);
        }

        _buckets = abucket;
    }

    private BeanPropertyMap(Bucket abucket[], int i, int j)
    {
        _nextBucketIndex = 0;
        _buckets = abucket;
        _size = i;
        _hashMask = -1 + abucket.length;
        _nextBucketIndex = j;
    }

    private SettableBeanProperty _findWithEquals(String s, int i)
    {
        for (Bucket bucket = _buckets[i]; bucket != null; bucket = bucket.next)
        {
            if (s.equals(bucket.key))
            {
                return bucket.value;
            }
        }

        return null;
    }

    private static final int findSize(int i)
    {
        int j;
        int k;
        if (i <= 32)
        {
            j = i + i;
        } else
        {
            j = i + (i >> 2);
        }
        for (k = 2; k < j; k += k) { }
        return k;
    }

    public final BeanPropertyMap assignIndexes()
    {
        Bucket abucket[] = _buckets;
        int i = abucket.length;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            for (Bucket bucket = abucket[j]; bucket != null;)
            {
                SettableBeanProperty settablebeanproperty = bucket.value;
                int l = k + 1;
                settablebeanproperty.assignIndex(k);
                bucket = bucket.next;
                k = l;
            }

        }

        return this;
    }

    public final SettableBeanProperty find(String s)
    {
        int i = s.hashCode() & _hashMask;
        Bucket bucket = _buckets[i];
        if (bucket == null)
        {
            return null;
        }
        if (bucket.key == s)
        {
            return bucket.value;
        }
        do
        {
            bucket = bucket.next;
            if (bucket != null)
            {
                if (bucket.key == s)
                {
                    return bucket.value;
                }
            } else
            {
                return _findWithEquals(s, i);
            }
        } while (true);
    }

    public final SettableBeanProperty[] getPropertiesInInsertionOrder()
    {
        SettableBeanProperty asettablebeanproperty[] = new SettableBeanProperty[_nextBucketIndex];
        Bucket abucket[] = _buckets;
        int i = abucket.length;
        for (int j = 0; j < i; j++)
        {
            for (Bucket bucket = abucket[j]; bucket != null; bucket = bucket.next)
            {
                asettablebeanproperty[bucket.index] = bucket.value;
            }

        }

        return asettablebeanproperty;
    }

    public final Iterator iterator()
    {
        return new IteratorImpl(_buckets);
    }

    public final void remove(SettableBeanProperty settablebeanproperty)
    {
        String s = settablebeanproperty.getName();
        int i = s.hashCode() & -1 + _buckets.length;
        Bucket bucket = _buckets[i];
        boolean flag = false;
        Bucket bucket1 = null;
        while (bucket != null) 
        {
            if (!flag && bucket.key.equals(s))
            {
                flag = true;
            } else
            {
                bucket1 = new Bucket(bucket1, bucket.key, bucket.value, bucket.index);
            }
            bucket = bucket.next;
        }
        if (!flag)
        {
            throw new NoSuchElementException((new StringBuilder("No entry '")).append(settablebeanproperty).append("' found, can't remove").toString());
        } else
        {
            _buckets[i] = bucket1;
            return;
        }
    }

    public final BeanPropertyMap renameAll(NameTransformer nametransformer)
    {
        if (nametransformer == null || nametransformer == NameTransformer.NOP)
        {
            return this;
        }
        Iterator iterator1 = iterator();
        ArrayList arraylist = new ArrayList();
        SettableBeanProperty settablebeanproperty1;
        for (; iterator1.hasNext(); arraylist.add(settablebeanproperty1))
        {
            SettableBeanProperty settablebeanproperty = (SettableBeanProperty)iterator1.next();
            settablebeanproperty1 = settablebeanproperty.withName(nametransformer.transform(settablebeanproperty.getName()));
            JsonDeserializer jsondeserializer = settablebeanproperty1.getValueDeserializer();
            if (jsondeserializer == null)
            {
                continue;
            }
            JsonDeserializer jsondeserializer1 = jsondeserializer.unwrappingDeserializer(nametransformer);
            if (jsondeserializer1 != jsondeserializer)
            {
                settablebeanproperty1 = settablebeanproperty1.withValueDeserializer(jsondeserializer1);
            }
        }

        return new BeanPropertyMap(arraylist);
    }

    public final void replace(SettableBeanProperty settablebeanproperty)
    {
        String s = settablebeanproperty.getName();
        int i = s.hashCode() & -1 + _buckets.length;
        Bucket bucket = _buckets[i];
        int j = -1;
        Bucket bucket1 = null;
        while (bucket != null) 
        {
            if (j < 0 && bucket.key.equals(s))
            {
                j = bucket.index;
            } else
            {
                bucket1 = new Bucket(bucket1, bucket.key, bucket.value, bucket.index);
            }
            bucket = bucket.next;
        }
        if (j < 0)
        {
            throw new NoSuchElementException((new StringBuilder("No entry '")).append(settablebeanproperty).append("' found, can't replace").toString());
        } else
        {
            _buckets[i] = new Bucket(bucket1, s, settablebeanproperty, j);
            return;
        }
    }

    public final int size()
    {
        return _size;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("Properties=[");
        SettableBeanProperty asettablebeanproperty[] = getPropertiesInInsertionOrder();
        int i = asettablebeanproperty.length;
        int j = 0;
        int k = 0;
        while (j < i) 
        {
            SettableBeanProperty settablebeanproperty = asettablebeanproperty[j];
            int l;
            if (settablebeanproperty != null)
            {
                l = k + 1;
                if (k > 0)
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append(settablebeanproperty.getName());
                stringbuilder.append('(');
                stringbuilder.append(settablebeanproperty.getType());
                stringbuilder.append(')');
            } else
            {
                l = k;
            }
            j++;
            k = l;
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public final BeanPropertyMap withProperty(SettableBeanProperty settablebeanproperty)
    {
        int i = _buckets.length;
        Bucket abucket[] = new Bucket[i];
        System.arraycopy(_buckets, 0, abucket, 0, i);
        String s = settablebeanproperty.getName();
        if (find(settablebeanproperty.getName()) == null)
        {
            int j = s.hashCode() & _hashMask;
            Bucket bucket = abucket[j];
            int k = _nextBucketIndex;
            _nextBucketIndex = k + 1;
            abucket[j] = new Bucket(bucket, s, settablebeanproperty, k);
            return new BeanPropertyMap(abucket, 1 + _size, _nextBucketIndex);
        } else
        {
            BeanPropertyMap beanpropertymap = new BeanPropertyMap(abucket, i, _nextBucketIndex);
            beanpropertymap.replace(settablebeanproperty);
            return beanpropertymap;
        }
    }

    private class Bucket
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        public final int index;
        public final String key;
        public final Bucket next;
        public final SettableBeanProperty value;

        public Bucket(Bucket bucket, String s, SettableBeanProperty settablebeanproperty, int i)
        {
            next = bucket;
            key = s;
            value = settablebeanproperty;
            index = i;
        }
    }


    private class IteratorImpl
        implements Iterator
    {

        private final Bucket _buckets[];
        private Bucket _currentBucket;
        private int _nextBucketIndex;

        public final boolean hasNext()
        {
            return _currentBucket != null;
        }

        public final SettableBeanProperty next()
        {
            Bucket bucket = _currentBucket;
            if (bucket == null)
            {
                throw new NoSuchElementException();
            }
            Bucket bucket1;
            Bucket abucket[];
            int i;
            for (bucket1 = bucket.next; bucket1 == null && _nextBucketIndex < _buckets.length; bucket1 = abucket[i])
            {
                abucket = _buckets;
                i = _nextBucketIndex;
                _nextBucketIndex = i + 1;
            }

            _currentBucket = bucket1;
            return bucket.value;
        }

        public final volatile Object next()
        {
            return next();
        }

        public final void remove()
        {
            throw new UnsupportedOperationException();
        }

        public IteratorImpl(Bucket abucket[])
        {
            int i;
            int j;
            _buckets = abucket;
            i = 0;
            j = _buckets.length;
_L3:
            int k;
            Bucket bucket;
            if (i >= j)
            {
                break MISSING_BLOCK_LABEL_63;
            }
            Bucket abucket1[] = _buckets;
            k = i + 1;
            bucket = abucket1[i];
            if (bucket == null) goto _L2; else goto _L1
_L1:
            _currentBucket = bucket;
_L4:
            _nextBucketIndex = k;
            return;
_L2:
            i = k;
              goto _L3
            k = i;
              goto _L4
        }
    }

}
