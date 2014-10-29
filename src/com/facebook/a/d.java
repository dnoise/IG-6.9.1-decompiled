// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.EnumMap;

// Referenced classes of package com.facebook.a:
//            r

public final class d extends EnumMap
{

    private static String b = "\n";
    protected d a;

    public d()
    {
        super(com/facebook/a/r);
    }

    public static Writer a(OutputStream outputstream)
    {
        OutputStreamWriter outputstreamwriter;
        try
        {
            outputstreamwriter = new OutputStreamWriter(outputstream, "ISO8859_1");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return null;
        }
        return outputstreamwriter;
    }

    private void a(Reader reader)
    {
        this;
        JVM INSTR monitorenter ;
        char ac[] = new char[40];
        int i = 0;
        BufferedReader bufferedreader = new BufferedReader(reader);
        boolean flag;
        int j;
        int k;
        int l;
        int i1;
        char ac1[];
        flag = true;
        j = -1;
        k = 0;
        l = 0;
        i1 = 0;
        ac1 = ac;
_L11:
        int j1 = bufferedreader.read();
        if (j1 == -1 || j1 == 0) goto _L2; else goto _L1
_L1:
        char c = (char)j1;
        if (i != ac1.length) goto _L4; else goto _L3
_L3:
        char ac2[];
        ac2 = new char[2 * ac1.length];
        System.arraycopy(ac1, 0, ac2, 0, i);
_L28:
        if (i1 != 2) goto _L6; else goto _L5
_L5:
        int l1 = Character.digit(c, 16);
        if (l1 < 0) goto _L8; else goto _L7
_L7:
        int j2;
        int k5;
        k5 = l1 + (l << 4);
        j2 = k + 1;
        if (j2 >= 4) goto _L10; else goto _L9
_L9:
        k = j2;
        l = k5;
        ac1 = ac2;
          goto _L11
_L8:
        if (k > 4)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        throw new IllegalArgumentException("luni.09");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i2;
        i2 = l;
        j2 = k;
_L26:
        int k2;
        char c1;
        k2 = i + 1;
        c1 = (char)i2;
        ac2[i] = c1;
        if (c != '\n' && c != '\205') goto _L13; else goto _L12
_L30:
        int k1;
        int l2;
        if (l2 == 4)
        {
            j = k2;
            l2 = 0;
        }
        i3 = k2 + 1;
        ac2[k2] = c;
        k = j2;
        l = i2;
        i1 = l2;
        i = i3;
        ac1 = ac2;
        flag = false;
          goto _L11
_L32:
        if (!Character.isWhitespace(c)) goto _L15; else goto _L14
_L14:
        if (l2 == 3)
        {
            l2 = 5;
        }
          goto _L16
_L21:
        i5 = bufferedreader.read();
        if (i5 == -1) goto _L18; else goto _L17
_L17:
        c2 = (char)i5;
        if (c2 == '\r' || c2 == '\n') goto _L18; else goto _L19
_L19:
        if (c2 != '\205') goto _L21; else goto _L20
_L20:
        ac1 = ac2;
        j5 = k2;
        k = j2;
        l = i2;
        i1 = l2;
        i = j5;
          goto _L11
_L42:
        s2 = new String(ac2, 0, k2);
        put(Enum.valueOf(com/facebook/a/r, s2.substring(0, j)), s2.substring(j));
          goto _L22
_L2:
        if (i1 != 2 || k > 4) goto _L24; else goto _L23
_L23:
        throw new IllegalArgumentException("luni.08");
_L25:
        if (k1 < 0)
        {
            break MISSING_BLOCK_LABEL_483;
        }
        s = new String(ac1, 0, i);
        r1 = (r)Enum.valueOf(com/facebook/a/r, s.substring(0, k1));
        s1 = s.substring(k1);
        if (i1 != 1)
        {
            break MISSING_BLOCK_LABEL_474;
        }
        s1 = (new StringBuilder()).append(s1).append("\0").toString();
        put(r1, s1);
        this;
        JVM INSTR monitorexit ;
        return;
_L45:
        k1 = j;
          goto _L25
_L18:
        ac1 = ac2;
        i4 = k2;
        k = j2;
        l = i2;
        i1 = l2;
        i = i4;
          goto _L11
_L13:
        i = k2;
        k = j2;
        l = i2;
        ac1 = ac2;
        i1 = 0;
          goto _L11
_L10:
        i2 = k5;
          goto _L26
_L6:
        l5 = i;
        l2 = i1;
        i2 = l;
        j2 = k;
        k2 = l5;
          goto _L27
_L4:
        ac2 = ac1;
          goto _L28
_L12:
        l2 = 0;
_L27:
label0:
        {
            if (l2 != 1)
            {
                break MISSING_BLOCK_LABEL_814;
            }
            l2 = 0;
            switch (c)
            {
            case 10: // '\n'
            case 133: 
                break MISSING_BLOCK_LABEL_718;

            case 13: // '\r'
                break label0;

            case 98: // 'b'
                break MISSING_BLOCK_LABEL_744;

            case 102: // 'f'
                break MISSING_BLOCK_LABEL_754;

            case 110: // 'n'
                break MISSING_BLOCK_LABEL_764;

            case 114: // 'r'
                break MISSING_BLOCK_LABEL_774;

            case 116: // 't'
                break MISSING_BLOCK_LABEL_784;

            case 117: // 'u'
                break MISSING_BLOCK_LABEL_794;
            }
        }
        if (true) goto _L30; else goto _L29
_L29:
        if (true) goto _L11; else goto _L31
_L31:
          goto _L11
        ac1 = ac2;
        int j3 = k2;
        k = j2;
        l = i2;
        i1 = 5;
        i = j3;
          goto _L11
        c = '\b';
        l2 = 0;
          goto _L30
        c = '\f';
        l2 = 0;
          goto _L30
        c = '\n';
        l2 = 0;
          goto _L30
        c = '\r';
        l2 = 0;
          goto _L30
        c = '\t';
        l2 = 0;
          goto _L30
        ac1 = ac2;
        i1 = 2;
        i = k2;
        k = 0;
        l = 0;
          goto _L11
        c;
        JVM INSTR lookupswitch 8: default 249
    //                   10: 950
    //                   13: 982
    //                   33: 942
    //                   35: 942
    //                   58: 1073
    //                   61: 1073
    //                   92: 1037
    //                   133: 982;
           goto _L32 _L33 _L34 _L35 _L35 _L36 _L36 _L37 _L34
_L36:
        continue; /* Loop/switch isn't completed */
_L16:
        if (k2 == 0 || k2 == j || l2 == 5) goto _L18; else goto _L38
_L38:
        if (j != -1) goto _L15; else goto _L39
_L39:
        ac1 = ac2;
        int j4 = k2;
        k = j2;
        l = i2;
        i1 = 4;
        i = j4;
          goto _L11
_L35:
        if (!flag) goto _L32; else goto _L21
_L33:
        if (l2 != 3) goto _L34; else goto _L40
_L40:
        ac1 = ac2;
        int l4 = k2;
        k = j2;
        l = i2;
        i1 = 5;
        i = l4;
          goto _L11
_L34:
        if (k2 <= 0 && (k2 != 0 || j != 0)) goto _L22; else goto _L41
_L41:
        if (j == -1)
        {
            j = k2;
        }
          goto _L42
_L22:
        j = -1;
        flag = true;
        k = j2;
        l = i2;
        ac1 = ac2;
        i = 0;
        i1 = 0;
          goto _L11
_L37:
        if (l2 == 4)
        {
            j = k2;
        }
        ac1 = ac2;
        int k4 = k2;
        k = j2;
        l = i2;
        i1 = 1;
        i = k4;
          goto _L11
        if (j != -1) goto _L32; else goto _L43
_L43:
        j = k2;
        ac1 = ac2;
        int l3 = k2;
        k = j2;
        l = i2;
        i = l3;
        i1 = 0;
          goto _L11
_L15:
        if (l2 == 5 || l2 == 3)
        {
            l2 = 0;
        }
          goto _L30
_L24:
        if (j != -1 || i <= 0) goto _L45; else goto _L44
_L44:
        k1 = i;
          goto _L25
    }

