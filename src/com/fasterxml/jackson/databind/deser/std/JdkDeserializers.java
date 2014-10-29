// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.io.File;
import java.net.InetAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer, ClassDeserializer

public class JdkDeserializers
{

    private static final HashSet _classNames;

    public JdkDeserializers()
    {
    }

    public static StdDeserializer[] all()
    {
        StdDeserializer astddeserializer[] = new StdDeserializer[12];
        astddeserializer[0] = UUIDDeserializer.instance;
        astddeserializer[1] = URLDeserializer.instance;
        astddeserializer[2] = URIDeserializer.instance;
        astddeserializer[3] = FileDeserializer.instance;
        astddeserializer[4] = CurrencyDeserializer.instance;
        astddeserializer[5] = PatternDeserializer.instance;
        astddeserializer[6] = LocaleDeserializer.instance;
        astddeserializer[7] = InetAddressDeserializer.instance;
        astddeserializer[8] = CharsetDeserializer.instance;
        astddeserializer[9] = AtomicBooleanDeserializer.instance;
        astddeserializer[10] = ClassDeserializer.instance;
        astddeserializer[11] = StackTraceElementDeserializer.instance;
        return astddeserializer;
    }

    public static JsonDeserializer find(Class class1, String s)
    {
        if (!_classNames.contains(s))
        {
            return null;
        }
        if (class1 == java/net/URI)
        {
            return URIDeserializer.instance;
        }
        if (class1 == java/net/URL)
        {
            return URLDeserializer.instance;
        }
        if (class1 == java/io/File)
        {
            return FileDeserializer.instance;
        }
        if (class1 == java/util/UUID)
        {
            return UUIDDeserializer.instance;
        }
        if (class1 == java/util/Currency)
        {
            return CurrencyDeserializer.instance;
        }
        if (class1 == java/util/regex/Pattern)
        {
            return PatternDeserializer.instance;
        }
        if (class1 == java/util/Locale)
        {
            return LocaleDeserializer.instance;
        }
        if (class1 == java/net/InetAddress)
        {
            return InetAddressDeserializer.instance;
        }
        if (class1 == java/nio/charset/Charset)
        {
            return CharsetDeserializer.instance;
        }
        if (class1 == java/lang/Class)
        {
            return ClassDeserializer.instance;
        }
        if (class1 == java/lang/StackTraceElement)
        {
            return StackTraceElementDeserializer.instance;
        }
        if (class1 == java/util/concurrent/atomic/AtomicBoolean)
        {
            return AtomicBooleanDeserializer.instance;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Internal error: can't find deserializer for ")).append(s).toString());
        }
    }

    static 
    {
        int i = 0;
        _classNames = new HashSet();
        Class aclass[] = {
            java/util/UUID, java/net/URL, java/net/URI, java/io/File, java/util/Currency, java/util/regex/Pattern, java/util/Locale, java/net/InetAddress, java/nio/charset/Charset, java/util/concurrent/atomic/AtomicBoolean, 
            java/lang/Class, java/lang/StackTraceElement
        };
        for (; i < 12; i++)
        {
            Class class1 = aclass[i];
            _classNames.add(class1.getName());
        }

    }

    private class UUIDDeserializer extends FromStringDeserializer
    {

        public static final UUIDDeserializer instance = new UUIDDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected UUID _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return UUID.fromString(s);
        }

        protected volatile Object _deserializeEmbedded(Object obj, DeserializationContext deserializationcontext)
        {
            return _deserializeEmbedded(obj, deserializationcontext);
        }

        protected UUID _deserializeEmbedded(Object obj, DeserializationContext deserializationcontext)
        {
            if (obj instanceof byte[])
            {
                byte abyte0[] = (byte[])(byte[])obj;
                if (abyte0.length != 16)
                {
                    deserializationcontext.mappingException((new StringBuilder("Can only construct UUIDs from 16 byte arrays; got ")).append(abyte0.length).append(" bytes").toString());
                }
                DataInputStream datainputstream = new DataInputStream(new ByteArrayInputStream(abyte0));
                return new UUID(datainputstream.readLong(), datainputstream.readLong());
            } else
            {
                super._deserializeEmbedded(obj, deserializationcontext);
                return null;
            }
        }


