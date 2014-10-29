// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.c;
import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JsonMappingException, RuntimeJsonMappingException, JsonDeserializer, DeserializationContext, 
//            JavaType

public class MappingIterator
    implements Closeable, Iterator
{

    protected static final MappingIterator EMPTY_ITERATOR = new MappingIterator(null, null, null, null, false, null);
    protected final boolean _closeParser;
    protected final DeserializationContext _context;
    protected final JsonDeserializer _deserializer;
    protected boolean _hasNextChecked;
    protected l _parser;
    protected final JavaType _type;
    protected final Object _updatedValue;

    protected MappingIterator(JavaType javatype, l l1, DeserializationContext deserializationcontext, JsonDeserializer jsondeserializer)
    {
        this(javatype, l1, deserializationcontext, jsondeserializer, true, null);
    }

    protected MappingIterator(JavaType javatype, l l1, DeserializationContext deserializationcontext, JsonDeserializer jsondeserializer, boolean flag, Object obj)
    {
        _type = javatype;
        _parser = l1;
        _context = deserializationcontext;
        _deserializer = jsondeserializer;
        _closeParser = flag;
        if (obj == null)
        {
            _updatedValue = null;
        } else
        {
            _updatedValue = obj;
        }
        if (flag && l1 != null && l1.getCurrentToken() == r.d)
        {
            l1.clearCurrentToken();
        }
    }

    protected static MappingIterator emptyIterator()
    {
        return EMPTY_ITERATOR;
    }

    public void close()
    {
        if (_parser != null)
        {
            _parser.close();
        }
    }

    public j getCurrentLocation()
    {
        return _parser.getCurrentLocation();
    }

    public l getParser()
    {
        return _parser;
    }

    public c getParserSchema()
    {
        return _parser.getSchema();
    }

    public boolean hasNext()
    {
        boolean flag;
        try
        {
            flag = hasNextValue();
        }
        catch (JsonMappingException jsonmappingexception)
        {
            throw new RuntimeJsonMappingException(jsonmappingexception.getMessage(), jsonmappingexception);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception.getMessage(), ioexception);
        }
        return flag;
    }

    public boolean hasNextValue()
    {
        if (_parser != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (_hasNextChecked)
        {
            break; /* Loop/switch isn't completed */
        }
        r r1 = _parser.getCurrentToken();
        _hasNextChecked = true;
        if (r1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        r r2 = _parser.nextToken();
        if (r2 != null && r2 != r.e)
        {
            break; /* Loop/switch isn't completed */
        }
        l l1 = _parser;
        _parser = null;
        if (_closeParser)
        {
            l1.close();
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    public Object next()
    {
        Object obj;
        try
        {
            obj = nextValue();
        }
        catch (JsonMappingException jsonmappingexception)
        {
            throw new RuntimeJsonMappingException(jsonmappingexception.getMessage(), jsonmappingexception);
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException(ioexception.getMessage(), ioexception);
        }
        return obj;
    }

    public Object nextValue()
    {
        if (!_hasNextChecked && !hasNextValue())
        {
            throw new NoSuchElementException();
        }
        if (_parser == null)
        {
            throw new NoSuchElementException();
        }
        _hasNextChecked = false;
        Object obj;
        if (_updatedValue == null)
        {
            obj = _deserializer.deserialize(_parser, _context);
        } else
        {
            _deserializer.deserialize(_parser, _context, _updatedValue);
            obj = _updatedValue;
        }
        _parser.clearCurrentToken();
        return obj;
    }

    public List readAll()
    {
        return readAll(((List) (new ArrayList())));
    }

    public List readAll(List list)
    {
        for (; hasNextValue(); list.add(nextValue())) { }
        return list;
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

}