    private void a(Writer writer, r r1, String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1 = r1.toString();
        if (s == null)
        {
            s = "";
        }
        int i = 1 + (s1.length() + s.length());
        StringBuilder stringbuilder = new StringBuilder(i + i / 5);
        a(((Appendable) (stringbuilder)), s1, true);
        stringbuilder.append('=');
        a(((Appendable) (stringbuilder)), s, false);
        stringbuilder.append(b);
        writer.write(stringbuilder.toString());
        writer.flush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(Appendable appendable, String s, boolean flag)
    {
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
                        int i = s.length();
                        int j;
                        if (!flag && i > 0 && s.charAt(0) == ' ')
                        {
                            appendable.append("\\ ");
                            j = 1;
                        } else
                        {
                            j = 0;
                        }
label4:
                        do
                        {
                            {
                                if (j >= i)
                                {
                                    break label0;
                                }
                                char c = s.charAt(j);
                                switch (c)
                                {
                                case 11: // '\013'
                                default:
                                    if (flag && c == ' ' || c == '\\' || c == '#' || c == '!' || c == ':')
                                    {
                                        appendable.append('\\');
                                    }
                                    if (c >= ' ' && c <= '~')
                                    {
                                        appendable.append(c);
                                    } else
                                    {
                                        String s1 = Integer.toHexString(c);
                                        appendable.append("\\u");
                                        for (int k = 0; k < 4 - s1.length(); k++)
                                        {
                                            appendable.append('0');
                                        }

                                        appendable.append(s1);
                                    }
                                    break;

                                case 9: // '\t'
                                    break label4;

                                case 10: // '\n'
                                    break label3;

                                case 12: // '\f'
                                    break label2;

                                case 13: // '\r'
                                    break label1;
                                }
                            }
                            j++;
                        } while (true);
                        appendable.append("\\t");
                        break MISSING_BLOCK_LABEL_155;
                    }
                    appendable.append("\\n");
                    break MISSING_BLOCK_LABEL_155;
                }
                appendable.append("\\f");
                break MISSING_BLOCK_LABEL_155;
            }
            appendable.append("\\r");
            break MISSING_BLOCK_LABEL_155;
        }
    }

    private static boolean a(BufferedInputStream bufferedinputstream)
    {
        byte byte0;
        do
        {
            byte0 = (byte)bufferedinputstream.read();
            if (byte0 == -1 || byte0 == 35 || byte0 == 10 || byte0 == 61)
            {
                return false;
            }
        } while (byte0 != 21);
        return true;
    }

    public final String a(r r1)
    {
        String s = (String)super.get(r1);
        if (s == null && a != null)
        {
            s = a.a(r1);
        }
        return s;
    }

    public final String a(r r1, String s, Writer writer)
    {
        String s1 = (String)put(r1, s);
        if (writer != null)
        {
            a(writer, r1, s);
        }
        return s1;
    }

    public final void a(InputStream inputstream)
    {
        this;
        JVM INSTR monitorenter ;
        BufferedInputStream bufferedinputstream;
        boolean flag;
        bufferedinputstream = new BufferedInputStream(inputstream);
        bufferedinputstream.mark(0x7fffffff);
        flag = a(bufferedinputstream);
        bufferedinputstream.reset();
        if (flag) goto _L2; else goto _L1
_L1:
        a(((Reader) (new InputStreamReader(bufferedinputstream, "ISO8859-1"))));
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a(((Reader) (new InputStreamReader(bufferedinputstream))));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

}
