// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.util.HashMap;

// Referenced classes of package com.fasterxml.jackson.databind.deser.impl:
//            PropertyBasedCreator, PropertyValueBuffer

public class ExternalTypeHandler
{

    private final HashMap _nameToPropertyIndex;
    private final ExtTypedProperty _properties[];
    private final TokenBuffer _tokens[];
    private final String _typeIds[];

    protected ExternalTypeHandler(ExternalTypeHandler externaltypehandler)
    {
        _properties = externaltypehandler._properties;
        _nameToPropertyIndex = externaltypehandler._nameToPropertyIndex;
        int i = _properties.length;
        _typeIds = new String[i];
        _tokens = new TokenBuffer[i];
    }

    protected ExternalTypeHandler(ExtTypedProperty aexttypedproperty[], HashMap hashmap, String as[], TokenBuffer atokenbuffer[])
    {
        _properties = aexttypedproperty;
        _nameToPropertyIndex = hashmap;
        _typeIds = as;
        _tokens = atokenbuffer;
    }

    protected final Object _deserialize(l l1, DeserializationContext deserializationcontext, int i, String s)
    {
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartArray();
        tokenbuffer.writeString(s);
        l l2 = _tokens[i].asParser(l1);
        l2.nextToken();
        tokenbuffer.copyCurrentStructure(l2);
        tokenbuffer.writeEndArray();
        l l3 = tokenbuffer.asParser(l1);
        l3.nextToken();
        return _properties[i].getProperty().deserialize(l3, deserializationcontext);
    }

    protected final void _deserializeAndSet(l l1, DeserializationContext deserializationcontext, Object obj, int i, String s)
    {
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.writeStartArray();
        tokenbuffer.writeString(s);
        l l2 = _tokens[i].asParser(l1);
        l2.nextToken();
        tokenbuffer.copyCurrentStructure(l2);
        tokenbuffer.writeEndArray();
        l l3 = tokenbuffer.asParser(l1);
        l3.nextToken();
        _properties[i].getProperty().deserializeAndSet(l3, deserializationcontext, obj);
    }

