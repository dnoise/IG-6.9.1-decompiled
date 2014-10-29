// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.b.d;
import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectReader;
import java.io.InputStream;
import java.util.Collection;

public class DataFormatReaders
{

    public static final int DEFAULT_MAX_INPUT_LOOKAHEAD = 64;
    protected final int _maxInputLookahead;
    protected final int _minimalMatch$459d58cc;
    protected final int _optimalMatch$459d58cc;
    protected final ObjectReader _readers[];

    public DataFormatReaders(Collection collection)
    {
        this((ObjectReader[])collection.toArray(new ObjectReader[collection.size()]));
    }

    public transient DataFormatReaders(ObjectReader aobjectreader[])
    {
        this(aobjectreader, d.d, d.c, 64);
    }

    private DataFormatReaders(ObjectReader aobjectreader[], int i, int j, int k)
    {
        _readers = aobjectreader;
        _optimalMatch$459d58cc = i;
        _minimalMatch$459d58cc = j;
        _maxInputLookahead = k;
    }

    private Match _findFormat(AccessorForReader accessorforreader)
    {
        int i;
        ObjectReader objectreader;
        ObjectReader aobjectreader[];
        int j;
        int k;
        i = 0;
        objectreader = null;
        aobjectreader = _readers;
        j = aobjectreader.length;
        k = 0;
_L5:
        if (k >= j) goto _L2; else goto _L1
_L1:
        int l;
        ObjectReader objectreader1;
        objectreader1 = aobjectreader[k];
        accessorforreader.reset();
        l = objectreader1.getFactory().hasFormat$2764b24c(accessorforreader);
        if (l == 0 || l - 1 < -1 + _minimalMatch$459d58cc || objectreader != null && i - 1 >= l - 1)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        if (l - 1 >= -1 + _optimalMatch$459d58cc) goto _L4; else goto _L3
_L3:
        ObjectReader objectreader2;
        i = l;
        objectreader2 = objectreader1;
_L6:
        k++;
        objectreader = objectreader2;
          goto _L5
_L2:
        l = i;
        objectreader1 = objectreader;
_L4:
        return accessorforreader.edb45c1(objectreader1, l);
        objectreader2 = objectreader;
          goto _L6
    }

    public Match findFormat(InputStream inputstream)
    {
        return _findFormat(new AccessorForReader(inputstream, new byte[_maxInputLookahead]));
    }

    public Match findFormat(byte abyte0[])
    {
        return _findFormat(new AccessorForReader(abyte0));
    }

    public Match findFormat(byte abyte0[], int i, int j)
    {
        return _findFormat(new AccessorForReader(abyte0, i, j));
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[');
        int i = _readers.length;
        if (i > 0)
        {
            stringbuilder.append(_readers[0].getFactory().getFormatName());
            for (int j = 1; j < i; j++)
            {
                stringbuilder.append(", ");
                stringbuilder.append(_readers[j].getFactory().getFormatName());
            }

        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }

    public DataFormatReaders with(DeserializationConfig deserializationconfig)
    {
        int i = _readers.length;
        ObjectReader aobjectreader[] = new ObjectReader[i];
        for (int j = 0; j < i; j++)
        {
            aobjectreader[j] = _readers[j].with(deserializationconfig);
        }

        return new DataFormatReaders(aobjectreader, _optimalMatch$459d58cc, _minimalMatch$459d58cc, _maxInputLookahead);
    }

    public DataFormatReaders with(ObjectReader aobjectreader[])
    {
        return new DataFormatReaders(aobjectreader, _optimalMatch$459d58cc, _minimalMatch$459d58cc, _maxInputLookahead);
    }

    public DataFormatReaders withMaxInputLookahead(int i)
    {
        if (i == _maxInputLookahead)
        {
            return this;
        } else
        {
            return new DataFormatReaders(_readers, _optimalMatch$459d58cc, _minimalMatch$459d58cc, i);
        }
    }

    public DataFormatReaders withMinimalMatch$79dd65ca(int i)
    {
        if (i == _minimalMatch$459d58cc)
        {
            return this;
        } else
        {
            return new DataFormatReaders(_readers, _optimalMatch$459d58cc, i, _maxInputLookahead);
        }
    }

    public DataFormatReaders withOptimalMatch$79dd65ca(int i)
    {
        if (i == _optimalMatch$459d58cc)
        {
            return this;
        } else
        {
            return new DataFormatReaders(_readers, i, _minimalMatch$459d58cc, _maxInputLookahead);
        }
    }

    public DataFormatReaders withType(JavaType javatype)
    {
        int i = _readers.length;
        ObjectReader aobjectreader[] = new ObjectReader[i];
        for (int j = 0; j < i; j++)
        {
            aobjectreader[j] = _readers[j].withType(javatype);
        }

        return new DataFormatReaders(aobjectreader, _optimalMatch$459d58cc, _minimalMatch$459d58cc, _maxInputLookahead);
    }

    private class AccessorForReader extends c
    {

        final DataFormatReaders this$0;

        public Match createMatcher$edb45c1(ObjectReader objectreader, int i)
        {
            return new Match(_in, _buffer, _bufferedStart, _bufferedEnd - _bufferedStart, objectreader, i);
        }

        public AccessorForReader(InputStream inputstream, byte abyte0[])
        {
            this$0 = DataFormatReaders.this;
            super(inputstream, abyte0);
        }

        public AccessorForReader(byte abyte0[])
        {
            this$0 = DataFormatReaders.this;
            super(abyte0);
        }

        public AccessorForReader(byte abyte0[], int i, int j)
        {
            this$0 = DataFormatReaders.this;
            super(abyte0, i, j);
        }

        private class Match
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

            protected Match(InputStream inputstream, byte abyte0[], int i, int j, ObjectReader objectreader, int k)
            {
                _originalStream = inputstream;
                _bufferedData = abyte0;
                _bufferedStart = i;
                _bufferedLength = j;
                _match = objectreader;
                _matchStrength$459d58cc = k;
            }
        }

    }

}
