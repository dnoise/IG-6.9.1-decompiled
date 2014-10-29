// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.ReadOnlyClassToSerializerMap;
import java.util.HashMap;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            ResolvableSerializer

public final class SerializerCache
{

    private ReadOnlyClassToSerializerMap _readOnlyMap;
    private HashMap _sharedMap;

    public SerializerCache()
    {
        _sharedMap = new HashMap(64);
        _readOnlyMap = null;
    }

    public final void addAndResolveNonTypedSerializer(JavaType javatype, JsonSerializer jsonserializer, SerializerProvider serializerprovider)
    {
        this;
        JVM INSTR monitorenter ;
        if (_sharedMap.put(new TypeKey(javatype, false), jsonserializer) == null)
        {
            _readOnlyMap = null;
        }
        if (jsonserializer instanceof ResolvableSerializer)
        {
            ((ResolvableSerializer)jsonserializer).resolve(serializerprovider);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void addAndResolveNonTypedSerializer(Class class1, JsonSerializer jsonserializer, SerializerProvider serializerprovider)
    {
        this;
        JVM INSTR monitorenter ;
        if (_sharedMap.put(new TypeKey(class1, false), jsonserializer) == null)
        {
            _readOnlyMap = null;
        }
        if (jsonserializer instanceof ResolvableSerializer)
        {
            ((ResolvableSerializer)jsonserializer).resolve(serializerprovider);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void addTypedSerializer(JavaType javatype, JsonSerializer jsonserializer)
    {
        this;
        JVM INSTR monitorenter ;
        if (_sharedMap.put(new TypeKey(javatype, true), jsonserializer) == null)
        {
            _readOnlyMap = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void addTypedSerializer(Class class1, JsonSerializer jsonserializer)
    {
        this;
        JVM INSTR monitorenter ;
        if (_sharedMap.put(new TypeKey(class1, true), jsonserializer) == null)
        {
            _readOnlyMap = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void flush()
    {
        this;
        JVM INSTR monitorenter ;
        _sharedMap.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final ReadOnlyClassToSerializerMap getReadOnlyLookupMap()
    {
        this;
        JVM INSTR monitorenter ;
        ReadOnlyClassToSerializerMap readonlyclasstoserializermap = _readOnlyMap;
        if (readonlyclasstoserializermap != null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        readonlyclasstoserializermap = ReadOnlyClassToSerializerMap.from(_sharedMap);
        _readOnlyMap = readonlyclasstoserializermap;
        this;
        JVM INSTR monitorexit ;
        return readonlyclasstoserializermap.instance();
        Exception exception;
        exception;
        throw exception;
    }

    public final int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i = _sharedMap.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final JsonSerializer typedValueSerializer(JavaType javatype)
    {
        this;
        JVM INSTR monitorenter ;
        JsonSerializer jsonserializer = (JsonSerializer)_sharedMap.get(new TypeKey(javatype, true));
        this;
        JVM INSTR monitorexit ;
        return jsonserializer;
        Exception exception;
        exception;
        throw exception;
    }

    public final JsonSerializer typedValueSerializer(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        JsonSerializer jsonserializer = (JsonSerializer)_sharedMap.get(new TypeKey(class1, true));
        this;
        JVM INSTR monitorexit ;
        return jsonserializer;
        Exception exception;
        exception;
        throw exception;
    }

    public final JsonSerializer untypedValueSerializer(JavaType javatype)
    {
        this;
        JVM INSTR monitorenter ;
        JsonSerializer jsonserializer = (JsonSerializer)_sharedMap.get(new TypeKey(javatype, false));
        this;
        JVM INSTR monitorexit ;
        return jsonserializer;
        Exception exception;
        exception;
        throw exception;
    }

    public final JsonSerializer untypedValueSerializer(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        JsonSerializer jsonserializer = (JsonSerializer)_sharedMap.get(new TypeKey(class1, false));
        this;
        JVM INSTR monitorexit ;
        return jsonserializer;
        Exception exception;
        exception;
        throw exception;
    }

    private class TypeKey
    {

        protected Class _class;
        protected int _hashCode;
        protected boolean _isTyped;
        protected JavaType _type;

        private static final int hash(JavaType javatype, boolean flag)
        {
            int i = -1 + javatype.hashCode();
            if (flag)
            {
                i--;
            }
            return i;
        }

        private static final int hash(Class class1, boolean flag)
        {
            int i = class1.getName().hashCode();
            if (flag)
            {
                i++;
            }
            return i;
        }

        public final boolean equals(Object obj)
        {
            if (obj != null)
            {
                if (obj == this)
                {
                    return true;
                }
                if (obj.getClass() == getClass())
                {
                    TypeKey typekey = (TypeKey)obj;
                    if (typekey._isTyped == _isTyped)
                    {
                        if (_class != null)
                        {
                            if (typekey._class == _class)
                            {
                                return true;
                            }
                        } else
                        {
                            return _type.equals(typekey._type);
                        }
                    }
                }
            }
            return false;
        }

        public final int hashCode()
        {
            return _hashCode;
        }

        public final void resetTyped(JavaType javatype)
        {
            _type = javatype;
            _class = null;
            _isTyped = true;
            _hashCode = hash(javatype, true);
        }

        public final void resetTyped(Class class1)
        {
            _type = null;
            _class = class1;
            _isTyped = true;
            _hashCode = hash(class1, true);
        }

        public final void resetUntyped(JavaType javatype)
        {
            _type = javatype;
            _class = null;
            _isTyped = false;
            _hashCode = hash(javatype, false);
        }

        public final void resetUntyped(Class class1)
        {
            _type = null;
            _class = class1;
            _isTyped = false;
            _hashCode = hash(class1, false);
        }

        public final String toString()
        {
            if (_class != null)
            {
                return (new StringBuilder("{class: ")).append(_class.getName()).append(", typed? ").append(_isTyped).append("}").toString();
            } else
            {
                return (new StringBuilder("{type: ")).append(_type).append(", typed? ").append(_isTyped).append("}").toString();
            }
        }

        public TypeKey(JavaType javatype, boolean flag)
        {
            _type = javatype;
            _class = null;
            _isTyped = flag;
            _hashCode = hash(javatype, flag);
        }

        public TypeKey(Class class1, boolean flag)
        {
            _class = class1;
            _type = null;
            _isTyped = flag;
            _hashCode = hash(class1, flag);
        }
    }

}
