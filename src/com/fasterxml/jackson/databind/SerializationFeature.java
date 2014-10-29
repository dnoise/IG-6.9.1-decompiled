// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.ConfigFeature;

public final class SerializationFeature extends Enum
    implements ConfigFeature
{

    private static final SerializationFeature $VALUES[];
    public static final SerializationFeature CLOSE_CLOSEABLE;
    public static final SerializationFeature EAGER_SERIALIZER_FETCH;
    public static final SerializationFeature FAIL_ON_EMPTY_BEANS;
    public static final SerializationFeature FLUSH_AFTER_WRITE_VALUE;
    public static final SerializationFeature INDENT_OUTPUT;
    public static final SerializationFeature ORDER_MAP_ENTRIES_BY_KEYS;
    public static final SerializationFeature WRAP_EXCEPTIONS;
    public static final SerializationFeature WRAP_ROOT_VALUE;
    public static final SerializationFeature WRITE_BIGDECIMAL_AS_PLAIN;
    public static final SerializationFeature WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS;
    public static final SerializationFeature WRITE_DATES_AS_TIMESTAMPS;
    public static final SerializationFeature WRITE_DATE_KEYS_AS_TIMESTAMPS;
    public static final SerializationFeature WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS;
    public static final SerializationFeature WRITE_EMPTY_JSON_ARRAYS;
    public static final SerializationFeature WRITE_ENUMS_USING_INDEX;
    public static final SerializationFeature WRITE_ENUMS_USING_TO_STRING;
    public static final SerializationFeature WRITE_NULL_MAP_VALUES;
    public static final SerializationFeature WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED;
    private final boolean _defaultState;

    private SerializationFeature(String s, int i, boolean flag)
    {
        super(s, i);
        _defaultState = flag;
    }

    public static SerializationFeature valueOf(String s)
    {
        return (SerializationFeature)Enum.valueOf(com/fasterxml/jackson/databind/SerializationFeature, s);
    }

    public static SerializationFeature[] values()
    {
        return (SerializationFeature[])$VALUES.clone();
    }

    public final boolean enabledByDefault()
    {
        return _defaultState;
    }

    public final int getMask()
    {
        return 1 << ordinal();
    }

    static 
    {
        WRAP_ROOT_VALUE = new SerializationFeature("WRAP_ROOT_VALUE", 0, false);
        INDENT_OUTPUT = new SerializationFeature("INDENT_OUTPUT", 1, false);
        FAIL_ON_EMPTY_BEANS = new SerializationFeature("FAIL_ON_EMPTY_BEANS", 2, true);
        WRAP_EXCEPTIONS = new SerializationFeature("WRAP_EXCEPTIONS", 3, true);
        CLOSE_CLOSEABLE = new SerializationFeature("CLOSE_CLOSEABLE", 4, false);
        FLUSH_AFTER_WRITE_VALUE = new SerializationFeature("FLUSH_AFTER_WRITE_VALUE", 5, true);
        WRITE_DATES_AS_TIMESTAMPS = new SerializationFeature("WRITE_DATES_AS_TIMESTAMPS", 6, true);
        WRITE_DATE_KEYS_AS_TIMESTAMPS = new SerializationFeature("WRITE_DATE_KEYS_AS_TIMESTAMPS", 7, false);
        WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS = new SerializationFeature("WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS", 8, false);
        WRITE_ENUMS_USING_TO_STRING = new SerializationFeature("WRITE_ENUMS_USING_TO_STRING", 9, false);
        WRITE_ENUMS_USING_INDEX = new SerializationFeature("WRITE_ENUMS_USING_INDEX", 10, false);
        WRITE_NULL_MAP_VALUES = new SerializationFeature("WRITE_NULL_MAP_VALUES", 11, true);
        WRITE_EMPTY_JSON_ARRAYS = new SerializationFeature("WRITE_EMPTY_JSON_ARRAYS", 12, true);
        WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED = new SerializationFeature("WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED", 13, false);
        WRITE_BIGDECIMAL_AS_PLAIN = new SerializationFeature("WRITE_BIGDECIMAL_AS_PLAIN", 14, false);
        WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS = new SerializationFeature("WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS", 15, true);
        ORDER_MAP_ENTRIES_BY_KEYS = new SerializationFeature("ORDER_MAP_ENTRIES_BY_KEYS", 16, false);
        EAGER_SERIALIZER_FETCH = new SerializationFeature("EAGER_SERIALIZER_FETCH", 17, true);
        SerializationFeature aserializationfeature[] = new SerializationFeature[18];
        aserializationfeature[0] = WRAP_ROOT_VALUE;
        aserializationfeature[1] = INDENT_OUTPUT;
        aserializationfeature[2] = FAIL_ON_EMPTY_BEANS;
        aserializationfeature[3] = WRAP_EXCEPTIONS;
        aserializationfeature[4] = CLOSE_CLOSEABLE;
        aserializationfeature[5] = FLUSH_AFTER_WRITE_VALUE;
        aserializationfeature[6] = WRITE_DATES_AS_TIMESTAMPS;
        aserializationfeature[7] = WRITE_DATE_KEYS_AS_TIMESTAMPS;
        aserializationfeature[8] = WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS;
        aserializationfeature[9] = WRITE_ENUMS_USING_TO_STRING;
        aserializationfeature[10] = WRITE_ENUMS_USING_INDEX;
        aserializationfeature[11] = WRITE_NULL_MAP_VALUES;
        aserializationfeature[12] = WRITE_EMPTY_JSON_ARRAYS;
        aserializationfeature[13] = WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED;
        aserializationfeature[14] = WRITE_BIGDECIMAL_AS_PLAIN;
        aserializationfeature[15] = WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS;
        aserializationfeature[16] = ORDER_MAP_ENTRIES_BY_KEYS;
        aserializationfeature[17] = EAGER_SERIALIZER_FETCH;
        $VALUES = aserializationfeature;
    }
}
