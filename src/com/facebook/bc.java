// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.g.n;
import com.facebook.g.t;
import com.facebook.g.u;
import com.facebook.h.b;
import com.facebook.h.g;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            bd, aj, z, bn, 
//            bl, bo, bj, ak, 
//            be, bi, bf, bk, 
//            bg, bh

public final class bc
{

    private static String a;
    private static volatile String m;
    private bo b;
    private aj c;
    private String d;
    private b e;
    private String f;
    private String g;
    private String h;
    private boolean i;
    private Bundle j;
    private bg k;
    private String l;

    public bc()
    {
        this(null, null, null, null, null);
    }

    public bc(bo bo1, String s, Bundle bundle, aj aj1, bg bg)
    {
        i = true;
        b = bo1;
        d = s;
        k = bg;
        a(aj1);
        if (bundle != null)
        {
            j = new Bundle(bundle);
        } else
        {
            j = new Bundle();
        }
        if (!j.containsKey("migration_bundle"))
        {
            j.putString("migration_bundle", "fbsdk:20121026");
        }
    }

    public static bc a(bo bo1, bh bh)
    {
        return new bc(bo1, "me", null, null, new bd(bh));
    }

    public static bc a(String s)
    {
        return new bc(null, s, null, null, null);
    }

    public static bc a(String s, b b1)
    {
        bc bc1 = new bc(null, s, null, com.facebook.aj.b, null);
        bc1.a(b1);
        return bc1;
    }

    public static transient bk a(bc abc[])
    {
        u.a(abc, "requests");
        return b(Arrays.asList(abc));
    }

    private static bn a(bc bc1)
    {
        List list = b(new bc[] {
            bc1
        });
        if (list == null || list.size() != 1)
        {
            throw new z("invalid state: expected a single response");
        } else
        {
            return (bn)list.get(0);
        }
    }