        public UUIDDeserializer()
        {
            super(java/util/UUID);
        }
    }


    private class URLDeserializer extends FromStringDeserializer
    {

        public static final URLDeserializer instance = new URLDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected URL _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return new URL(s);
        }


        public URLDeserializer()
        {
            super(java/net/URL);
        }
    }


    private class URIDeserializer extends FromStringDeserializer
    {

        public static final URIDeserializer instance = new URIDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected URI _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return URI.create(s);
        }


        public URIDeserializer()
        {
            super(java/net/URI);
        }
    }


    private class FileDeserializer extends FromStringDeserializer
    {

        public static final FileDeserializer instance = new FileDeserializer();

        protected File _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return new File(s);
        }

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }


        public FileDeserializer()
        {
            super(java/io/File);
        }
    }


    private class CurrencyDeserializer extends FromStringDeserializer
    {

        public static final CurrencyDeserializer instance = new CurrencyDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected Currency _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return Currency.getInstance(s);
        }


        public CurrencyDeserializer()
        {
            super(java/util/Currency);
        }
    }


    private class PatternDeserializer extends FromStringDeserializer
    {

        public static final PatternDeserializer instance = new PatternDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected Pattern _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return Pattern.compile(s);
        }


        public PatternDeserializer()
        {
            super(java/util/regex/Pattern);
        }
    }


    private class LocaleDeserializer extends FromStringDeserializer
    {

        public static final LocaleDeserializer instance = new LocaleDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected Locale _deserialize(String s, DeserializationContext deserializationcontext)
        {
            int i = s.indexOf('_');
            if (i < 0)
            {
                return new Locale(s);
            }
            String s1 = s.substring(0, i);
            String s2 = s.substring(i + 1);
            int j = s2.indexOf('_');
            if (j < 0)
            {
                return new Locale(s1, s2);
            } else
            {
                return new Locale(s1, s2.substring(0, j), s2.substring(j + 1));
            }
        }


        public LocaleDeserializer()
        {
            super(java/util/Locale);
        }
    }


    private class InetAddressDeserializer extends FromStringDeserializer
    {

        public static final InetAddressDeserializer instance = new InetAddressDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected InetAddress _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return InetAddress.getByName(s);
        }


        public InetAddressDeserializer()
        {
            super(java/net/InetAddress);
        }
    }


    private class CharsetDeserializer extends FromStringDeserializer
    {

        public static final CharsetDeserializer instance = new CharsetDeserializer();

        protected volatile Object _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return _deserialize(s, deserializationcontext);
        }

        protected Charset _deserialize(String s, DeserializationContext deserializationcontext)
        {
            return Charset.forName(s);
        }


        public CharsetDeserializer()
        {
            super(java/nio/charset/Charset);
        }
    }


    private class AtomicBooleanDeserializer extends StdScalarDeserializer
    {

        public static final AtomicBooleanDeserializer instance = new AtomicBooleanDeserializer();

        public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public AtomicBoolean deserialize(l l, DeserializationContext deserializationcontext)
        {
            return new AtomicBoolean(_parseBooleanPrimitive(l, deserializationcontext));
        }


        public AtomicBooleanDeserializer()
        {
            super(java/util/concurrent/atomic/AtomicBoolean);
        }
    }


    private class StackTraceElementDeserializer extends StdScalarDeserializer
    {

        public static final StackTraceElementDeserializer instance = new StackTraceElementDeserializer();

        public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public StackTraceElement deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.b)
            {
                String s = "";
                String s1 = "";
                String s2 = "";
                int i = -1;
                do
                {
                    r r2 = l1.nextValue();
                    if (r2 == r.c)
                    {
                        break;
                    }
                    String s3 = l1.getCurrentName();
                    if ("className".equals(s3))
                    {
                        s = l1.getText();
                    } else
                    if ("fileName".equals(s3))
                    {
                        s2 = l1.getText();
                    } else
                    if ("lineNumber".equals(s3))
                    {
                        if (r2.c())
                        {
                            i = l1.getIntValue();
                        } else
                        {
                            throw JsonMappingException.from(l1, (new StringBuilder("Non-numeric token (")).append(r2).append(") for property 'lineNumber'").toString());
                        }
                    } else
                    if ("methodName".equals(s3))
                    {
                        s1 = l1.getText();
                    } else
                    if (!"nativeMethod".equals(s3))
                    {
                        handleUnknownProperty(l1, deserializationcontext, _valueClass, s3);
                    }
                } while (true);
                return new StackTraceElement(s, s1, s2, i);
            } else
            {
                throw deserializationcontext.mappingException(_valueClass, r1);
            }
        }


        public StackTraceElementDeserializer()
        {
            super(java/lang/StackTraceElement);
        }
    }

}
