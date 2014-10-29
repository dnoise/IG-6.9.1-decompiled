// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ArrayBuilders
{

    private BooleanBuilder _booleanBuilder;
    private ByteBuilder _byteBuilder;
    private DoubleBuilder _doubleBuilder;
    private FloatBuilder _floatBuilder;
    private IntBuilder _intBuilder;
    private LongBuilder _longBuilder;
    private ShortBuilder _shortBuilder;

    public ArrayBuilders()
    {
        _booleanBuilder = null;
        _byteBuilder = null;
        _shortBuilder = null;
        _intBuilder = null;
        _longBuilder = null;
        _floatBuilder = null;
        _doubleBuilder = null;
    }

    public static List addToList(List list, Object obj)
    {
        if (list == null)
        {
            list = new ArrayList();
        }
        list.add(obj);
        return list;
    }

    public static Iterable arrayAsIterable(Object aobj[])
    {
        return new ArrayIterator(aobj);
    }

    public static Iterator arrayAsIterator(Object aobj[])
    {
        return new ArrayIterator(aobj);
    }

    public static ArrayList arrayToList(Object aobj[])
    {
        ArrayList arraylist = new ArrayList();
        if (aobj != null)
        {
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                arraylist.add(aobj[j]);
            }

        }
        return arraylist;
    }

    public static HashSet arrayToSet(Object aobj[])
    {
        HashSet hashset = new HashSet();
        if (aobj != null)
        {
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                hashset.add(aobj[j]);
            }

        }
        return hashset;
    }

    public static Object getArrayComparator(Object obj)
    {
        int i = Array.getLength(obj);
        return new _cls1();
    }

    public static Object[] insertInList(Object aobj[], Object obj)
    {
        int i = aobj.length;
        Object aobj1[] = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), i + 1);
        if (i > 0)
        {
            System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj1)), 1, i);
        }
        aobj1[0] = obj;
        return aobj1;
    }

    public static Object[] insertInListNoDup(Object aobj[], Object obj)
    {
        int i;
        int j;
        i = aobj.length;
        j = 0;
_L6:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (aobj[j] != obj)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        if (j != 0) goto _L2; else goto _L1
_L1:
        Object aobj2[] = aobj;
_L4:
        return aobj2;
_L2:
        int k;
        int l;
        aobj2 = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), i);
        System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj2)), 1, j);
        aobj2[0] = obj;
        k = j + 1;
        l = i - k;
        if (l <= 0) goto _L4; else goto _L3
_L3:
        System.arraycopy(((Object) (aobj)), k, ((Object) (aobj2)), k, l);
        return aobj2;
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        Object aobj1[] = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), i + 1);
        if (i > 0)
        {
            System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj1)), 1, i);
        }
        aobj1[0] = obj;
        return aobj1;
    }

    public static HashSet setAndArray(Set set, Object aobj[])
    {
        HashSet hashset = new HashSet();
        if (set != null)
        {
            hashset.addAll(set);
        }
        if (aobj != null)
        {
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                hashset.add(aobj[j]);
            }

        }
        return hashset;
    }

    public final BooleanBuilder getBooleanBuilder()
    {
        if (_booleanBuilder == null)
        {
            _booleanBuilder = new BooleanBuilder();
        }
        return _booleanBuilder;
    }

    public final ByteBuilder getByteBuilder()
    {
        if (_byteBuilder == null)
        {
            _byteBuilder = new ByteBuilder();
        }
        return _byteBuilder;
    }

    public final DoubleBuilder getDoubleBuilder()
    {
        if (_doubleBuilder == null)
        {
            _doubleBuilder = new DoubleBuilder();
        }
        return _doubleBuilder;
    }

    public final FloatBuilder getFloatBuilder()
    {
        if (_floatBuilder == null)
        {
            _floatBuilder = new FloatBuilder();
        }
        return _floatBuilder;
    }

    public final IntBuilder getIntBuilder()
    {
        if (_intBuilder == null)
        {
            _intBuilder = new IntBuilder();
        }
        return _intBuilder;
    }

    public final LongBuilder getLongBuilder()
    {
        if (_longBuilder == null)
        {
            _longBuilder = new LongBuilder();
        }
        return _longBuilder;
    }

    public final ShortBuilder getShortBuilder()
    {
        if (_shortBuilder == null)
        {
            _shortBuilder = new ShortBuilder();
        }
        return _shortBuilder;
    }

    private class ArrayIterator
        implements Iterable, Iterator
    {

        private final Object _array[];
        private int _index;

        public final boolean hasNext()
        {
            return _index < _array.length;
        }

        public final Iterator iterator()
        {
            return this;
        }

        public final Object next()
        {
            if (_index >= _array.length)
            {
                throw new NoSuchElementException();
            } else
            {
                Object aobj[] = _array;
                int i = _index;
                _index = i + 1;
                return aobj[i];
            }
        }

        public final void remove()
        {
            throw new UnsupportedOperationException();
        }

        public ArrayIterator(Object aobj[])
        {
            _array = aobj;
            _index = 0;
        }
    }


    private class _cls1
    {

        final Object val$defaultValue;
        final Class val$defaultValueType;
        final int val$length;

        public final boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag = true;
_L4:
            return flag;
_L2:
            flag = false;
            if (obj == null) goto _L4; else goto _L3
_L3:
            Class class1;
            Class class2;
            class1 = obj.getClass();
            class2 = defaultValueType;
            flag = false;
            if (class1 != class2) goto _L4; else goto _L5
_L5:
            int i;
            int j;
            i = Array.getLength(obj);
            j = length;
            flag = false;
            if (i != j) goto _L4; else goto _L6
_L6:
            int k = 0;
_L10:
            if (k >= length) goto _L8; else goto _L7
_L7:
            boolean flag1;
            Object obj1 = Array.get(defaultValue, k);
            Object obj2 = Array.get(obj, k);
            if (obj1 == obj2 || obj1 == null)
            {
                continue; /* Loop/switch isn't completed */
            }
            flag1 = obj1.equals(obj2);
            flag = false;
            if (!flag1) goto _L4; else goto _L9
_L9:
            k++;
              goto _L10
_L8:
            return true;
        }

        _cls1()
        {
            defaultValueType = class1;
            length = i;
            defaultValue = obj;
            super();
        }
    }


    private class BooleanBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final boolean[] _constructArray(int i)
        {
            return new boolean[i];
        }

        public BooleanBuilder()
        {
        }
    }


    private class ByteBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final byte[] _constructArray(int i)
        {
            return new byte[i];
        }

        public ByteBuilder()
        {
        }
    }


    private class DoubleBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final double[] _constructArray(int i)
        {
            return new double[i];
        }

        public DoubleBuilder()
        {
        }
    }


    private class FloatBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final float[] _constructArray(int i)
        {
            return new float[i];
        }

        public FloatBuilder()
        {
        }
    }


    private class IntBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final int[] _constructArray(int i)
        {
            return new int[i];
        }

        public IntBuilder()
        {
        }
    }


    private class LongBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final long[] _constructArray(int i)
        {
            return new long[i];
        }

        public LongBuilder()
        {
        }
    }


    private class ShortBuilder extends PrimitiveArrayBuilder
    {

        public final volatile Object _constructArray(int i)
        {
            return _constructArray(i);
        }

        public final short[] _constructArray(int i)
        {
            return new short[i];
        }

        public ShortBuilder()
        {
        }
    }

}