    private static HttpURLConnection a(URL url)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
        httpurlconnection.setRequestProperty("User-Agent", h());
        httpurlconnection.setRequestProperty("Content-Type", g());
        httpurlconnection.setChunkedStreamingMode(0);
        return httpurlconnection;
    }

    public static List a(bl bl1)
    {
        u.a(bl1, "requests");
        HttpURLConnection httpurlconnection;
        try
        {
            httpurlconnection = c(bl1);
        }
        catch (Exception exception)
        {
            List list = bn.a(bl1.d(), null, new z(exception));
            a(bl1, list);
            return list;
        }
        return a(httpurlconnection, bl1);
    }

    public static List a(HttpURLConnection httpurlconnection, bl bl1)
    {
        List list = bn.a(httpurlconnection, bl1);
        t.a(httpurlconnection);
        int i1 = bl1.size();
        if (i1 != list.size())
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(list.size());
            aobj[1] = Integer.valueOf(i1);
            throw new z(String.format("Received %d responses while expecting %d", aobj));
        }
        a(bl1, list);
        HashSet hashset = new HashSet();
        Iterator iterator = bl1.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            bc bc1 = (bc)iterator.next();
            if (bc1.b != null)
            {
                hashset.add(bc1.b);
            }
        } while (true);
        for (Iterator iterator1 = hashset.iterator(); iterator1.hasNext(); ((bo)iterator1.next()).i()) { }
        return list;
    }

    private static List a(Collection collection)
    {
        return a(new bl(collection));
    }

    private static void a(Bundle bundle, bj bj1)
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            if (d(obj))
            {
                bj1.a(s, obj);
            }
        } while (true);
    }

    private void a(aj aj1)
    {
        if (l != null && aj1 != aj.a)
        {
            throw new z("Can't change HTTP method on request with overridden URL.");
        }
        if (aj1 == null)
        {
            aj1 = aj.a;
        }
        c = aj1;
    }

    private static void a(bj bj1, Collection collection, Bundle bundle)
    {
        JSONArray jsonarray = new JSONArray();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); ((bc)iterator.next()).a(jsonarray, bundle)) { }
        bj1.a("batch", jsonarray.toString());
    }

    private static void a(bl bl1, HttpURLConnection httpurlconnection)
    {
        n n1;
        int i1;
        URL url;
        BufferedOutputStream bufferedoutputstream;
        n1 = new n(ak.a, "Request");
        i1 = bl1.size();
        aj aj1;
        boolean flag;
        if (i1 == 1)
        {
            aj1 = bl1.a(0).c;
        } else
        {
            aj1 = com.facebook.aj.b;
        }
        httpurlconnection.setRequestMethod(aj1.name());
        url = httpurlconnection.getURL();
        n1.b("Request:\n");
        n1.a("Id", bl1.b());
        n1.a("URL", url);
        n1.a("Method", httpurlconnection.getRequestMethod());
        n1.a("User-Agent", httpurlconnection.getRequestProperty("User-Agent"));
        n1.a("Content-Type", httpurlconnection.getRequestProperty("Content-Type"));
        httpurlconnection.setConnectTimeout(bl1.a());
        httpurlconnection.setReadTimeout(bl1.a());
        if (aj1 == com.facebook.aj.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            n1.a();
            return;
        }
        httpurlconnection.setDoOutput(true);
        bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
        bj bj1 = new bj(bufferedoutputstream, n1);
        if (i1 != 1) goto _L2; else goto _L1
_L1:
        bc bc1 = bl1.a(0);
        n1.b("  Parameters:\n");
        a(bc1.j, bj1);
        n1.b("  Attachments:\n");
        b(bc1.j, bj1);
        if (bc1.e != null)
        {
            a(bc1.e, url.getPath(), ((bi) (bj1)));
        }
_L3:
        bufferedoutputstream.close();
        n1.a();
        return;
_L2:
        String s;
        s = d(bl1);
        if (t.a(s))
        {
            throw new z("At least one request in a batch must have an open Session, or a default app ID must be specified.");
        }
        break MISSING_BLOCK_LABEL_306;
        Exception exception;
        exception;
        bufferedoutputstream.close();
        throw exception;
        bj1.a("batch_app_id", s);
        Bundle bundle = new Bundle();
        a(bj1, ((Collection) (bl1)), bundle);
        n1.b("  Attachments:\n");
        b(bundle, bj1);
          goto _L3
    }

    private static void a(bl bl1, List list)
    {
        be be1;
        Handler handler;
label0:
        {
            int i1 = bl1.size();
            ArrayList arraylist = new ArrayList();
            for (int j1 = 0; j1 < i1; j1++)
            {
                bc bc1 = bl1.a(j1);
                if (bc1.k != null)
                {
                    arraylist.add(new Pair(bc1.k, list.get(j1)));
                }
            }

            if (arraylist.size() > 0)
            {
                be1 = new be(arraylist, bl1);
                handler = bl1.c();
                if (handler != null)
                {
                    break label0;
                }
                be1.run();
            }
            return;
        }
        handler.post(be1);
    }

    private void a(b b1)
    {
        e = b1;
    }

    private static void a(b b1, String s, bi bi1)
    {
        boolean flag1;
        if (s.startsWith("me/") || s.startsWith("/me/"))
        {
            int i1 = s.indexOf(":");
            int j1 = s.indexOf("?");
            boolean flag;
            Iterator iterator;
            java.util.Map.Entry entry;
            if (i1 > 3 && (j1 == -1 || i1 < j1))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        iterator = b1.c().entrySet().iterator();
        while (iterator.hasNext()) 
        {
            entry = (java.util.Map.Entry)iterator.next();
            boolean flag2;
            if (flag1 && ((String)entry.getKey()).equalsIgnoreCase("image"))
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            a((String)entry.getKey(), entry.getValue(), bi1, flag2);
        }
    }

    private static void a(String s, Object obj, bi bi1, boolean flag)
    {
        Class class1 = obj.getClass();
        Class class2;
        Object obj1;
        Date date;
        JSONArray jsonarray;
        int i1;
        int j1;
        Object aobj[];
        JSONObject jsonobject;
        Iterator iterator;
        String s1;
        if (com/facebook/h/b.isAssignableFrom(class1))
        {
            JSONObject jsonobject1 = ((b)obj).d();
            class2 = jsonobject1.getClass();
            obj1 = jsonobject1;
        } else
        if (com/facebook/h/g.isAssignableFrom(class1))
        {
            JSONArray jsonarray1 = ((g)obj).a();
            class2 = jsonarray1.getClass();
            obj1 = jsonarray1;
        } else
        {
            class2 = class1;
            obj1 = obj;
        }
        if (!org/json/JSONObject.isAssignableFrom(class2)) goto _L2; else goto _L1
_L1:
        jsonobject = (JSONObject)obj1;
        if (!flag) goto _L4; else goto _L3
_L3:
        for (iterator = jsonobject.keys(); iterator.hasNext(); a(String.format("%s[%s]", new Object[] {
    s, s1
}), jsonobject.opt(s1), bi1, flag))
        {
            s1 = (String)iterator.next();
        }

          goto _L5
_L4:
        if (!jsonobject.has("id")) goto _L7; else goto _L6
_L6:
        a(s, jsonobject.optString("id"), bi1, flag);
_L5:
        return;
_L7:
        if (jsonobject.has("url"))
        {
            a(s, jsonobject.optString("url"), bi1, flag);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (!org/json/JSONArray.isAssignableFrom(class2))
        {
            break; /* Loop/switch isn't completed */
        }
        jsonarray = (JSONArray)obj1;
        i1 = jsonarray.length();
        j1 = 0;
        while (j1 < i1) 
        {
            aobj = new Object[2];
            aobj[0] = s;
            aobj[1] = Integer.valueOf(j1);
            a(String.format("%s[%d]", aobj), jsonarray.opt(j1), bi1, flag);
            j1++;
        }
        if (true) goto _L5; else goto _L8
_L8:
        if (java/lang/String.isAssignableFrom(class2) || java/lang/Number.isAssignableFrom(class2) || java/lang/Boolean.isAssignableFrom(class2))
        {
            bi1.a(s, obj1.toString());
            return;
        }
        if (java/util/Date.isAssignableFrom(class2))
        {
            date = (Date)obj1;
            bi1.a(s, (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(date));
            return;
        }
        if (true) goto _L5; else goto _L9
_L9:
    }

    private void a(JSONArray jsonarray, Bundle bundle)
    {
        JSONObject jsonobject = new JSONObject();
        if (g != null)
        {
            jsonobject.put("name", g);
            jsonobject.put("omit_response_on_success", i);
        }
        if (h != null)
        {
            jsonobject.put("depends_on", h);
        }
        String s = e();
        jsonobject.put("relative_url", s);
        jsonobject.put("method", c);
        if (b != null)
        {
            n.a(b.d());
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = j.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            Object obj = j.get(s1);
            if (c(obj))
            {
                Object aobj[] = new Object[2];
                aobj[0] = "file";
                aobj[1] = Integer.valueOf(bundle.size());
                String s2 = String.format("%s%d", aobj);
                arraylist.add(s2);
                t.a(bundle, s2, obj);
            }
        } while (true);
        if (!arraylist.isEmpty())
        {
            jsonobject.put("attached_files", TextUtils.join(",", arraylist));
        }
        if (e != null)
        {
            ArrayList arraylist1 = new ArrayList();
            a(e, s, ((bi) (new bf(this, arraylist1))));
            jsonobject.put("body", TextUtils.join("&", arraylist1));
        }
        jsonarray.put(jsonobject);
    }

    static boolean a(Object obj)
    {
        return d(obj);
    }

    public static bk b(bl bl1)
    {
        u.a(bl1, "requests");
        bk bk1 = new bk(bl1);
        bk1.a();
        return bk1;
    }

    private static bk b(Collection collection)
    {
        return b(new bl(collection));
    }

    static String b(Object obj)
    {
        return e(obj);
    }

    private String b(String s)
    {
        android.net.Uri.Builder builder;
label0:
        {
            builder = (new android.net.Uri.Builder()).encodedPath(s);
            Object obj;
label1:
            do
            {
                String s1;
                for (Iterator iterator = j.keySet().iterator(); iterator.hasNext(); builder.appendQueryParameter(s1, e(obj).toString()))
                {
                    s1 = (String)iterator.next();
                    obj = j.get(s1);
                    if (obj == null)
                    {
                        obj = "";
                    }
                    if (!d(obj))
                    {
                        continue label1;
                    }
                }

                break label0;
            } while (c != aj.a);
            Object aobj[] = new Object[1];
            aobj[0] = obj.getClass().getSimpleName();
            throw new IllegalArgumentException(String.format("Unsupported parameter type for GET request: %s", aobj));
        }
        return builder.toString();
    }

    private static transient List b(bc abc[])
    {
        u.a(abc, "requests");
        return a(Arrays.asList(abc));
    }

    private static void b(Bundle bundle, bj bj1)
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            Object obj = bundle.get(s);
            if (c(obj))
            {
                bj1.a(s, obj);
            }
        } while (true);
    }

    private static HttpURLConnection c(bl bl1)
    {
        for (Iterator iterator = bl1.iterator(); iterator.hasNext(); ((bc)iterator.next()).f()) { }
        URL url;
        if (bl1.size() != 1)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        url = new URL(bl1.a(0).c());
_L1:
        MalformedURLException malformedurlexception;
        HttpURLConnection httpurlconnection;
        try
        {
            httpurlconnection = a(url);
            a(bl1, httpurlconnection);
        }
        catch (IOException ioexception)
        {
            throw new z("could not construct request body", ioexception);
        }
        catch (JSONException jsonexception)
        {
            throw new z("could not construct request body", jsonexception);
        }
        return httpurlconnection;
        try
        {
            url = new URL("https://graph.facebook.com");
        }
        // Misplaced declaration of an exception variable
        catch (MalformedURLException malformedurlexception)
        {
            throw new z("could not construct URL for request", malformedurlexception);
        }
          goto _L1
    }

    private static boolean c(Object obj)
    {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof ParcelFileDescriptor);
    }

    private static String d(bl bl1)
    {
        if (!t.a(bl1.f()))
        {
            return bl1.f();
        }
        for (Iterator iterator = bl1.iterator(); iterator.hasNext();)
        {
            bo bo1 = ((bc)iterator.next()).b;
            if (bo1 != null)
            {
                return bo1.c();
            }
        }

        return a;
    }

    private void d()
    {
        if (b != null)
        {
            if (!b.a())
            {
                throw new z("Session provided to a Request in un-opened state.");
            }
            if (!j.containsKey("access_token"))
            {
                String s = b.d();
                n.a(s);
                j.putString("access_token", s);
            }
        }
        j.putString("sdk", "android");
        j.putString("format", "json");
    }

    private static boolean d(Object obj)
    {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    private String e()
    {
        if (l != null)
        {
            throw new z("Can't override URL for a batch request");
        }
        String s;
        if (f != null)
        {
            s = (new StringBuilder("method/")).append(f).toString();
        } else
        {
            s = d;
        }
        d();
        return b(s);
    }

    private static String e(Object obj)
    {
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number))
        {
            return obj.toString();
        }
        if (obj instanceof Date)
        {
            return (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(obj);
        } else
        {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
    }

    private void f()
    {
        if (d != null && f != null)
        {
            throw new IllegalArgumentException("Only one of a graph path or REST method may be specified per request.");
        } else
        {
            return;
        }
    }

    private static String g()
    {
        return String.format("multipart/form-data; boundary=%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    private static String h()
    {
        if (m == null)
        {
            m = String.format("%s.%s", new Object[] {
                "FBAndroidSDK", "3.0.2"
            });
        }
        return m;
    }

    public final bo a()
    {
        return b;
    }

    public final void a(Bundle bundle)
    {
        j = bundle;
    }

    public final void a(bg bg)
    {
        k = bg;
    }

    public final bn b()
    {
        return a(this);
    }

    final String c()
    {
        if (l != null)
        {
            return l.toString();
        }
        String s;
        if (f != null)
        {
            s = (new StringBuilder("https://api.facebook.com/method/")).append(f).toString();
        } else
        {
            s = (new StringBuilder("https://graph.facebook.com/")).append(d).toString();
        }
        d();
        return b(s);
    }

    public final String toString()
    {
        return (new StringBuilder("{Request:  session: ")).append(b).append(", graphPath: ").append(d).append(", graphObject: ").append(e).append(", restMethod: ").append(f).append(", httpMethod: ").append(c).append(", parameters: ").append(j).append("}").toString();
    }
}
