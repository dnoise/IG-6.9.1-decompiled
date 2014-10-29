// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.b.d;
import com.fasterxml.jackson.a.c.g;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class _matchStrength._cls459d58cc
{

    protected final byte _bufferedData[];
    protected final int _bufferedLength;
    protected final int _bufferedStart;
    protected final ObjectReader _match;
    protected final int _matchStrength$459d58cc;
    protected final InputStream _originalStream;

    public l createParserWithMatch()
    {
        if (_match == null)
        {
            return null;
        }
        e e1 = _match.getFactory();
        if (_originalStream == null)
        {
            return e1.createParser(_bufferedData, _bufferedStart, _bufferedLength);
        } else
        {
            return e1.createParser(getDataStream());
        }
    }

    public InputStream getDataStream()
    {
        if (_originalStream == null)
        {
            return new ByteArrayInputStream(_bufferedData, _bufferedStart, _bufferedLength);
        } else
        {
            return new g(null, _originalStream, _bufferedData, _bufferedStart, _bufferedLength);
        }
    }

    public int getMatchStrength$3b517ad()
    {
        if (_matchStrength$459d58cc == 0)
        {
            return d.b;
        } else
        {
            return _matchStrength$459d58cc;
        }
    }

    public String getMatchedFormatName()
    {
        return _match.getFactory().getFormatName();
    }

    public ObjectReader getReader()
    {
        return _match;
    }

    public boolean hasMatch()
    {
        return _match != null;
    }

    protected (InputStream inputstream, byte abyte0[], int i, int j, ObjectReader objectreader, int k)
    {
        _originalStream = inputstream;
        _bufferedData = abyte0;
        _bufferedStart = i;
        _bufferedLength = j;
        _match = objectreader;
        _matchStrength$459d58cc = k;
    }
}