    public Object complete(l l1, DeserializationContext deserializationcontext, PropertyValueBuffer propertyvaluebuffer, PropertyBasedCreator propertybasedcreator)
    {
        int i;
        Object aobj[];
        int j;
        i = _properties.length;
        aobj = new Object[i];
        j = 0;
_L8:
        String s;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        s = _typeIds[j];
        if (s != null) goto _L2; else goto _L1
_L1:
        if (_tokens[j] == null) goto _L4; else goto _L3
_L3:
        if (!_properties[j].hasDefaultType())
        {
            throw deserializationcontext.mappingException((new StringBuilder("Missing external type id property '")).append(_properties[j].getTypePropertyName()).append("'").toString());
        }
        s = _properties[j].getDefaultTypeId();
_L6:
        aobj[j] = _deserialize(l1, deserializationcontext, j, s);
_L4:
        j++;
        continue; /* Loop/switch isn't completed */
_L2:
        if (_tokens[j] != null) goto _L6; else goto _L5
_L5:
        SettableBeanProperty settablebeanproperty2 = _properties[j].getProperty();
        throw deserializationcontext.mappingException((new StringBuilder("Missing property '")).append(settablebeanproperty2.getName()).append("' for external type id '").append(_properties[j].getTypePropertyName()).toString());
        for (int k = 0; k < i; k++)
        {
            SettableBeanProperty settablebeanproperty1 = _properties[k].getProperty();
            if (propertybasedcreator.findCreatorProperty(settablebeanproperty1.getName()) != null)
            {
                propertyvaluebuffer.assignParameter(settablebeanproperty1.getCreatorIndex(), aobj[k]);
            }
        }

        Object obj = propertybasedcreator.build(deserializationcontext, propertyvaluebuffer);
        for (int i1 = 0; i1 < i; i1++)
        {
            SettableBeanProperty settablebeanproperty = _properties[i1].getProperty();
            if (propertybasedcreator.findCreatorProperty(settablebeanproperty.getName()) == null)
            {
                settablebeanproperty.set(obj, aobj[i1]);
            }
        }

        return obj;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public Object complete(l l1, DeserializationContext deserializationcontext, Object obj)
    {
        int i;
        int j;
        i = 0;
        j = _properties.length;
_L11:
        if (i >= j) goto _L2; else goto _L1
_L1:
        String s = _typeIds[i];
        if (s != null) goto _L4; else goto _L3
_L3:
        TokenBuffer tokenbuffer = _tokens[i];
        if (tokenbuffer == null) goto _L6; else goto _L5
_L5:
        r r1 = tokenbuffer.firstToken();
        if (r1 == null || !r1.d()) goto _L8; else goto _L7
_L7:
        SettableBeanProperty settablebeanproperty1;
        Object obj1;
        l l2 = tokenbuffer.asParser(l1);
        l2.nextToken();
        settablebeanproperty1 = _properties[i].getProperty();
        obj1 = TypeDeserializer.deserializeIfNatural(l2, deserializationcontext, settablebeanproperty1.getType());
        if (obj1 == null) goto _L10; else goto _L9
_L9:
        settablebeanproperty1.set(obj, obj1);
_L6:
        i++;
          goto _L11
_L10:
        if (!_properties[i].hasDefaultType())
        {
            throw deserializationcontext.mappingException((new StringBuilder("Missing external type id property '")).append(_properties[i].getTypePropertyName()).append("'").toString());
        }
        s = _properties[i].getDefaultTypeId();
_L8:
        String s1 = s;
_L12:
        _deserializeAndSet(l1, deserializationcontext, obj, i, s1);
          goto _L6
_L4:
        if (_tokens[i] == null)
        {
            SettableBeanProperty settablebeanproperty = _properties[i].getProperty();
            throw deserializationcontext.mappingException((new StringBuilder("Missing property '")).append(settablebeanproperty.getName()).append("' for external type id '").append(_properties[i].getTypePropertyName()).toString());
        }
        break MISSING_BLOCK_LABEL_268;
_L2:
        return obj;
        s1 = s;
          goto _L12
    }

    public boolean handlePropertyValue(l l1, DeserializationContext deserializationcontext, String s, Object obj)
    {
        Integer integer = (Integer)_nameToPropertyIndex.get(s);
        if (integer == null)
        {
            return false;
        }
        int i = integer.intValue();
        boolean flag1;
        if (_properties[i].hasTypePropertyName(s))
        {
            _typeIds[i] = l1.getText();
            l1.skipChildren();
            String s1;
            if (obj != null && _tokens[i] != null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        } else
        {
            TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
            tokenbuffer.copyCurrentStructure(l1);
            _tokens[i] = tokenbuffer;
            boolean flag = false;
            if (obj != null)
            {
                String s2 = _typeIds[i];
                flag = false;
                if (s2 != null)
                {
                    flag = true;
                }
            }
            flag1 = flag;
        }
        if (flag1)
        {
            s1 = _typeIds[i];
            _typeIds[i] = null;
            _deserializeAndSet(l1, deserializationcontext, obj, i, s1);
            _tokens[i] = null;
        }
        return true;
    }

    public boolean handleTypePropertyValue(l l1, DeserializationContext deserializationcontext, String s, Object obj)
    {
        Integer integer = (Integer)_nameToPropertyIndex.get(s);
        if (integer == null)
        {
            return false;
        }
        int i = integer.intValue();
        if (!_properties[i].hasTypePropertyName(s))
        {
            return false;
        }
        String s1 = l1.getText();
        boolean flag = false;
        if (obj != null)
        {
            TokenBuffer tokenbuffer = _tokens[i];
            flag = false;
            if (tokenbuffer != null)
            {
                flag = true;
            }
        }
        if (flag)
        {
            _deserializeAndSet(l1, deserializationcontext, obj, i, s1);
            _tokens[i] = null;
        } else
        {
            _typeIds[i] = s1;
        }
        return true;
    }

    public ExternalTypeHandler start()
    {
        return new ExternalTypeHandler(this);
    }

    private class ExtTypedProperty
    {

        private final SettableBeanProperty _property;
        private final TypeDeserializer _typeDeserializer;
        private final String _typePropertyName;

        public final String getDefaultTypeId()
        {
            Class class1 = _typeDeserializer.getDefaultImpl();
            if (class1 == null)
            {
                return null;
            } else
            {
                return _typeDeserializer.getTypeIdResolver().idFromValueAndType(null, class1);
            }
        }

        public final SettableBeanProperty getProperty()
        {
            return _property;
        }

        public final String getTypePropertyName()
        {
            return _typePropertyName;
        }

        public final boolean hasDefaultType()
        {
            return _typeDeserializer.getDefaultImpl() != null;
        }

        public final boolean hasTypePropertyName(String s)
        {
            return s.equals(_typePropertyName);
        }

        public ExtTypedProperty(SettableBeanProperty settablebeanproperty, TypeDeserializer typedeserializer)
        {
            _property = settablebeanproperty;
            _typeDeserializer = typedeserializer;
            _typePropertyName = typedeserializer.getPropertyName();
        }
    }

}
