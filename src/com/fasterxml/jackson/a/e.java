// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;

import com.fasterxml.jackson.a.b.b;
import com.fasterxml.jackson.a.c.c;
import com.fasterxml.jackson.a.c.j;
import com.fasterxml.jackson.a.c.n;
import com.fasterxml.jackson.a.d.f;
import com.fasterxml.jackson.a.d.g;
import com.fasterxml.jackson.a.d.i;
import com.fasterxml.jackson.a.d.l;
import com.fasterxml.jackson.a.e.a;
import com.fasterxml.jackson.a.e.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringReader;
import java.io.Writer;
import java.lang.ref.SoftReference;
import java.net.URL;

// Referenced classes of package com.fasterxml.jackson.a:
//            x, f, n, i, 
//            d, c, u, s, 
//            h, l, w

public class e
    implements x, Serializable
{

    protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = 0;
    protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = 0;
    protected static final int DEFAULT_PARSER_FEATURE_FLAGS = 0;
    private static final u DEFAULT_ROOT_VALUE_SEPARATOR;
    public static final String FORMAT_NAME_JSON = "JSON";
    protected static final ThreadLocal _recyclerRef = new ThreadLocal();
    private static final long serialVersionUID = 0x791a681719524b4aL;
    protected c _characterEscapes;
    protected int _factoryFeatures;
    protected int _generatorFeatures;
    protected com.fasterxml.jackson.a.c.e _inputDecorator;
    protected s _objectCodec;
    protected j _outputDecorator;
    protected int _parserFeatures;
    protected final transient a _rootByteSymbols;
    protected final transient d _rootCharSymbols;
    protected u _rootValueSeparator;

    public e()
    {
        this(null);
    }

    protected e(e e1, s s)
    {
        _rootCharSymbols = d.a();
        _rootByteSymbols = a.a();
        _factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        _parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        _generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        _rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;
        _objectCodec = null;
        _factoryFeatures = e1._factoryFeatures;
        _parserFeatures = e1._parserFeatures;
        _generatorFeatures = e1._generatorFeatures;
        _characterEscapes = e1._characterEscapes;
        _inputDecorator = e1._inputDecorator;
        _outputDecorator = e1._outputDecorator;
        _rootValueSeparator = e1._rootValueSeparator;
    }

    public e(s s)
    {
        _rootCharSymbols = d.a();
        _rootByteSymbols = a.a();
        _factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        _parserFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        _generatorFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        _rootValueSeparator = DEFAULT_ROOT_VALUE_SEPARATOR;
        _objectCodec = s;
    }

    protected void _checkInvalidCopy(Class class1)
    {
        if (getClass() != class1)
        {
            throw new IllegalStateException((new StringBuilder("Failed copy(): ")).append(getClass().getName()).append(" (version: ").append(version()).append(") does not override copy(); it has to").toString());
        } else
        {
            return;
        }
    }

    protected com.fasterxml.jackson.a.c.d _createContext(Object obj, boolean flag)
    {
        return new com.fasterxml.jackson.a.c.d(_getBufferRecycler(), obj, flag);
    }

    protected h _createGenerator(Writer writer, com.fasterxml.jackson.a.c.d d1)
    {
        l l1 = new l(d1, _generatorFeatures, _objectCodec, writer);
        if (_characterEscapes != null)
        {
            l1.setCharacterEscapes(_characterEscapes);
        }
        u u1 = _rootValueSeparator;
        if (u1 != DEFAULT_ROOT_VALUE_SEPARATOR)
        {
            l1.setRootValueSeparator(u1);
        }
        return l1;
    }

    protected h _createJsonGenerator(Writer writer, com.fasterxml.jackson.a.c.d d1)
    {
        return _createGenerator(writer, d1);
    }

    protected com.fasterxml.jackson.a.l _createJsonParser(InputStream inputstream, com.fasterxml.jackson.a.c.d d1)
    {
        return _createParser(inputstream, d1);
    }

    protected com.fasterxml.jackson.a.l _createJsonParser(Reader reader, com.fasterxml.jackson.a.c.d d1)
    {
        return _createParser(reader, d1);
    }

    protected com.fasterxml.jackson.a.l _createJsonParser(byte abyte0[], int k, int i1, com.fasterxml.jackson.a.c.d d1)
    {
        return _createParser(abyte0, k, i1, d1);
    }

    protected com.fasterxml.jackson.a.l _createParser(InputStream inputstream, com.fasterxml.jackson.a.c.d d1)
    {
        return (new com.fasterxml.jackson.a.d.a(d1, inputstream)).a(_parserFeatures, _objectCodec, _rootByteSymbols, _rootCharSymbols, isEnabled(com.fasterxml.jackson.a.f.b), isEnabled(com.fasterxml.jackson.a.f.a));
    }

    protected com.fasterxml.jackson.a.l _createParser(Reader reader, com.fasterxml.jackson.a.c.d d1)
    {
        return new g(d1, _parserFeatures, reader, _objectCodec, _rootCharSymbols.a(isEnabled(com.fasterxml.jackson.a.f.b), isEnabled(com.fasterxml.jackson.a.f.a)));
    }

    protected com.fasterxml.jackson.a.l _createParser(byte abyte0[], int k, int i1, com.fasterxml.jackson.a.c.d d1)
    {
        return (new com.fasterxml.jackson.a.d.a(d1, abyte0, k, i1)).a(_parserFeatures, _objectCodec, _rootByteSymbols, _rootCharSymbols, isEnabled(com.fasterxml.jackson.a.f.b), isEnabled(com.fasterxml.jackson.a.f.a));
    }

    protected h _createUTF8Generator(OutputStream outputstream, com.fasterxml.jackson.a.c.d d1)
    {
        i k = new i(d1, _generatorFeatures, _objectCodec, outputstream);
        if (_characterEscapes != null)
        {
            k.setCharacterEscapes(_characterEscapes);
        }
        u u1 = _rootValueSeparator;
        if (u1 != DEFAULT_ROOT_VALUE_SEPARATOR)
        {
            k.setRootValueSeparator(u1);
        }
        return k;
    }

    protected h _createUTF8JsonGenerator(OutputStream outputstream, com.fasterxml.jackson.a.c.d d1)
    {
        return _createUTF8Generator(outputstream, d1);
    }

    protected Writer _createWriter(OutputStream outputstream, com.fasterxml.jackson.a.d d1, com.fasterxml.jackson.a.c.d d2)
    {
        if (d1 == com.fasterxml.jackson.a.d.a)
        {
            return new n(d2, outputstream);
        } else
        {
            return new OutputStreamWriter(outputstream, d1.a());
        }
    }

    public com.fasterxml.jackson.a.g.a _getBufferRecycler()
    {
        SoftReference softreference = (SoftReference)_recyclerRef.get();
        com.fasterxml.jackson.a.g.a a1;
        if (softreference == null)
        {
            a1 = null;
        } else
        {
            a1 = (com.fasterxml.jackson.a.g.a)softreference.get();
        }
        if (a1 == null)
        {
            a1 = new com.fasterxml.jackson.a.g.a();
            _recyclerRef.set(new SoftReference(a1));
        }
        return a1;
    }

    protected InputStream _optimizedStreamFromURL(URL url)
    {
        if ("file".equals(url.getProtocol()))
        {
            String s = url.getHost();
            if ((s == null || s.length() == 0) && url.getPath().indexOf('%') < 0)
            {
                return new FileInputStream(url.getPath());
            }
        }
        return url.openStream();
    }

    public boolean canUseSchema(com.fasterxml.jackson.a.c c1)
    {
        String s = getFormatName();
        return s != null && s.equals(c1.a());
    }

    public final e configure(com.fasterxml.jackson.a.f f1, boolean flag)
    {
        if (flag)
        {
            return enable(f1);
        } else
        {
            return disable(f1);
        }
    }

    public final e configure(com.fasterxml.jackson.a.i k, boolean flag)
    {
        if (flag)
        {
            return enable(k);
        } else
        {
            return disable(k);
        }
    }

    public final e configure(com.fasterxml.jackson.a.n n1, boolean flag)
    {
        if (flag)
        {
            return enable(n1);
        } else
        {
            return disable(n1);
        }
    }

    public e copy()
    {
        _checkInvalidCopy(com/fasterxml/jackson/a/e);
        return new e(this, null);
    }

    public h createGenerator(File file, com.fasterxml.jackson.a.d d1)
    {
        Object obj = new FileOutputStream(file);
        com.fasterxml.jackson.a.c.d d2 = _createContext(obj, true);
        d2.a(d1);
        if (d1 == com.fasterxml.jackson.a.d.a)
        {
            if (_outputDecorator != null)
            {
                obj = _outputDecorator.a();
            }
            return _createUTF8Generator(((OutputStream) (obj)), d2);
        }
        Writer writer = _createWriter(((OutputStream) (obj)), d1, d2);
        if (_outputDecorator != null)
        {
            writer = _outputDecorator.b();
        }
        return _createGenerator(writer, d2);
    }

    public h createGenerator(OutputStream outputstream)
    {
        return createGenerator(outputstream, com.fasterxml.jackson.a.d.a);
    }

    public h createGenerator(OutputStream outputstream, com.fasterxml.jackson.a.d d1)
    {
        com.fasterxml.jackson.a.c.d d2 = _createContext(outputstream, false);
        d2.a(d1);
        if (d1 == com.fasterxml.jackson.a.d.a)
        {
            if (_outputDecorator != null)
            {
                outputstream = _outputDecorator.a();
            }
            return _createUTF8Generator(outputstream, d2);
        }
        Writer writer = _createWriter(outputstream, d1, d2);
        if (_outputDecorator != null)
        {
            writer = _outputDecorator.b();
        }
        return _createGenerator(writer, d2);
    }

    public h createGenerator(Writer writer)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(writer, false);
        if (_outputDecorator != null)
        {
            writer = _outputDecorator.b();
        }
        return _createGenerator(writer, d1);
    }

    public h createJsonGenerator(File file, com.fasterxml.jackson.a.d d1)
    {
        return createGenerator(file, d1);
    }

    public h createJsonGenerator(OutputStream outputstream)
    {
        return createGenerator(outputstream, com.fasterxml.jackson.a.d.a);
    }

    public h createJsonGenerator(OutputStream outputstream, com.fasterxml.jackson.a.d d1)
    {
        return createGenerator(outputstream, d1);
    }

    public h createJsonGenerator(Writer writer)
    {
        return createGenerator(writer);
    }

    public com.fasterxml.jackson.a.l createJsonParser(File file)
    {
        return createParser(file);
    }

    public com.fasterxml.jackson.a.l createJsonParser(InputStream inputstream)
    {
        return createParser(inputstream);
    }

    public com.fasterxml.jackson.a.l createJsonParser(Reader reader)
    {
        return createParser(reader);
    }

    public com.fasterxml.jackson.a.l createJsonParser(String s)
    {
        return createParser(s);
    }

    public com.fasterxml.jackson.a.l createJsonParser(URL url)
    {
        return createParser(url);
    }

    public com.fasterxml.jackson.a.l createJsonParser(byte abyte0[])
    {
        return createParser(abyte0);
    }

    public com.fasterxml.jackson.a.l createJsonParser(byte abyte0[], int k, int i1)
    {
        return createParser(abyte0, k, i1);
    }

    public com.fasterxml.jackson.a.l createParser(File file)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(file, true);
        Object obj = new FileInputStream(file);
        if (_inputDecorator != null)
        {
            obj = _inputDecorator.a();
        }
        return _createParser(((InputStream) (obj)), d1);
    }

    public com.fasterxml.jackson.a.l createParser(InputStream inputstream)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(inputstream, false);
        if (_inputDecorator != null)
        {
            inputstream = _inputDecorator.a();
        }
        return _createParser(inputstream, d1);
    }

    public com.fasterxml.jackson.a.l createParser(Reader reader)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(reader, false);
        if (_inputDecorator != null)
        {
            reader = _inputDecorator.c();
        }
        return _createParser(reader, d1);
    }

    public com.fasterxml.jackson.a.l createParser(String s)
    {
        Object obj = new StringReader(s);
        com.fasterxml.jackson.a.c.d d1 = _createContext(obj, true);
        if (_inputDecorator != null)
        {
            obj = _inputDecorator.c();
        }
        return _createParser(((Reader) (obj)), d1);
    }

    public com.fasterxml.jackson.a.l createParser(URL url)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(url, true);
        InputStream inputstream = _optimizedStreamFromURL(url);
        if (_inputDecorator != null)
        {
            inputstream = _inputDecorator.a();
        }
        return _createParser(inputstream, d1);
    }

    public com.fasterxml.jackson.a.l createParser(byte abyte0[])
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(abyte0, true);
        if (_inputDecorator != null)
        {
            InputStream inputstream = _inputDecorator.b();
            if (inputstream != null)
            {
                return _createParser(inputstream, d1);
            }
        }
        return _createParser(abyte0, 0, abyte0.length, d1);
    }

    public com.fasterxml.jackson.a.l createParser(byte abyte0[], int k, int i1)
    {
        com.fasterxml.jackson.a.c.d d1 = _createContext(abyte0, true);
        if (_inputDecorator != null)
        {
            InputStream inputstream = _inputDecorator.b();
            if (inputstream != null)
            {
                return _createParser(inputstream, d1);
            }
        }
        return _createParser(abyte0, k, i1, d1);
    }

    public e disable(com.fasterxml.jackson.a.f f1)
    {
        _factoryFeatures = _factoryFeatures & (-1 ^ f1.b());
        return this;
    }

    public e disable(com.fasterxml.jackson.a.i k)
    {
        _generatorFeatures = _generatorFeatures & (-1 ^ k.b());
        return this;
    }

    public e disable(com.fasterxml.jackson.a.n n1)
    {
        _parserFeatures = _parserFeatures & (-1 ^ n1.b());
        return this;
    }

    public e enable(com.fasterxml.jackson.a.f f1)
    {
        _factoryFeatures = _factoryFeatures | f1.b();
        return this;
    }

    public e enable(com.fasterxml.jackson.a.i k)
    {
        _generatorFeatures = _generatorFeatures | k.b();
        return this;
    }

    public e enable(com.fasterxml.jackson.a.n n1)
    {
        _parserFeatures = _parserFeatures | n1.b();
        return this;
    }

    public c getCharacterEscapes()
    {
        return _characterEscapes;
    }

    public s getCodec()
    {
        return _objectCodec;
    }

    public String getFormatName()
    {
        if (getClass() == com/fasterxml/jackson/a/e)
        {
            return "JSON";
        } else
        {
            return null;
        }
    }

    public com.fasterxml.jackson.a.c.e getInputDecorator()
    {
        return _inputDecorator;
    }

    public j getOutputDecorator()
    {
        return _outputDecorator;
    }

    public String getRootValueSeparator()
    {
        if (_rootValueSeparator == null)
        {
            return null;
        } else
        {
            return _rootValueSeparator.a();
        }
    }

    public int hasFormat$2764b24c(b b)
    {
        if (getClass() == com/fasterxml/jackson/a/e)
        {
            return hasJSONFormat$2764b24c(b);
        } else
        {
            return 0;
        }
    }

    protected int hasJSONFormat$2764b24c(b b)
    {
        return com.fasterxml.jackson.a.d.a.a(b);
    }

    public final boolean isEnabled(com.fasterxml.jackson.a.f f1)
    {
        return (_factoryFeatures & f1.b()) != 0;
    }

    public final boolean isEnabled(com.fasterxml.jackson.a.i k)
    {
        return (_generatorFeatures & k.b()) != 0;
    }

    public final boolean isEnabled(com.fasterxml.jackson.a.n n1)
    {
        return (_parserFeatures & n1.b()) != 0;
    }

    protected Object readResolve()
    {
        return new e(this, _objectCodec);
    }

    public boolean requiresCustomCodec()
    {
        return false;
    }

    public e setCharacterEscapes(c c1)
    {
        _characterEscapes = c1;
        return this;
    }

    public e setCodec(s s)
    {
        _objectCodec = s;
        return this;
    }

    public e setInputDecorator(com.fasterxml.jackson.a.c.e e1)
    {
        _inputDecorator = e1;
        return this;
    }

    public e setOutputDecorator(j j1)
    {
        _outputDecorator = j1;
        return this;
    }

    public e setRootValueSeparator(String s)
    {
        Object obj;
        if (s == null)
        {
            obj = null;
        } else
        {
            obj = new com.fasterxml.jackson.a.c.l(s);
        }
        _rootValueSeparator = ((u) (obj));
        return this;
    }

    public w version()
    {
        return f.a;
    }

    static 
    {
        DEFAULT_FACTORY_FEATURE_FLAGS = com.fasterxml.jackson.a.f.a();
        DEFAULT_PARSER_FEATURE_FLAGS = com.fasterxml.jackson.a.n.a();
        DEFAULT_GENERATOR_FEATURE_FLAGS = com.fasterxml.jackson.a.i.a();
        DEFAULT_ROOT_VALUE_SEPARATOR = com.fasterxml.jackson.a.g.e.a;
    }
}
