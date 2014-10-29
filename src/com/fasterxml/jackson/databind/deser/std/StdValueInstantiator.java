// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import java.io.Serializable;

public class StdValueInstantiator extends ValueInstantiator
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final boolean _cfgEmptyStringsAsObjects;
    protected CreatorProperty _constructorArguments[];
    protected AnnotatedWithParams _defaultCreator;
    protected CreatorProperty _delegateArguments[];
    protected AnnotatedWithParams _delegateCreator;
    protected JavaType _delegateType;
    protected AnnotatedWithParams _fromBooleanCreator;
    protected AnnotatedWithParams _fromDoubleCreator;
    protected AnnotatedWithParams _fromIntCreator;
    protected AnnotatedWithParams _fromLongCreator;
    protected AnnotatedWithParams _fromStringCreator;
    protected AnnotatedParameter _incompleteParameter;
    protected final String _valueTypeDesc;
    protected AnnotatedWithParams _withArgsCreator;

    public StdValueInstantiator(DeserializationConfig deserializationconfig, JavaType javatype)
    {
        boolean flag;
        String s;
        if (deserializationconfig == null)
        {
            flag = false;
        } else
        {
            flag = deserializationconfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
        }
        _cfgEmptyStringsAsObjects = flag;
        if (javatype == null)
        {
            s = "UNKNOWN TYPE";
        } else
        {
            s = javatype.toString();
        }
        _valueTypeDesc = s;
    }

    public StdValueInstantiator(DeserializationConfig deserializationconfig, Class class1)
    {
        boolean flag;
        String s;
        if (deserializationconfig == null)
        {
            flag = false;
        } else
        {
            flag = deserializationconfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
        }
        _cfgEmptyStringsAsObjects = flag;
        if (class1 == null)
        {
            s = "UNKNOWN TYPE";
        } else
        {
            s = class1.getName();
        }
        _valueTypeDesc = s;
    }

    protected StdValueInstantiator(StdValueInstantiator stdvalueinstantiator)
    {
        _cfgEmptyStringsAsObjects = stdvalueinstantiator._cfgEmptyStringsAsObjects;
        _valueTypeDesc = stdvalueinstantiator._valueTypeDesc;
        _defaultCreator = stdvalueinstantiator._defaultCreator;
        _constructorArguments = stdvalueinstantiator._constructorArguments;
        _withArgsCreator = stdvalueinstantiator._withArgsCreator;
        _delegateType = stdvalueinstantiator._delegateType;
        _delegateCreator = stdvalueinstantiator._delegateCreator;
        _delegateArguments = stdvalueinstantiator._delegateArguments;
        _fromStringCreator = stdvalueinstantiator._fromStringCreator;
        _fromIntCreator = stdvalueinstantiator._fromIntCreator;
        _fromLongCreator = stdvalueinstantiator._fromLongCreator;
        _fromDoubleCreator = stdvalueinstantiator._fromDoubleCreator;
        _fromBooleanCreator = stdvalueinstantiator._fromBooleanCreator;
    }

    protected Object _createFromStringFallbacks(DeserializationContext deserializationcontext, String s)
    {
        if (_fromBooleanCreator != null)
        {
            String s1 = s.trim();
            if ("true".equals(s1))
            {
                return createFromBoolean(deserializationcontext, true);
            }
            if ("false".equals(s1))
            {
                return createFromBoolean(deserializationcontext, false);
            }
        }
        if (_cfgEmptyStringsAsObjects && s.length() == 0)
        {
            return null;
        } else
        {
            throw new JsonMappingException((new StringBuilder("Can not instantiate value of type ")).append(getValueTypeDesc()).append(" from String value; no single-String constructor/factory method").toString());
        }
    }

    public boolean canCreateFromBoolean()
    {
        return _fromBooleanCreator != null;
    }

    public boolean canCreateFromDouble()
    {
        return _fromDoubleCreator != null;
    }

    public boolean canCreateFromInt()
    {
        return _fromIntCreator != null;
    }

    public boolean canCreateFromLong()
    {
        return _fromLongCreator != null;
    }

    public boolean canCreateFromObjectWith()
    {
        return _withArgsCreator != null;
    }

    public boolean canCreateFromString()
    {
        return _fromStringCreator != null;
    }

    public boolean canCreateUsingDefault()
    {
        return _defaultCreator != null;
    }

    public boolean canCreateUsingDelegate()
    {
        return _delegateType != null;
    }

    public void configureFromBooleanCreator(AnnotatedWithParams annotatedwithparams)
    {
        _fromBooleanCreator = annotatedwithparams;
    }

    public void configureFromDoubleCreator(AnnotatedWithParams annotatedwithparams)
    {
        _fromDoubleCreator = annotatedwithparams;
    }

    public void configureFromIntCreator(AnnotatedWithParams annotatedwithparams)
    {
        _fromIntCreator = annotatedwithparams;
    }

    public void configureFromLongCreator(AnnotatedWithParams annotatedwithparams)
    {
        _fromLongCreator = annotatedwithparams;
    }

    public void configureFromObjectSettings(AnnotatedWithParams annotatedwithparams, AnnotatedWithParams annotatedwithparams1, JavaType javatype, CreatorProperty acreatorproperty[], AnnotatedWithParams annotatedwithparams2, CreatorProperty acreatorproperty1[])
    {
        _defaultCreator = annotatedwithparams;
        _delegateCreator = annotatedwithparams1;
        _delegateType = javatype;
        _delegateArguments = acreatorproperty;
        _withArgsCreator = annotatedwithparams2;
        _constructorArguments = acreatorproperty1;
    }

    public void configureFromStringCreator(AnnotatedWithParams annotatedwithparams)
    {
        _fromStringCreator = annotatedwithparams;
    }

    public void configureIncompleteParameter(AnnotatedParameter annotatedparameter)
    {
        _incompleteParameter = annotatedparameter;
    }

    public Object createFromBoolean(DeserializationContext deserializationcontext, boolean flag)
    {
label0:
        {
            Object obj;
            try
            {
                if (_fromBooleanCreator == null)
                {
                    break label0;
                }
                obj = _fromBooleanCreator.call1(Boolean.valueOf(flag));
            }
            catch (Exception exception)
            {
                throw wrapException(exception);
            }
            catch (ExceptionInInitializerError exceptionininitializererror)
            {
                throw wrapException(exceptionininitializererror);
            }
            return obj;
        }
        throw new JsonMappingException((new StringBuilder("Can not instantiate value of type ")).append(getValueTypeDesc()).append(" from Boolean value; no single-boolean/Boolean-arg constructor/factory method").toString());
    }

    public Object createFromDouble(DeserializationContext deserializationcontext, double d)
    {
label0:
        {
            Object obj;
            try
            {
                if (_fromDoubleCreator == null)
                {
                    break label0;
                }
                obj = _fromDoubleCreator.call1(Double.valueOf(d));
            }
            catch (Exception exception)
            {
                throw wrapException(exception);
            }
            catch (ExceptionInInitializerError exceptionininitializererror)
            {
                throw wrapException(exceptionininitializererror);
            }
            return obj;
        }
        throw new JsonMappingException((new StringBuilder("Can not instantiate value of type ")).append(getValueTypeDesc()).append(" from Floating-point number; no one-double/Double-arg constructor/factory method").toString());
    }

    public Object createFromInt(DeserializationContext deserializationcontext, int i)
    {
label0:
        {
            Object obj;
            try
            {
                if (_fromIntCreator != null)
                {
                    return _fromIntCreator.call1(Integer.valueOf(i));
                }
                if (_fromLongCreator == null)
                {
                    break label0;
                }
                obj = _fromLongCreator.call1(Long.valueOf(i));
            }
            catch (Exception exception)
            {
                throw wrapException(exception);
            }
            catch (ExceptionInInitializerError exceptionininitializererror)
            {
                throw wrapException(exceptionininitializererror);
            }
            return obj;
        }
        throw new JsonMappingException((new StringBuilder("Can not instantiate value of type ")).append(getValueTypeDesc()).append(" from Integral number; no single-int-arg constructor/factory method").toString());
    }

    public Object createFromLong(DeserializationContext deserializationcontext, long l)
    {
label0:
        {
            Object obj;
            try
            {
                if (_fromLongCreator == null)
                {
                    break label0;
                }
                obj = _fromLongCreator.call1(Long.valueOf(l));
            }
            catch (Exception exception)
            {
                throw wrapException(exception);
            }
            catch (ExceptionInInitializerError exceptionininitializererror)
            {
                throw wrapException(exceptionininitializererror);
            }
            return obj;
        }
        throw new JsonMappingException((new StringBuilder("Can not instantiate value of type ")).append(getValueTypeDesc()).append(" from Long integral number; no single-long-arg constructor/factory method").toString());
    }

    public Object createFromObjectWith(DeserializationContext deserializationcontext, Object aobj[])
    {
        if (_withArgsCreator == null)
        {
            throw new IllegalStateException((new StringBuilder("No with-args constructor for ")).append(getValueTypeDesc()).toString());
        }
        Object obj;
        try
        {
            obj = _withArgsCreator.call(aobj);
        }
        catch (ExceptionInInitializerError exceptionininitializererror)
        {
            throw wrapException(exceptionininitializererror);
        }
        catch (Exception exception)
        {
            throw wrapException(exception);
        }
        return obj;
    }

    public Object createFromString(DeserializationContext deserializationcontext, String s)
    {
        if (_fromStringCreator != null)
        {
            Object obj;
            try
            {
                obj = _fromStringCreator.call1(s);
            }
            catch (Exception exception)
            {
                throw wrapException(exception);
            }
            catch (ExceptionInInitializerError exceptionininitializererror)
            {
                throw wrapException(exceptionininitializererror);
            }
            return obj;
        } else
        {
            return _createFromStringFallbacks(deserializationcontext, s);
        }
    }

    public Object createUsingDefault(DeserializationContext deserializationcontext)
    {
        if (_defaultCreator == null)
        {
            throw new IllegalStateException((new StringBuilder("No default constructor for ")).append(getValueTypeDesc()).toString());
        }
        Object obj;
        try
        {
            obj = _defaultCreator.call();
        }
        catch (ExceptionInInitializerError exceptionininitializererror)
        {
            throw wrapException(exceptionininitializererror);
        }
        catch (Exception exception)
        {
            throw wrapException(exception);
        }
        return obj;
    }

    public Object createUsingDelegate(DeserializationContext deserializationcontext, Object obj)
    {
        int j;
        if (_delegateCreator == null)
        {
            throw new IllegalStateException((new StringBuilder("No delegate constructor for ")).append(getValueTypeDesc()).toString());
        }
        int i;
        Object aobj[];
        CreatorProperty creatorproperty;
        Object obj1;
        try
        {
            if (_delegateArguments == null)
            {
                return _delegateCreator.call1(obj);
            }
            i = _delegateArguments.length;
            aobj = new Object[i];
        }
        catch (ExceptionInInitializerError exceptionininitializererror)
        {
            throw wrapException(exceptionininitializererror);
        }
        catch (Exception exception)
        {
            throw wrapException(exception);
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        creatorproperty = _delegateArguments[j];
        if (creatorproperty != null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        aobj[j] = obj;
        break MISSING_BLOCK_LABEL_147;
        aobj[j] = deserializationcontext.findInjectableValue(creatorproperty.getInjectableValueId(), creatorproperty, null);
        break MISSING_BLOCK_LABEL_147;
        obj1 = _delegateCreator.call(aobj);
        return obj1;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public AnnotatedWithParams getDefaultCreator()
    {
        return _defaultCreator;
    }

    public AnnotatedWithParams getDelegateCreator()
    {
        return _delegateCreator;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationconfig)
    {
        return _delegateType;
    }

    public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationconfig)
    {
        return _constructorArguments;
    }

    public AnnotatedParameter getIncompleteParameter()
    {
        return _incompleteParameter;
    }

    public String getValueTypeDesc()
    {
        return _valueTypeDesc;
    }

    public AnnotatedWithParams getWithArgsCreator()
    {
        return _withArgsCreator;
    }

    protected JsonMappingException wrapException(Throwable throwable)
    {
        for (; throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof JsonMappingException)
        {
            return (JsonMappingException)throwable;
        } else
        {
            return new JsonMappingException((new StringBuilder("Instantiation of ")).append(getValueTypeDesc()).append(" value failed: ").append(throwable.getMessage()).toString(), throwable);
        }
    }
}
