// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.ConfigFeature;

public final class MapperFeature extends Enum
    implements ConfigFeature
{

    private static final MapperFeature $VALUES[];
    public static final MapperFeature ALLOW_FINAL_FIELDS_AS_MUTATORS;
    public static final MapperFeature AUTO_DETECT_CREATORS;
    public static final MapperFeature AUTO_DETECT_FIELDS;
    public static final MapperFeature AUTO_DETECT_GETTERS;
    public static final MapperFeature AUTO_DETECT_IS_GETTERS;
    public static final MapperFeature AUTO_DETECT_SETTERS;
    public static final MapperFeature CAN_OVERRIDE_ACCESS_MODIFIERS;
    public static final MapperFeature DEFAULT_VIEW_INCLUSION;
    public static final MapperFeature INFER_PROPERTY_MUTATORS;
    public static final MapperFeature REQUIRE_SETTERS_FOR_GETTERS;
    public static final MapperFeature SORT_PROPERTIES_ALPHABETICALLY;
    public static final MapperFeature USE_ANNOTATIONS;
    public static final MapperFeature USE_GETTERS_AS_SETTERS;
    public static final MapperFeature USE_STATIC_TYPING;
    public static final MapperFeature USE_WRAPPER_NAME_AS_PROPERTY_NAME;
    private final boolean _defaultState;

    private MapperFeature(String s, int i, boolean flag)
    {
        super(s, i);
        _defaultState = flag;
    }

    public static MapperFeature valueOf(String s)
    {
        return (MapperFeature)Enum.valueOf(com/fasterxml/jackson/databind/MapperFeature, s);
    }

    public static MapperFeature[] values()
    {
        return (MapperFeature[])$VALUES.clone();
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
        USE_ANNOTATIONS = new MapperFeature("USE_ANNOTATIONS", 0, true);
        AUTO_DETECT_CREATORS = new MapperFeature("AUTO_DETECT_CREATORS", 1, true);
        AUTO_DETECT_FIELDS = new MapperFeature("AUTO_DETECT_FIELDS", 2, true);
        AUTO_DETECT_GETTERS = new MapperFeature("AUTO_DETECT_GETTERS", 3, true);
        AUTO_DETECT_IS_GETTERS = new MapperFeature("AUTO_DETECT_IS_GETTERS", 4, true);
        AUTO_DETECT_SETTERS = new MapperFeature("AUTO_DETECT_SETTERS", 5, true);
        REQUIRE_SETTERS_FOR_GETTERS = new MapperFeature("REQUIRE_SETTERS_FOR_GETTERS", 6, false);
        USE_GETTERS_AS_SETTERS = new MapperFeature("USE_GETTERS_AS_SETTERS", 7, true);
        CAN_OVERRIDE_ACCESS_MODIFIERS = new MapperFeature("CAN_OVERRIDE_ACCESS_MODIFIERS", 8, true);
        INFER_PROPERTY_MUTATORS = new MapperFeature("INFER_PROPERTY_MUTATORS", 9, true);
        ALLOW_FINAL_FIELDS_AS_MUTATORS = new MapperFeature("ALLOW_FINAL_FIELDS_AS_MUTATORS", 10, true);
        USE_STATIC_TYPING = new MapperFeature("USE_STATIC_TYPING", 11, false);
        DEFAULT_VIEW_INCLUSION = new MapperFeature("DEFAULT_VIEW_INCLUSION", 12, true);
        SORT_PROPERTIES_ALPHABETICALLY = new MapperFeature("SORT_PROPERTIES_ALPHABETICALLY", 13, false);
        USE_WRAPPER_NAME_AS_PROPERTY_NAME = new MapperFeature("USE_WRAPPER_NAME_AS_PROPERTY_NAME", 14, false);
        MapperFeature amapperfeature[] = new MapperFeature[15];
        amapperfeature[0] = USE_ANNOTATIONS;
        amapperfeature[1] = AUTO_DETECT_CREATORS;
        amapperfeature[2] = AUTO_DETECT_FIELDS;
        amapperfeature[3] = AUTO_DETECT_GETTERS;
        amapperfeature[4] = AUTO_DETECT_IS_GETTERS;
        amapperfeature[5] = AUTO_DETECT_SETTERS;
        amapperfeature[6] = REQUIRE_SETTERS_FOR_GETTERS;
        amapperfeature[7] = USE_GETTERS_AS_SETTERS;
        amapperfeature[8] = CAN_OVERRIDE_ACCESS_MODIFIERS;
        amapperfeature[9] = INFER_PROPERTY_MUTATORS;
        amapperfeature[10] = ALLOW_FINAL_FIELDS_AS_MUTATORS;
        amapperfeature[11] = USE_STATIC_TYPING;
        amapperfeature[12] = DEFAULT_VIEW_INCLUSION;
        amapperfeature[13] = SORT_PROPERTIES_ALPHABETICALLY;
        amapperfeature[14] = USE_WRAPPER_NAME_AS_PROPERTY_NAME;
        $VALUES = amapperfeature;
    }
}
