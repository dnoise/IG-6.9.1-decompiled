// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.Serializable;

public final class SerializerFactoryConfig
    implements Serializable
{

    protected static final BeanSerializerModifier NO_MODIFIERS[] = new BeanSerializerModifier[0];
    protected static final Serializers NO_SERIALIZERS[] = new Serializers[0];
    private static final long serialVersionUID = 1L;
    protected final Serializers _additionalKeySerializers[];
    protected final Serializers _additionalSerializers[];
    protected final BeanSerializerModifier _modifiers[];

    public SerializerFactoryConfig()
    {
        this(null, null, null);
    }

    protected SerializerFactoryConfig(Serializers aserializers[], Serializers aserializers1[], BeanSerializerModifier abeanserializermodifier[])
    {
        if (aserializers == null)
        {
            aserializers = NO_SERIALIZERS;
        }
        _additionalSerializers = aserializers;
        if (aserializers1 == null)
        {
            aserializers1 = NO_SERIALIZERS;
        }
        _additionalKeySerializers = aserializers1;
        if (abeanserializermodifier == null)
        {
            abeanserializermodifier = NO_MODIFIERS;
        }
        _modifiers = abeanserializermodifier;
    }

    public final boolean hasKeySerializers()
    {
        return _additionalKeySerializers.length > 0;
    }

    public final boolean hasSerializerModifiers()
    {
        return _modifiers.length > 0;
    }

    public final boolean hasSerializers()
    {
        return _additionalSerializers.length > 0;
    }

    public final Iterable keySerializers()
    {
        return ArrayBuilders.arrayAsIterable(_additionalKeySerializers);
    }

    public final Iterable serializerModifiers()
    {
        return ArrayBuilders.arrayAsIterable(_modifiers);
    }

    public final Iterable serializers()
    {
        return ArrayBuilders.arrayAsIterable(_additionalSerializers);
    }

    public final SerializerFactoryConfig withAdditionalKeySerializers(Serializers serializers1)
    {
        if (serializers1 == null)
        {
            throw new IllegalArgumentException("Can not pass null Serializers");
        } else
        {
            Serializers aserializers[] = (Serializers[])ArrayBuilders.insertInListNoDup(_additionalKeySerializers, serializers1);
            return new SerializerFactoryConfig(_additionalSerializers, aserializers, _modifiers);
        }
    }

    public final SerializerFactoryConfig withAdditionalSerializers(Serializers serializers1)
    {
        if (serializers1 == null)
        {
            throw new IllegalArgumentException("Can not pass null Serializers");
        } else
        {
            return new SerializerFactoryConfig((Serializers[])ArrayBuilders.insertInListNoDup(_additionalSerializers, serializers1), _additionalKeySerializers, _modifiers);
        }
    }

    public final SerializerFactoryConfig withSerializerModifier(BeanSerializerModifier beanserializermodifier)
    {
        if (beanserializermodifier == null)
        {
            throw new IllegalArgumentException("Can not pass null modifier");
        } else
        {
            BeanSerializerModifier abeanserializermodifier[] = (BeanSerializerModifier[])ArrayBuilders.insertInListNoDup(_modifiers, beanserializermodifier);
            return new SerializerFactoryConfig(_additionalSerializers, _additionalKeySerializers, abeanserializermodifier);
        }
    }

}
