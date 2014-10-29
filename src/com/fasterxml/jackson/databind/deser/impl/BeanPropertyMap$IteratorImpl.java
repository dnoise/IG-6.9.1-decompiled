// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class _nextBucketIndex
    implements Iterator
{

    private final next _buckets[];
    private next _currentBucket;
    private int _nextBucketIndex;

    public final boolean hasNext()
    {
        return _currentBucket != null;
    }

    public final SettableBeanProperty next()
    {
        _currentBucket _lcurrentbucket = _currentBucket;
        if (_lcurrentbucket == null)
        {
            throw new NoSuchElementException();
        }
        _currentBucket _lcurrentbucket1;
        _currentBucket a_lcurrentbucket[];
        int i;
        for (_lcurrentbucket1 = _lcurrentbucket._currentBucket; _lcurrentbucket1 == null && _nextBucketIndex < _buckets.length; _lcurrentbucket1 = a_lcurrentbucket[i])
        {
            a_lcurrentbucket = _buckets;
            i = _nextBucketIndex;
            _nextBucketIndex = i + 1;
        }

        _currentBucket = _lcurrentbucket1;
        return _lcurrentbucket._currentBucket;
    }

    public final volatile Object next()
    {
        return next();
    }

    public final void remove()
    {
        throw new UnsupportedOperationException();
    }

    public ( a[])
    {
        int i;
        int j;
        _buckets = a;
        i = 0;
        j = _buckets.length;
_L3:
        int k;
         ;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_63;
        }
         a1[] = _buckets;
        k = i + 1;
         = a1[i];
        if ( == null) goto _L2; else goto _L1
_L1:
        _currentBucket = ;
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
