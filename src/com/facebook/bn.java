// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.g.a;
import com.facebook.g.j;
import com.facebook.g.n;
import com.facebook.g.t;
import com.facebook.h.b;
import com.facebook.h.c;
import com.facebook.h.g;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook:
//            ac, bc, bo, z, 
//            ak, bl

public class bn
{

    static final boolean a;
    private static com.facebook.g.b h;
    private final HttpURLConnection b;
    private final b c;
    private final g d;
    private final boolean e;
    private final ac f;
    private final bc g;

    bn(bc bc1, HttpURLConnection httpurlconnection, ac ac1)
    {
        g = bc1;
        b = httpurlconnection;
        c = null;
        d = null;
        e = false;
        f = ac1;
    }

    bn(bc bc1, HttpURLConnection httpurlconnection, b b1, boolean flag)
    {
        g = bc1;
        b = httpurlconnection;
        c = b1;
        d = null;
        e = flag;
        f = null;
    }

    private bn(bc bc1, HttpURLConnection httpurlconnection, g g1, boolean flag)
    {
        g = bc1;
        b = httpurlconnection;
        c = null;
        d = g1;
        e = flag;
        f = null;
    }

    private static bn a(bc bc1, HttpURLConnection httpurlconnection, Object obj, boolean flag, Object obj1)
    {
        if (obj instanceof JSONObject)
        {
            JSONObject jsonobject = (JSONObject)obj;
            ac ac1 = com.facebook.ac.a(jsonobject, obj1, httpurlconnection);
            if (ac1 != null)
            {
                if (ac1.b() == 190)
                {
                    bo bo1 = bc1.a();
                    if (bo1 != null)
                    {
                        bo1.f();
                    }
                }
                return new bn(bc1, httpurlconnection, ac1);
            }
            Object obj2 = t.a(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (obj2 instanceof JSONObject)
            {
                return new bn(bc1, httpurlconnection, com.facebook.h.c.a((JSONObject)obj2), flag);
            }
            if (obj2 instanceof JSONArray)
            {
                return new bn(bc1, httpurlconnection, com.facebook.h.c.a((JSONArray)obj2, com/facebook/h/b), flag);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL)
        {
            return new bn(bc1, httpurlconnection, ((b) (null)), flag);
        } else
        {
            throw new z((new StringBuilder("Got unexpected object type in response, class: ")).append(obj.getClass().getSimpleName()).toString());
        }
    }

    private static List a(InputStream inputstream, HttpURLConnection httpurlconnection, bl bl1, boolean flag)
    {
        String s = t.a(inputstream);
        ak ak1 = com.facebook.ak.c;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(s.length());
        aobj[1] = s;
        n.a(ak1, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", aobj);
        return a(s, httpurlconnection, bl1, flag);
    }

    static List a(String s, HttpURLConnection httpurlconnection, bl bl1, boolean flag)
    {
        List list = a(httpurlconnection, ((List) (bl1)), (new JSONTokener(s)).nextValue(), flag);
        ak ak1 = com.facebook.ak.a;
        Object aobj[] = new Object[3];
        aobj[0] = bl1.b();
        aobj[1] = Integer.valueOf(s.length());
        aobj[2] = list;
        n.a(ak1, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", aobj);
        return list;
    }

    static List a(HttpURLConnection httpurlconnection, bl bl1)
    {
        InputStream inputstream = null;
        if (!(bl1 instanceof a)) goto _L2; else goto _L1
_L1:
        com.facebook.g.b b2;
        String s1;
        a a1 = (a)bl1;
        b2 = d();
        s1 = a1.i();
        InputStream inputstream2;
        List list4;
        if (t.a(s1))
        {
            if (bl1.size() == 1)
            {
                s1 = bl1.a(0).c();
            } else
            {
                n.a(com.facebook.ak.a, "ResponseCache", "Not using cache for cacheable request because no key was specified");
            }
        }
        if (a1.j() || b2 == null || t.a(s1)) goto _L4; else goto _L3
_L3:
        inputstream2 = b2.a(s1);
        inputstream = inputstream2;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        list4 = a(inputstream, ((HttpURLConnection) (null)), bl1, true);
        t.a(inputstream);
        return list4;
        com.facebook.g.b b1;
        Object obj;
        String s;
        t.a(inputstream);
        b1 = b2;
        String s4 = s1;
        obj = inputstream;
        s = s4;
_L11:
        if (httpurlconnection.getResponseCode() < 400) goto _L6; else goto _L5
_L5:
        obj = httpurlconnection.getErrorStream();
_L8:
        List list3 = a(((InputStream) (obj)), httpurlconnection, bl1, false);
        t.a(((java.io.Closeable) (obj)));
        return list3;
        z z2;
        z2;
        Object obj1 = null;
_L9:
        t.a(((java.io.Closeable) (obj1)));
        s = s1;
        obj = obj1;
        b1 = b2;
        continue; /* Loop/switch isn't completed */
        JSONException jsonexception1;
        jsonexception1;
        t.a(inputstream);
        b1 = b2;
        String s3 = s1;
        obj = inputstream;
        s = s3;
        continue; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        t.a(inputstream);
        b1 = b2;
        String s2 = s1;
        obj = inputstream;
        s = s2;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        t.a(inputstream);
        throw exception1;
_L6:
        obj = httpurlconnection.getInputStream();
        if (b1 == null || s == null || obj == null) goto _L8; else goto _L7
_L7:
        InputStream inputstream1 = b1.a(s, ((InputStream) (obj)));
        obj = inputstream1;
          goto _L8
        z z1;
        z1;
        List list2;
        n.a(com.facebook.ak.a, "Response", "Response <Error>: %s", new Object[] {
            z1
        });
        list2 = a(((List) (bl1)), httpurlconnection, z1);
        t.a(((java.io.Closeable) (obj)));
        return list2;
        JSONException jsonexception;
        jsonexception;
        List list1;
        n.a(com.facebook.ak.a, "Response", "Response <Error>: %s", new Object[] {
            jsonexception
        });
        list1 = a(((List) (bl1)), httpurlconnection, new z(jsonexception));
        t.a(((java.io.Closeable) (obj)));
        return list1;
        IOException ioexception;
        ioexception;
        List list;
        n.a(com.facebook.ak.a, "Response", "Response <Error>: %s", new Object[] {
            ioexception
        });
        list = a(((List) (bl1)), httpurlconnection, new z(ioexception));
        t.a(((java.io.Closeable) (obj)));
        return list;
        Exception exception;
        exception;
        t.a(((java.io.Closeable) (obj)));
        throw exception;
        z z3;
        z3;
        obj1 = inputstream;
          goto _L9
_L4:
        b1 = b2;
        s = s1;
        obj = null;
        continue; /* Loop/switch isn't completed */
_L2:
        b1 = null;
        obj = null;
        s = null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    private static List a(HttpURLConnection httpurlconnection, List list, Object obj, boolean flag)
    {
        int i;
        int k;
        ArrayList arraylist;
        i = 0;
        if (!a && httpurlconnection == null && !flag)
        {
            throw new AssertionError();
        }
        k = list.size();
        arraylist = new ArrayList(k);
        if (k != 1) goto _L2; else goto _L1
_L1:
        bc bc2 = (bc)list.get(0);
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("body", obj);
        if (httpurlconnection == null) goto _L4; else goto _L3
_L3:
        int l = httpurlconnection.getResponseCode();
_L5:
        Object obj1;
        jsonobject.put("code", l);
        obj1 = new JSONArray();
        ((JSONArray) (obj1)).put(jsonobject);
_L6:
        if (!(obj1 instanceof JSONArray) || ((JSONArray)obj1).length() != k)
        {
            throw new z("Unexpected number of results");
        }
        break MISSING_BLOCK_LABEL_230;
_L4:
        l = 200;
          goto _L5
        JSONException jsonexception1;
        jsonexception1;
        arraylist.add(new bn(bc2, httpurlconnection, new ac(httpurlconnection, jsonexception1)));
        obj1 = obj;
          goto _L6
        IOException ioexception;
        ioexception;
        arraylist.add(new bn(bc2, httpurlconnection, new ac(httpurlconnection, ioexception)));
_L2:
        obj1 = obj;
          goto _L6
        JSONArray jsonarray = (JSONArray)obj1;
        while (i < jsonarray.length()) 
        {
            bc bc1 = (bc)list.get(i);
            try
            {
                arraylist.add(a(bc1, httpurlconnection, jsonarray.get(i), flag, obj));
            }
            catch (JSONException jsonexception)
            {
                arraylist.add(new bn(bc1, httpurlconnection, new ac(httpurlconnection, jsonexception)));
            }
            catch (z z1)
            {
                arraylist.add(new bn(bc1, httpurlconnection, new ac(httpurlconnection, z1)));
            }
            i++;
        }
        return arraylist;
          goto _L5
    }

    static List a(List list, HttpURLConnection httpurlconnection, z z1)
    {
        int i = list.size();
        ArrayList arraylist = new ArrayList(i);
        for (int k = 0; k < i; k++)
        {
            arraylist.add(new bn((bc)list.get(k), httpurlconnection, new ac(httpurlconnection, z1)));
        }

        return arraylist;
    }

    private static com.facebook.g.b d()
    {
        if (h == null)
        {
            android.content.Context context = bo.h();
            if (context != null)
            {
                h = new com.facebook.g.b(context, "ResponseCache", new j());
            }
        }
        return h;
    }

    public final ac a()
    {
        return f;
    }

    public final b b()
    {
        return c;
    }

    public final b c()
    {
        if (c == null)
        {
            return null;
        } else
        {
            return c.b();
        }
    }

    public String toString()
    {
        Object aobj[] = new Object[1];
        if (b == null) goto _L2; else goto _L1
_L1:
        int i = b.getResponseCode();
_L3:
        String s1;
        aobj[0] = Integer.valueOf(i);
        s1 = String.format("%d", aobj);
        String s = s1;
_L4:
        return (new StringBuilder("{Response:  responseCode: ")).append(s).append(", graphObject: ").append(c).append(", error: ").append(f).append(", isFromCache:").append(e).append("}").toString();
_L2:
        i = 200;
          goto _L3
        IOException ioexception;
        ioexception;
        s = "unknown";
          goto _L4
    }

    static 
    {
        boolean flag;
        if (!com/facebook/bn.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
