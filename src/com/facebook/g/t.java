// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.bc;
import com.facebook.bn;
import com.facebook.z;
import com.instagram.common.s.b;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class t
{

    private static final Object a = new Object();
    private static volatile boolean b = false;
    private static volatile String c = "";

    public static Uri a(String s, String s1, Bundle bundle)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority(s);
        builder.path(s1);
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s2 = (String)iterator.next();
            Object obj = bundle.get(s2);
            if (obj instanceof String)
            {
                builder.appendQueryParameter(s2, (String)obj);
            }
        } while (true);
        return builder.build();
    }

    public static Object a(JSONObject jsonobject, String s, String s1)
    {
        Object obj = jsonobject.opt(s);
        Object obj1;
        if (obj != null && (obj instanceof String))
        {
            obj1 = (new JSONTokener((String)obj)).nextValue();
        } else
        {
            obj1 = obj;
        }
        if (obj1 != null && !(obj1 instanceof JSONObject) && !(obj1 instanceof JSONArray))
        {
            if (s1 != null)
            {
                JSONObject jsonobject1 = new JSONObject();
                jsonobject1.putOpt(s1, obj1);
                return jsonobject1;
            } else
            {
                throw new z("Got an unexpected non-JSON object.");
            }
        } else
        {
            return obj1;
        }
    }

    public static String a(Context context)
    {
        String s;
        ApplicationInfo applicationinfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (applicationinfo.metaData == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        s = applicationinfo.metaData.getString("com.facebook.sdk.ApplicationId");
        return s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        return null;
    }

    public static String a(InputStream inputstream)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        InputStreamReader inputstreamreader = new InputStreamReader(bufferedinputstream);
        StringBuilder stringbuilder;
        char ac[];
        stringbuilder = new StringBuilder();
        ac = new char[2048];
_L3:
        int i = inputstreamreader.read(ac);
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append(ac, 0, i);
          goto _L3
        Exception exception;
        exception;
        Object obj = bufferedinputstream;
_L5:
        a(((Closeable) (obj)));
        a(((Closeable) (inputstreamreader)));
        throw exception;
_L2:
        String s = stringbuilder.toString();
        a(((Closeable) (bufferedinputstream)));
        a(((Closeable) (inputstreamreader)));
        return s;
        exception;
        inputstreamreader = null;
        obj = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = bufferedinputstream;
        inputstreamreader = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static transient Collection a(Object aobj[])
    {
        return Collections.unmodifiableCollection(Arrays.asList(aobj));
    }

    public static void a()
    {
        com.instagram.common.s.b.b();
    }

    private static void a(Context context, String s)
    {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookiemanager = CookieManager.getInstance();
        String s1 = cookiemanager.getCookie(s);
        if (s1 == null)
        {
            return;
        }
        String as[] = s1.split(";");
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            String as1[] = as[j].split("=");
            if (as1.length > 0)
            {
                cookiemanager.setCookie(s, (new StringBuilder()).append(as1[0].trim()).append("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;").toString());
            }
        }

        cookiemanager.removeExpiredCookie();
    }

    public static void a(Bundle bundle, String s, Object obj)
    {
        if (obj instanceof String)
        {
            bundle.putString(s, (String)obj);
            return;
        }
        if (obj instanceof Parcelable)
        {
            bundle.putParcelable(s, (Parcelable)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            bundle.putByteArray(s, (byte[])(byte[])obj);
            return;
        } else
        {
            throw new z("attempted to add unsupported type to Bundle");
        }
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        IOException ioexception;
        ioexception;
    }

    public static void a(Exception exception)
    {
        if (com.instagram.common.s.b.b())
        {
            (new StringBuilder()).append(exception.getClass().getSimpleName()).append(": ").append(exception.getMessage());
        }
    }

    public static void a(URLConnection urlconnection)
    {
        if (urlconnection instanceof HttpURLConnection)
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
    }

    public static boolean a(String s)
    {
        return s == null || s.length() == 0;
    }

    public static boolean a(Collection collection)
    {
        return collection == null || collection.size() == 0;
    }

    public static boolean a(Collection collection, Collection collection1)
    {
label0:
        {
            boolean flag;
label1:
            {
                if (collection1 != null && collection1.size() != 0)
                {
                    break label0;
                }
                if (collection != null)
                {
                    int i = collection.size();
                    flag = false;
                    if (i != 0)
                    {
                        break label1;
                    }
                }
                flag = true;
            }
            return flag;
        }
        HashSet hashset = new HashSet(collection1);
        for (Iterator iterator = collection.iterator(); iterator.hasNext();)
        {
            if (!hashset.contains(iterator.next()))
            {
                return false;
            }
        }

        return true;
    }

    static String b(String s)
    {
        MessageDigest messagedigest;
        byte abyte0[];
        StringBuilder stringbuilder;
        int i;
        try
        {
            messagedigest = MessageDigest.getInstance("MD5");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return null;
        }
        messagedigest.update(s.getBytes());
        abyte0 = messagedigest.digest();
        stringbuilder = new StringBuilder();
        i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            byte byte0 = abyte0[j];
            stringbuilder.append(Integer.toHexString(0xf & byte0 >> 4));
            stringbuilder.append(Integer.toHexString(0xf & byte0 >> 0));
        }

        return stringbuilder.toString();
    }

    public static void b(Context context)
    {
        a(context, "facebook.com");
        a(context, ".facebook.com");
        a(context, "https://facebook.com");
        a(context, "https://.facebook.com");
    }

    public static boolean c(String s)
    {
label0:
        {
            boolean flag1;
            synchronized (a)
            {
                if (!s.equals(c))
                {
                    break label0;
                }
                flag1 = b;
            }
            return flag1;
        }
        com.facebook.h.b b1;
        Object obj1;
        Bundle bundle = new Bundle();
        bundle.putString("fields", "supports_attribution");
        bc bc1 = bc.a(s);
        bc1.a(bundle);
        b1 = bc1.b().b();
        obj1 = Boolean.valueOf(false);
        if (b1 == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        obj1 = b1.e();
        if (!(obj1 instanceof Boolean))
        {
            obj1 = Boolean.valueOf(false);
        }
        c = s;
        boolean flag;
        if (((Boolean)obj1).booleanValue())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        obj;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        throw exception;
    }

}
