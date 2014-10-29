// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.facebook.i:
//            o, i, k, e, 
//            n, b, c, m, 
//            f, a, j

public class d
{

    static final Pattern a = Pattern.compile("[+\uFF0B]+");
    static final Pattern b = Pattern.compile("[\\\\/] *x");
    static final Pattern c = Pattern.compile("[[\\P{N}&&\\P{L}]&&[^#]]+$");
    static final String d = c("x\uFF58#\uFF03~\uFF5E");
    static final Pattern e = Pattern.compile("(\\D+)");
    private static final Logger f = Logger.getLogger(com/facebook/i/d.getName());
    private static final Map g;
    private static final Map h;
    private static final Map i;
    private static final Map j;
    private static final Pattern k = Pattern.compile("[\\d]+(?:[~\u2053\u223C\uFF5E][\\d]+)?");
    private static final String l;
    private static final Pattern m = Pattern.compile("[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E]+");
    private static final Pattern n = Pattern.compile("(\\p{Nd})");
    private static final Pattern o = Pattern.compile("[+\uFF0B\\p{Nd}]");
    private static final Pattern p = Pattern.compile("(?:.*?[A-Za-z]){3}.*");
    private static final String q;
    private static final String r = c((new StringBuilder(",")).append("x\uFF58#\uFF03~\uFF5E").toString());
    private static final Pattern s = Pattern.compile((new StringBuilder("(?:")).append(r).append(")$").toString(), 66);
    private static final Pattern t;
    private static final Pattern u = Pattern.compile("(\\$\\d)");
    private static final Pattern v = Pattern.compile("\\$NP");
    private static final Pattern w = Pattern.compile("\\$FG");
    private static final Pattern x = Pattern.compile("\\$CC");
    private static final Pattern y = Pattern.compile("\\(?\\$1\\)?");
    private static d z = null;
    private final Map A;
    private final Set B = new HashSet(35);
    private final Map C = Collections.synchronizedMap(new HashMap());
    private final Map D = Collections.synchronizedMap(new HashMap());
    private final o E = new o();
    private final Set F = new HashSet(320);
    private final Set G = new HashSet();
    private final String H;
    private final Context I;

    private d(String s1, Map map, Context context)
    {
        if (context == null)
        {
            throw new NullPointerException("You cannot init libphonenumber with a null context");
        }
        I = context;
        H = s1;
        A = map;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            List list = (List)entry.getValue();
            if (list.size() == 1 && "001".equals(list.get(0)))
            {
                G.add(entry.getKey());
            } else
            {
                F.addAll(list);
            }
        }

