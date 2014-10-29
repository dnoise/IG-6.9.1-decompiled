// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;


public abstract class NameTransformer
{

    public static final NameTransformer NOP = new _cls1();

    protected NameTransformer()
    {
    }

    public static NameTransformer chainedTransformer(NameTransformer nametransformer, NameTransformer nametransformer1)
    {
        return nametransformer. new Chained(nametransformer1);
    }

    public static NameTransformer simpleTransformer(final String prefix, final String suffix)
    {
        boolean flag = true;
        boolean flag1;
        if (prefix != null && prefix.length() > 0)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (suffix == null || suffix.length() <= 0)
        {
            flag = false;
        }
        if (flag1)
        {
            if (flag)
            {
                return new _cls2();
            } else
            {
                return new _cls3();
            }
        }
        if (flag)
        {
            return new _cls4();
        } else
        {
            return NOP;
        }
    }

    public abstract String reverse(String s);

    public abstract String transform(String s);


    private class Chained extends NameTransformer
    {

        protected final NameTransformer _t1;
        protected final NameTransformer _t2;

        public String reverse(String s)
        {
            String s1 = _t1.reverse(s);
            if (s1 != null)
            {
                s1 = _t2.reverse(s1);
            }
            return s1;
        }

        public String toString()
        {
            return (new StringBuilder("[ChainedTransformer(")).append(_t1).append(", ").append(_t2).append(")]").toString();
        }

        public String transform(String s)
        {
            return _t1.transform(_t2.transform(s));
        }

        public Chained(NameTransformer nametransformer1)
        {
            _t1 = NameTransformer.this;
            _t2 = nametransformer1;
        }
    }


    private class _cls2 extends NameTransformer
    {

        final String val$prefix;
        final String val$suffix;

        public final String reverse(String s)
        {
            if (s.startsWith(prefix))
            {
                String s1 = s.substring(prefix.length());
                if (s1.endsWith(suffix))
                {
                    return s1.substring(0, s1.length() - suffix.length());
                }
            }
            return null;
        }

        public final String toString()
        {
            return (new StringBuilder("[PreAndSuffixTransformer('")).append(prefix).append("','").append(suffix).append("')]").toString();
        }

        public final String transform(String s)
        {
            return (new StringBuilder()).append(prefix).append(s).append(suffix).toString();
        }

        _cls2()
        {
            prefix = s;
            suffix = s1;
            super();
        }
    }


    private class _cls3 extends NameTransformer
    {

        final String val$prefix;

        public final String reverse(String s)
        {
            if (s.startsWith(prefix))
            {
                return s.substring(prefix.length());
            } else
            {
                return null;
            }
        }

        public final String toString()
        {
            return (new StringBuilder("[PrefixTransformer('")).append(prefix).append("')]").toString();
        }

        public final String transform(String s)
        {
            return (new StringBuilder()).append(prefix).append(s).toString();
        }

        _cls3()
        {
            prefix = s;
            super();
        }
    }


    private class _cls4 extends NameTransformer
    {

        final String val$suffix;

        public final String reverse(String s)
        {
            if (s.endsWith(suffix))
            {
                return s.substring(0, s.length() - suffix.length());
            } else
            {
                return null;
            }
        }

        public final String toString()
        {
            return (new StringBuilder("[SuffixTransformer('")).append(suffix).append("')]").toString();
        }

        public final String transform(String s)
        {
            return (new StringBuilder()).append(s).append(suffix).toString();
        }

        _cls4()
        {
            suffix = s;
            super();
        }
    }


    private class _cls1 extends NameTransformer
    {

        public final String reverse(String s)
        {
            return s;
        }

        public final String transform(String s)
        {
            return s;
        }

        _cls1()
        {
        }
    }

}
