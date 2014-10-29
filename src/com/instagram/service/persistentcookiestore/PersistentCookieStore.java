// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.persistentcookiestore;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import ch.boye.httpclientandroidlib.client.CookieStore;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import com.instagram.common.p.b.a;
import com.instagram.common.p.b.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.service.persistentcookiestore:
//            b, a

public final class PersistentCookieStore
    implements CookieStore, a
{

    private static PersistentCookieStore a;
    private final Map b = new ConcurrentHashMap();
    private final SharedPreferences c;
    private final CookieManager d = CookieManager.getInstance();
    private final CookieSyncManager e;

    private PersistentCookieStore(Context context)
    {
        int i = 0;
        super();
        e = CookieSyncManager.createInstance(context);
        c = context.getSharedPreferences("CookiePrefsFile2", 0);
        String s = c.getString("names", null);
        if (s != null)
        {
            String as[] = TextUtils.split(s, ",");
            for (int j = as.length; i < j; i++)
            {
                String s1 = as[i];
                String s2 = c.getString((new StringBuilder("cookie_")).append(s1).toString(), null);
                if (s2 == null)
                {
                    continue;
                }
                Cookie cookie = b(s2);
                if (cookie != null)
                {
                    b.put(s1, cookie);
                    a(cookie);
                }
            }

            clearExpired(new Date());
        }
    }

    private Cookie a(String s)
    {
        for (Iterator iterator = b.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                return (Cookie)entry.getValue();
            }
        }

        return null;
    }

    private static String a(SerializableCookie serializablecookie)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            (new ObjectOutputStream(bytearrayoutputstream)).writeObject(serializablecookie);
        }
        catch (Exception exception)
        {
            new Object[] {
                serializablecookie
            };
        }
        return a(bytearrayoutputstream.toByteArray());
    }

    private static String a(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder(2 * abyte0.length);
        int i = abyte0.length;
        for (int j = 0; j < i; j++)
        {
            int k = 0xff & abyte0[j];
            if (k < 16)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(Integer.toHexString(k));
        }

        return stringbuilder.toString().toUpperCase();
    }

    private void a(Cookie cookie)
    {
        String s = (new StringBuilder()).append(cookie.getName()).append("=").append(cookie.getValue()).append("; domain=").append(cookie.getDomain()).toString();
        d.setCookie(cookie.getDomain(), s);
    }

    static void a(PersistentCookieStore persistentcookiestore)
    {
        persistentcookiestore.f();
    }

    private static Cookie b(String s)
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(c(s));
        Cookie cookie;
        try
        {
            cookie = ((SerializableCookie)(new com.instagram.service.persistentcookiestore.b(bytearrayinputstream)).readObject()).getCookie();
        }
        catch (Exception exception)
        {
            new Object[] {
                s
            };
            return null;
        }
        return cookie;
    }

    private void b(Cookie cookie)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        editor.putString((new StringBuilder("cookie_")).append(cookie.getName()).toString(), a(new SerializableCookie(cookie)));
        editor.putString("names", TextUtils.join(",", b.keySet()));
        editor.commit();
    }

    public static PersistentCookieStore c()
    {
        com/instagram/service/persistentcookiestore/PersistentCookieStore;
        JVM INSTR monitorenter ;
        PersistentCookieStore persistentcookiestore;
        if (a == null)
        {
            a = new PersistentCookieStore(com.instagram.common.h.a.a());
            com.instagram.common.p.b.b.a().a(a);
        }
        persistentcookiestore = a;
        com/instagram/service/persistentcookiestore/PersistentCookieStore;
        JVM INSTR monitorexit ;
        return persistentcookiestore;
        Exception exception;
        exception;
        throw exception;
    }

    private static byte[] c(String s)
    {
        int i = s.length();
        byte abyte0[] = new byte[i / 2];
        for (int j = 0; j < i; j += 2)
        {
            abyte0[j / 2] = (byte)((Character.digit(s.charAt(j), 16) << 4) + Character.digit(s.charAt(j + 1), 16));
        }

        return abyte0;
    }

    private void e()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            e.sync();
        }
    }

    private void f()
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        LinkedList linkedlist = new LinkedList();
        String s;
        for (Iterator iterator = getCookies().iterator(); iterator.hasNext(); linkedlist.add(s))
        {
            Cookie cookie = (Cookie)iterator.next();
            s = cookie.getName();
            editor.putString((new StringBuilder("cookie_")).append(s).toString(), a(new SerializableCookie(cookie)));
        }

        editor.putString("names", TextUtils.join(",", linkedlist));
        editor.commit();
    }

    public final void a()
    {
        com.instagram.common.y.c.a.a().execute(new com.instagram.service.persistentcookiestore.a(this));
    }

    public final boolean a(String s, String s1)
    {
        Cookie cookie = a(s);
        return cookie != null && cookie.getValue().equals(s1);
    }

    public final void addCookie(Cookie cookie)
    {
        Cookie cookie1 = (Cookie)b.get(cookie.getName());
        b.put(cookie.getName(), cookie);
        String s = cookie.getValue();
        String s1;
        if (cookie1 == null)
        {
            s1 = null;
        } else
        {
            s1 = cookie1.getValue();
        }
        if (!s.equals(s1))
        {
            b(cookie);
        }
        a(cookie);
    }

    public final void b()
    {
    }

    public final void clear()
    {
        Set set = b.keySet();
        b.clear();
        android.content.SharedPreferences.Editor editor = c.edit();
        String s;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); editor.remove((new StringBuilder("cookie_")).append(s).toString()))
        {
            s = (String)iterator.next();
        }

        editor.remove("names");
        editor.commit();
        d.removeAllCookie();
        e();
    }

    public final boolean clearExpired(Date date)
    {
        android.content.SharedPreferences.Editor editor = c.edit();
        Iterator iterator = b.entrySet().iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            boolean flag1;
            if (((Cookie)entry.getValue()).isExpired(date))
            {
                b.remove(s);
                editor.remove((new StringBuilder("cookie_")).append(s).toString());
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        if (flag)
        {
            editor.putString("names", TextUtils.join(",", b.keySet()));
        }
        editor.commit();
        d.removeExpiredCookie();
        e();
        return flag;
    }

    public final void d()
    {
        Cookie cookie = a("mid");
        clear();
        if (cookie != null)
        {
            addCookie(cookie);
        }
    }

    public final List getCookies()
    {
        return new ArrayList(b.values());
    }

    private class SerializableCookie
        implements Serializable
    {

        private static final long serialVersionUID = 0x58765a8013aeb70cL;
        private transient BasicClientCookie clientCookie;
        private final transient Cookie cookie;

        private void readObject(ObjectInputStream objectinputstream)
        {
            clientCookie = new BasicClientCookie((String)objectinputstream.readObject(), (String)objectinputstream.readObject());
            clientCookie.setComment((String)objectinputstream.readObject());
            clientCookie.setDomain((String)objectinputstream.readObject());
            clientCookie.setExpiryDate((Date)objectinputstream.readObject());
            clientCookie.setPath((String)objectinputstream.readObject());
            clientCookie.setVersion(objectinputstream.readInt());
            clientCookie.setSecure(objectinputstream.readBoolean());
        }

        private void writeObject(ObjectOutputStream objectoutputstream)
        {
            objectoutputstream.writeObject(cookie.getName());
            objectoutputstream.writeObject(cookie.getValue());
            objectoutputstream.writeObject(cookie.getComment());
            objectoutputstream.writeObject(cookie.getDomain());
            objectoutputstream.writeObject(cookie.getExpiryDate());
            objectoutputstream.writeObject(cookie.getPath());
            objectoutputstream.writeInt(cookie.getVersion());
            objectoutputstream.writeBoolean(cookie.isSecure());
        }

        public Cookie getCookie()
        {
            Object obj = cookie;
            if (clientCookie != null)
            {
                obj = clientCookie;
            }
            return ((Cookie) (obj));
        }

        public SerializableCookie(Cookie cookie1)
        {
            cookie = cookie1;
        }
    }

}
