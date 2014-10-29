// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import java.io.Serializable;

public class OptionalHandlerFactory
    implements Serializable
{

    private static final String CLASS_NAME_DOM_DOCUMENT = "org.w3c.dom.Node";
    private static final String CLASS_NAME_DOM_NODE = "org.w3c.dom.Node";
    private static final String DESERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLDeserializers";
    private static final String DESERIALIZER_FOR_DOM_DOCUMENT = "com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer";
    private static final String DESERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer";
    private static final String PACKAGE_PREFIX_JAVAX_XML = "javax.xml.";
    private static final String SERIALIZERS_FOR_JAVAX_XML = "com.fasterxml.jackson.databind.ext.CoreXMLSerializers";
    private static final String SERIALIZER_FOR_DOM_NODE = "com.fasterxml.jackson.databind.ext.DOMSerializer";
    public static final OptionalHandlerFactory instance = new OptionalHandlerFactory();
    private static final long serialVersionUID = 1L;

    protected OptionalHandlerFactory()
    {
    }

    private boolean doesImplement(Class class1, String s)
    {
        for (; class1 != null; class1 = class1.getSuperclass())
        {
            while (class1.getName().equals(s) || hasInterface(class1, s)) 
            {
                return true;
            }
        }

        return false;
    }

    private boolean hasInterface(Class class1, String s)
    {
        Class aclass[];
        int i;
        int j;
        aclass = class1.getInterfaces();
        i = aclass.length;
        j = 0;
_L7:
        if (j >= i) goto _L2; else goto _L1
_L1:
        if (!aclass[j].getName().equals(s)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        j++;
        continue; /* Loop/switch isn't completed */
_L2:
        int k = aclass.length;
        int l = 0;
label0:
        do
        {
label1:
            {
                if (l >= k)
                {
                    break label1;
                }
                if (hasInterface(aclass[l], s))
                {
                    break label0;
                }
                l++;
            }
        } while (true);
        if (true) goto _L3; else goto _L5
_L5:
        return false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean hasInterfaceStartingWith(Class class1, String s)
    {
        Class aclass[];
        int i;
        int j;
        aclass = class1.getInterfaces();
        i = aclass.length;
        j = 0;
_L7:
        if (j >= i) goto _L2; else goto _L1
_L1:
        if (!aclass[j].getName().startsWith(s)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        j++;
        continue; /* Loop/switch isn't completed */
_L2:
        int k = aclass.length;
        int l = 0;
label0:
        do
        {
label1:
            {
                if (l >= k)
                {
                    break label1;
                }
                if (hasInterfaceStartingWith(aclass[l], s))
                {
                    break label0;
                }
                l++;
            }
        } while (true);
        if (true) goto _L3; else goto _L5
_L5:
        return false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private boolean hasSupertypeStartingWith(Class class1, String s)
    {
        for (Class class2 = class1.getSuperclass(); class2 != null; class2 = class2.getSuperclass())
        {
            if (class2.getName().startsWith(s))
            {
                return true;
            }
        }

_L3:
        if (class1 != null)
        {
            if (hasInterfaceStartingWith(class1, s))
            {
                return true;
            }
        } else
        {
            return false;
        }
        if (true) goto _L2; else goto _L1
_L2:
        class1 = class1.getSuperclass();
        if (true) goto _L3; else goto _L1
_L1:
    }

    private Object instantiate(String s)
    {
        Object obj = Class.forName(s).newInstance();
        return obj;
        Exception exception;
        exception;
_L2:
        return null;
        LinkageError linkageerror;
        linkageerror;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public JsonDeserializer findDeserializer(JavaType javatype, DeserializationConfig deserializationconfig, BeanDescription beandescription)
    {
        Class class1 = javatype.getRawClass();
        if (class1.getName().startsWith("javax.xml.") || hasSupertypeStartingWith(class1, "javax.xml."))
        {
            Object obj = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLDeserializers");
            if (obj == null)
            {
                return null;
            } else
            {
                return ((Deserializers)obj).findBeanDeserializer(javatype, deserializationconfig, beandescription);
            }
        }
        if (doesImplement(class1, "org.w3c.dom.Node"))
        {
            return (JsonDeserializer)instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer");
        }
        if (doesImplement(class1, "org.w3c.dom.Node"))
        {
            return (JsonDeserializer)instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer");
        } else
        {
            return null;
        }
    }

    public JsonSerializer findSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription)
    {
        Class class1 = javatype.getRawClass();
        if (class1.getName().startsWith("javax.xml.") || hasSupertypeStartingWith(class1, "javax.xml."))
        {
            Object obj = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLSerializers");
            if (obj == null)
            {
                return null;
            } else
            {
                return ((Serializers)obj).findSerializer(serializationconfig, javatype, beandescription);
            }
        }
        if (doesImplement(class1, "org.w3c.dom.Node"))
        {
            return (JsonSerializer)instantiate("com.fasterxml.jackson.databind.ext.DOMSerializer");
        } else
        {
            return null;
        }
    }

}