        if (F.remove("001"))
        {
            f.log(Level.WARNING, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))");
        }
        B.addAll((Collection)map.get(Integer.valueOf(1)));
    }

    private int a(String s1, i i1)
    {
        k k1 = i1.a();
        if (!k1.a() || !b(s1, k1))
        {
            return e.l;
        }
        if (b(s1, i1.e()))
        {
            return e.e;
        }
        if (b(s1, i1.d()))
        {
            return e.d;
        }
        if (b(s1, i1.f()))
        {
            return e.f;
        }
        if (b(s1, i1.h()))
        {
            return e.g;
        }
        if (b(s1, i1.g()))
        {
            return e.h;
        }
        if (b(s1, i1.i()))
        {
            return e.i;
        }
        if (b(s1, i1.j()))
        {
            return e.j;
        }
        if (b(s1, i1.k()))
        {
            return e.k;
        }
        if (b(s1, i1.b()))
        {
            if (i1.p())
            {
                return e.c;
            }
            if (b(s1, i1.c()))
            {
                return e.c;
            } else
            {
                return e.a;
            }
        }
        if (!i1.p() && b(s1, i1.c()))
        {
            return e.b;
        } else
        {
            return e.l;
        }
    }

    private int a(String s1, i i1, StringBuilder stringbuilder, boolean flag, m m1)
    {
        if (s1.length() == 0)
        {
            return 0;
        }
        StringBuilder stringbuilder1 = new StringBuilder(s1);
        String s2 = "NonMatch";
        if (i1 != null)
        {
            s2 = i1.m();
        }
        if (a(stringbuilder1, s2) != n.d)
        {
            if (stringbuilder1.length() <= 2)
            {
                throw new b(c.c, "Phone number had an IDD, but after this was not long enough to be a viable phone number.");
            }
            int l1 = a(stringbuilder1, stringbuilder);
            if (l1 != 0)
            {
                m1.a(l1);
                return l1;
            } else
            {
                throw new b(c.a, "Country calling code supplied was not recognised.");
            }
        }
        if (i1 != null)
        {
            int j1 = i1.l();
            String s3 = String.valueOf(j1);
            String s4 = stringbuilder1.toString();
            if (s4.startsWith(s3))
            {
                StringBuilder stringbuilder2 = new StringBuilder(s4.substring(s3.length()));
                k k1 = i1.a();
                Pattern pattern = E.a(k1.b());
                a(stringbuilder2, i1, ((StringBuilder) (null)));
                Pattern pattern1 = E.a(k1.c());
                if (!pattern.matcher(stringbuilder1).matches() && pattern.matcher(stringbuilder2).matches() || a(pattern1, stringbuilder1.toString()) == f.d)
                {
                    stringbuilder.append(stringbuilder2);
                    m1.a(j1);
                    return j1;
                }
            }
        }
        m1.a(0);
        return 0;
    }

    private int a(StringBuilder stringbuilder, StringBuilder stringbuilder1)
    {
        if (stringbuilder.length() == 0 || stringbuilder.charAt(0) == '0')
        {
            return 0;
        }
        int i1 = stringbuilder.length();
        for (int j1 = 1; j1 <= 3 && j1 <= i1; j1++)
        {
            int k1 = Integer.parseInt(stringbuilder.substring(0, j1));
            if (A.containsKey(Integer.valueOf(k1)))
            {
                stringbuilder1.append(stringbuilder.substring(j1));
                return k1;
            }
        }

        return 0;
    }

    private static int a(Pattern pattern, String s1)
    {
        Matcher matcher = pattern.matcher(s1);
        if (matcher.matches())
        {
            return f.a;
        }
        if (matcher.lookingAt())
        {
            return f.d;
        } else
        {
            return f.c;
        }
    }

    public static d a(Context context)
    {
        com/facebook/i/d;
        JVM INSTR monitorenter ;
        if (z != null) goto _L2; else goto _L1
_L1:
        d d2 = a("PhoneNumberMetadataProto", com.facebook.i.a.a(), context.getApplicationContext());
        d d1 = d2;
_L4:
        com/facebook/i/d;
        JVM INSTR monitorexit ;
        return d1;
_L2:
        d1 = z;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private static d a(String s1, Map map, Context context)
    {
        com/facebook/i/d;
        JVM INSTR monitorenter ;
        if (z != null)
        {
            throw new IllegalStateException("PhoneNumberUtil instance is already set (you should call resetInstance() first)");
        }
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        com/facebook/i/d;
        JVM INSTR monitorexit ;
        throw exception;
        d d1;
        d1 = new d(s1, map, context);
        z = d1;
        com/facebook/i/d;
        JVM INSTR monitorexit ;
        return d1;
    }

    private i a(int i1)
    {
label0:
        {
            synchronized (D)
            {
                if (A.containsKey(Integer.valueOf(i1)))
                {
                    break label0;
                }
            }
            return null;
        }
        if (!D.containsKey(Integer.valueOf(i1)))
        {
            a(H, "001", i1);
        }
        map;
        JVM INSTR monitorexit ;
        return (i)D.get(Integer.valueOf(i1));
        exception;
        throw exception;
    }

    private i a(int i1, String s1)
    {
        if ("001".equals(s1))
        {
            return a(i1);
        } else
        {
            return j(s1);
        }
    }

    private n a(StringBuilder stringbuilder, String s1)
    {
        if (stringbuilder.length() == 0)
        {
            return n.d;
        }
        Matcher matcher = a.matcher(stringbuilder);
        if (matcher.lookingAt())
        {
            stringbuilder.delete(0, matcher.end());
            a(stringbuilder);
            return n.a;
        }
        Pattern pattern = E.a(s1);
        a(stringbuilder);
        if (a(pattern, stringbuilder))
        {
            return n.b;
        } else
        {
            return n.d;
        }
    }

    private String a(m m1, List list)
    {
label0:
        {
            String s1 = b(m1);
            Iterator iterator = list.iterator();
            String s2;
            i i1;
label1:
            do
            {
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    s2 = (String)iterator.next();
                    i1 = j(s2);
                    if (!i1.q())
                    {
                        continue label1;
                    }
                } while (!E.a(i1.r()).matcher(s1).lookingAt());
                return s2;
            } while (a(s1, i1) == e.l);
            return s2;
        }
        return null;
    }

    private static String a(String s1, Map map)
    {
        StringBuilder stringbuilder = new StringBuilder(s1.length());
        for (int i1 = 0; i1 < s1.length(); i1++)
        {
            Character character = (Character)map.get(Character.valueOf(Character.toUpperCase(s1.charAt(i1))));
            if (character != null)
            {
                stringbuilder.append(character);
            }
        }

        return stringbuilder.toString();
    }

    private static void a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        inputstream.close();
        return;
        IOException ioexception;
        ioexception;
        f.log(Level.WARNING, "error closing input stream (ignored)", ioexception);
        return;
    }

    private void a(String s1, String s2, int i1)
    {
        boolean flag;
        String s4;
        Object obj;
        Exception exception;
        IOException ioexception;
        InputStream inputstream;
        flag = "001".equals(s2);
        StringBuilder stringbuilder = (new StringBuilder("libphone_data/")).append(s1).append("_");
        String s3;
        if (flag)
        {
            s3 = String.valueOf(i1);
        } else
        {
            s3 = s2;
        }
        s4 = stringbuilder.append(s3).toString();
        obj = null;
        System.out.println((new StringBuilder("~~~ loading file ")).append(s4).toString());
        inputstream = I.getAssets().open(s4);
        obj = null;
        if (inputstream != null) goto _L2; else goto _L1
_L1:
        f.log(Level.SEVERE, (new StringBuilder("missing metadata: ")).append(s4).toString());
        throw new IllegalStateException((new StringBuilder("missing metadata: ")).append(s4).toString());
        ioexception;
_L10:
        f.log(Level.SEVERE, (new StringBuilder("cannot load/parse metadata: ")).append(s4).toString(), ioexception);
        throw new RuntimeException((new StringBuilder("cannot load/parse metadata: ")).append(s4).toString(), ioexception);
        exception;
_L8:
        a(((InputStream) (obj)));
        throw exception;
_L2:
        ObjectInputStream objectinputstream = new ObjectInputStream(inputstream);
        i k1;
        j j1 = new j();
        j1.readExternal(objectinputstream);
        List list = j1.a();
        if (list.isEmpty())
        {
            f.log(Level.SEVERE, (new StringBuilder("empty metadata: ")).append(s4).toString());
            throw new IllegalStateException((new StringBuilder("empty metadata: ")).append(s4).toString());
        }
        if (list.size() > 1)
        {
            f.log(Level.WARNING, (new StringBuilder("invalid metadata (too many entries): ")).append(s4).toString());
        }
        k1 = (i)list.get(0);
        if (!flag) goto _L4; else goto _L3
_L3:
        D.put(Integer.valueOf(i1), k1);
_L6:
        a(((InputStream) (objectinputstream)));
        return;
_L4:
        C.put(s2, k1);
        if (true) goto _L6; else goto _L5
_L5:
        exception;
        obj = objectinputstream;
        if (true) goto _L8; else goto _L7
_L7:
        ioexception;
        obj = objectinputstream;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void a(String s1, String s2, m m1)
    {
        b(s1, null, m1);
    }

    private static void a(String s1, StringBuilder stringbuilder)
    {
        int i1 = s1.indexOf(";phone-context=");
        if (i1 > 0)
        {
            int k1 = i1 + 15;
            if (s1.charAt(k1) == '+')
            {
                int l1 = s1.indexOf(';', k1);
                int j1;
                if (l1 > 0)
                {
                    stringbuilder.append(s1.substring(k1, l1));
                } else
                {
                    stringbuilder.append(s1.substring(k1));
                }
            }
            stringbuilder.append(s1.substring(4 + s1.indexOf("tel:"), i1));
        } else
        {
            stringbuilder.append(d(s1));
        }
        j1 = stringbuilder.indexOf(";isub=");
        if (j1 > 0)
        {
            stringbuilder.delete(j1, stringbuilder.length());
        }
    }

    private static void a(StringBuilder stringbuilder)
    {
        String s1 = f(stringbuilder.toString());
        stringbuilder.replace(0, stringbuilder.length(), s1);
    }

    private boolean a(m m1, String s1)
    {
        boolean flag;
        int i1;
        i j1;
        flag = true;
        i1 = m1.a();
        j1 = a(i1, s1);
        if (j1 != null && ("001".equals(s1) || i1 == k(s1))) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        String s2;
        int l1;
        k k1 = j1.a();
        s2 = b(m1);
        if (k1.a())
        {
            continue; /* Loop/switch isn't completed */
        }
        l1 = s2.length();
        if (l1 > 2 && l1 <= 16) goto _L4; else goto _L3
_L3:
        return false;
        if (a(s2, j1) != e.l) goto _L4; else goto _L5
_L5:
        return false;
    }

    private boolean a(String s1, k k1)
    {
        return E.a(k1.c()).matcher(s1).matches();
    }

    private boolean a(String s1, String s2)
    {
        return i(s2) || s1 != null && s1.length() != 0 && a.matcher(s1).lookingAt();
    }

    private boolean a(StringBuilder stringbuilder, i i1, StringBuilder stringbuilder1)
    {
        int j1;
        String s1;
        j1 = stringbuilder.length();
        s1 = i1.n();
        if (j1 != 0 && s1.length() != 0) goto _L2; else goto _L1
_L1:
        Matcher matcher;
        return false;
_L2:
        Pattern pattern;
        boolean flag;
        int k1;
        String s2;
        if (!(matcher = E.a(s1).matcher(stringbuilder)).lookingAt())
        {
            continue; /* Loop/switch isn't completed */
        }
        pattern = E.a(i1.a().b());
        flag = pattern.matcher(stringbuilder).matches();
        k1 = matcher.groupCount();
        s2 = i1.o();
        if (s2 != null && s2.length() != 0 && matcher.group(k1) != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!flag || pattern.matcher(stringbuilder.substring(matcher.end())).matches())
        {
            if (stringbuilder1 != null && k1 > 0 && matcher.group(k1) != null)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.delete(0, matcher.end());
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        StringBuilder stringbuilder2 = new StringBuilder(stringbuilder);
        stringbuilder2.replace(0, j1, matcher.replaceFirst(s2));
        if (!flag || pattern.matcher(stringbuilder2.toString()).matches())
        {
            if (stringbuilder1 != null && k1 > 1)
            {
                stringbuilder1.append(matcher.group(1));
            }
            stringbuilder.replace(0, stringbuilder.length(), stringbuilder2.toString());
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private static boolean a(Pattern pattern, StringBuilder stringbuilder)
    {
        int i1;
label0:
        {
            Matcher matcher = pattern.matcher(stringbuilder);
            if (matcher.lookingAt())
            {
                i1 = matcher.end();
                Matcher matcher1 = n.matcher(stringbuilder.substring(i1));
                if (!matcher1.find() || !g(matcher1.group(1)).equals("0"))
                {
                    break label0;
                }
            }
            return false;
        }
        stringbuilder.delete(0, i1);
        return true;
    }

    private String b(int i1)
    {
        List list = (List)A.get(Integer.valueOf(i1));
        if (list == null)
        {
            return "ZZ";
        } else
        {
            return (String)list.get(0);
        }
    }

    private static String b(m m1)
    {
        String s1;
        StringBuilder stringbuilder;
        if (m1.c())
        {
            s1 = "0";
        } else
        {
            s1 = "";
        }
        stringbuilder = new StringBuilder(s1);
        stringbuilder.append(m1.b());
        return stringbuilder.toString();
    }

    private static String b(StringBuilder stringbuilder)
    {
        Matcher matcher = s.matcher(stringbuilder);
        if (matcher.find() && e(stringbuilder.substring(0, matcher.start())))
        {
            int i1 = 1;
            for (int j1 = matcher.groupCount(); i1 <= j1; i1++)
            {
                if (matcher.group(i1) != null)
                {
                    String s1 = matcher.group(i1);
                    stringbuilder.delete(matcher.start(), stringbuilder.length());
                    return s1;
                }
            }

        }
        return "";
    }

    private void b(String s1, String s2, m m1)
    {
        if (s1 == null)
        {
            throw new b(c.b, "The phone number supplied was null.");
        }
        if (s1.length() > 250)
        {
            throw new b(c.e, "The string supplied was too long to parse.");
        }
        StringBuilder stringbuilder = new StringBuilder();
        a(s1, stringbuilder);
        if (!e(stringbuilder.toString()))
        {
            throw new b(c.b, "The string supplied did not seem to be a phone number.");
        }
        if (!a(stringbuilder.toString(), s2))
        {
            throw new b(c.a, "Missing or invalid default region.");
        }
        String s3 = b(stringbuilder);
        if (s3.length() > 0)
        {
            m1.a(s3);
        }
        i i1 = j(s2);
        StringBuilder stringbuilder1 = new StringBuilder();
        int j1;
        int l1;
        try
        {
            l1 = a(stringbuilder.toString(), i1, stringbuilder1, false, m1);
        }
        catch (b b1)
        {
            Matcher matcher = a.matcher(stringbuilder.toString());
            if (b1.a() == c.a && matcher.lookingAt())
            {
                j1 = a(stringbuilder.substring(matcher.end()), i1, stringbuilder1, false, m1);
                if (j1 == 0)
                {
                    throw new b(c.a, "Could not interpret numbers after plus-sign.");
                }
            } else
            {
                throw new b(b1.a(), b1.getMessage());
            }
            continue;
        }
        j1 = l1;
        do
        {
            if (j1 != 0)
            {
                String s4 = b(j1);
                if (!s4.equals(s2))
                {
                    i1 = a(j1, s4);
                }
            } else
            {
                a(stringbuilder);
                stringbuilder1.append(stringbuilder);
                if (s2 != null)
                {
                    m1.a(i1.l());
                }
            }
            if (stringbuilder1.length() < 2)
            {
                throw new b(c.d, "The string supplied is too short to be a phone number.");
            }
            if (i1 != null)
            {
                a(stringbuilder1, i1, new StringBuilder());
            }
            int k1 = stringbuilder1.length();
            if (k1 < 2)
            {
                throw new b(c.d, "The string supplied is too short to be a phone number.");
            }
            if (k1 > 16)
            {
                throw new b(c.e, "The string supplied is too long to be a phone number.");
            }
            if (stringbuilder1.charAt(0) == '0')
            {
                m1.d();
            }
            m1.a(Long.parseLong(stringbuilder1.toString()));
            return;
        } while (true);
    }

    private boolean b(String s1, k k1)
    {
        Matcher matcher = E.a(k1.b()).matcher(s1);
        return a(s1, k1) && matcher.matches();
    }

    private String c(m m1)
    {
        int i1 = m1.a();
        List list = (List)A.get(Integer.valueOf(i1));
        if (list == null)
        {
            String s1 = b(m1);
            f.log(Level.WARNING, (new StringBuilder("Missing/invalid country_code (")).append(i1).append(") for number ").append(s1).toString());
            return null;
        }
        if (list.size() == 1)
        {
            return (String)list.get(0);
        } else
        {
            return a(m1, list);
        }
    }

    private static String c(String s1)
    {
        return (new StringBuilder(";ext=(\\p{Nd}{1,7})|[ \240\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\363))?n?|\uFF45?\uFF58\uFF54\uFF4E?|[")).append(s1).append("]|int|anexo|\uFF49\uFF4E\uFF54)[:\\.\uFF0E]?[ \240\\t,-]*(\\p{Nd}{1,7})#?|").append("[- ]+(\\p{Nd}{1,5})#").toString();
    }

    private static String d(String s1)
    {
        Matcher matcher = o.matcher(s1);
        if (matcher.find())
        {
            String s2 = s1.substring(matcher.start());
            Matcher matcher1 = c.matcher(s2);
            if (matcher1.find())
            {
                s2 = s2.substring(0, matcher1.start());
                f.log(Level.FINER, (new StringBuilder("Stripped trailing characters: ")).append(s2).toString());
            }
            Matcher matcher2 = b.matcher(s2);
            if (matcher2.find())
            {
                s2 = s2.substring(0, matcher2.start());
            }
            return s2;
        } else
        {
            return "";
        }
    }

    private static boolean e(String s1)
    {
        if (s1.length() < 2)
        {
            return false;
        } else
        {
            return t.matcher(s1).matches();
        }
    }

    private static String f(String s1)
    {
        if (p.matcher(s1).matches())
        {
            return a(s1, i);
        } else
        {
            return g(s1);
        }
    }

    private static String g(String s1)
    {
        return h(s1).toString();
    }

    private static StringBuilder h(String s1)
    {
        StringBuilder stringbuilder = new StringBuilder(s1.length());
        char ac[] = s1.toCharArray();
        int i1 = ac.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            int k1 = Character.digit(ac[j1], 10);
            if (k1 != -1)
            {
                stringbuilder.append(k1);
            }
        }

        return stringbuilder;
    }

    private boolean i(String s1)
    {
        return s1 != null && F.contains(s1);
    }

    private i j(String s1)
    {
        if (!i(s1))
        {
            return null;
        }
        synchronized (C)
        {
            if (!C.containsKey(s1))
            {
                a(H, s1, 0);
            }
        }
        return (i)C.get(s1);
    }

    private int k(String s1)
    {
        i i1 = j(s1);
        if (i1 == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid region code: ")).append(s1).toString());
        } else
        {
            return i1.l();
        }
    }

    public final int a(String s1)
    {
        if (!i(s1))
        {
            Logger logger = f;
            Level level = Level.WARNING;
            StringBuilder stringbuilder = new StringBuilder("Invalid or missing region code (");
            if (s1 == null)
            {
                s1 = "null";
            }
            logger.log(level, stringbuilder.append(s1).append(") provided.").toString());
            return 0;
        } else
        {
            return k(s1);
        }
    }

    public final boolean a(m m1)
    {
        return a(m1, c(m1));
    }

    public final m b(String s1)
    {
        m m1 = new m();
        a(s1, ((String) (null)), m1);
        return m1;
    }

    static 
    {
        HashMap hashmap = new HashMap();
        hashmap.put(Character.valueOf('0'), Character.valueOf('0'));
        hashmap.put(Character.valueOf('1'), Character.valueOf('1'));
        hashmap.put(Character.valueOf('2'), Character.valueOf('2'));
        hashmap.put(Character.valueOf('3'), Character.valueOf('3'));
        hashmap.put(Character.valueOf('4'), Character.valueOf('4'));
        hashmap.put(Character.valueOf('5'), Character.valueOf('5'));
        hashmap.put(Character.valueOf('6'), Character.valueOf('6'));
        hashmap.put(Character.valueOf('7'), Character.valueOf('7'));
        hashmap.put(Character.valueOf('8'), Character.valueOf('8'));
        hashmap.put(Character.valueOf('9'), Character.valueOf('9'));
        HashMap hashmap1 = new HashMap(40);
        hashmap1.put(Character.valueOf('A'), Character.valueOf('2'));
        hashmap1.put(Character.valueOf('B'), Character.valueOf('2'));
        hashmap1.put(Character.valueOf('C'), Character.valueOf('2'));
        hashmap1.put(Character.valueOf('D'), Character.valueOf('3'));
        hashmap1.put(Character.valueOf('E'), Character.valueOf('3'));
        hashmap1.put(Character.valueOf('F'), Character.valueOf('3'));
        hashmap1.put(Character.valueOf('G'), Character.valueOf('4'));
        hashmap1.put(Character.valueOf('H'), Character.valueOf('4'));
        hashmap1.put(Character.valueOf('I'), Character.valueOf('4'));
        hashmap1.put(Character.valueOf('J'), Character.valueOf('5'));
        hashmap1.put(Character.valueOf('K'), Character.valueOf('5'));
        hashmap1.put(Character.valueOf('L'), Character.valueOf('5'));
        hashmap1.put(Character.valueOf('M'), Character.valueOf('6'));
        hashmap1.put(Character.valueOf('N'), Character.valueOf('6'));
        hashmap1.put(Character.valueOf('O'), Character.valueOf('6'));
        hashmap1.put(Character.valueOf('P'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('Q'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('R'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('S'), Character.valueOf('7'));
        hashmap1.put(Character.valueOf('T'), Character.valueOf('8'));
        hashmap1.put(Character.valueOf('U'), Character.valueOf('8'));
        hashmap1.put(Character.valueOf('V'), Character.valueOf('8'));
        hashmap1.put(Character.valueOf('W'), Character.valueOf('9'));
        hashmap1.put(Character.valueOf('X'), Character.valueOf('9'));
        hashmap1.put(Character.valueOf('Y'), Character.valueOf('9'));
        hashmap1.put(Character.valueOf('Z'), Character.valueOf('9'));
        h = Collections.unmodifiableMap(hashmap1);
        HashMap hashmap2 = new HashMap(100);
        hashmap2.putAll(h);
        hashmap2.putAll(hashmap);
        i = Collections.unmodifiableMap(hashmap2);
        HashMap hashmap3 = new HashMap();
        hashmap3.putAll(hashmap);
        hashmap3.put(Character.valueOf('+'), Character.valueOf('+'));
        hashmap3.put(Character.valueOf('*'), Character.valueOf('*'));
        g = Collections.unmodifiableMap(hashmap3);
        HashMap hashmap4 = new HashMap();
        char c1;
        for (Iterator iterator = h.keySet().iterator(); iterator.hasNext(); hashmap4.put(Character.valueOf(c1), Character.valueOf(c1)))
        {
            c1 = ((Character)iterator.next()).charValue();
            hashmap4.put(Character.valueOf(Character.toLowerCase(c1)), Character.valueOf(c1));
        }

        hashmap4.putAll(hashmap);
        hashmap4.put(Character.valueOf('-'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\uFF0D'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2010'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2011'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2012'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2013'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2014'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2015'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('\u2212'), Character.valueOf('-'));
        hashmap4.put(Character.valueOf('/'), Character.valueOf('/'));
        hashmap4.put(Character.valueOf('\uFF0F'), Character.valueOf('/'));
        hashmap4.put(Character.valueOf(' '), Character.valueOf(' '));
        hashmap4.put(Character.valueOf('\u3000'), Character.valueOf(' '));
        hashmap4.put(Character.valueOf('\u2060'), Character.valueOf(' '));
        hashmap4.put(Character.valueOf('.'), Character.valueOf('.'));
        hashmap4.put(Character.valueOf('\uFF0E'), Character.valueOf('.'));
        j = Collections.unmodifiableMap(hashmap4);
        l = (new StringBuilder()).append(Arrays.toString(h.keySet().toArray()).replaceAll("[, \\[\\]]", "")).append(Arrays.toString(h.keySet().toArray()).toLowerCase().replaceAll("[, \\[\\]]", "")).toString();
        q = (new StringBuilder("\\p{Nd}{2}|[+\uFF0B]*+(?:[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30FC\uFF0D-\uFF0F \240\255\u200B\u2060\u3000()\uFF08\uFF09\uFF3B\uFF3D.\\[\\]/~\u2053\u223C\uFF5E*")).append(l).append("\\p{Nd}]*").toString();
        t = Pattern.compile((new StringBuilder()).append(q).append("(?:").append(r).append(")?").toString(), 66);
    }
}
