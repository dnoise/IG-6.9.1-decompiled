// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.g.t;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            ae, ad, af, az, 
//            z

public final class ac
{

    private static final ae a = new ae(200, 299, (byte)0);
    private static final ae b = new ae(200, 299, (byte)0);
    private static final ae c = new ae(400, 499, (byte)0);
    private static final ae d = new ae(500, 599, (byte)0);
    private final int e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final String k;
    private final String l;
    private final JSONObject m;
    private final JSONObject n;
    private final Object o;
    private final HttpURLConnection p;
    private final z q;

    private ac(int i1, int j1, int k1, String s, String s1, JSONObject jsonobject, JSONObject jsonobject1, 
            Object obj, HttpURLConnection httpurlconnection)
    {
        this(i1, j1, k1, s, s1, jsonobject, jsonobject1, obj, httpurlconnection, null);
    }

    private ac(int i1, int j1, int k1, String s, String s1, JSONObject jsonobject, JSONObject jsonobject1, 
            Object obj, HttpURLConnection httpurlconnection, z z1)
    {
        boolean flag;
        int l1;
        int i2;
        flag = false;
        super();
        h = i1;
        i = j1;
        j = k1;
        k = s;
        l = s1;
        n = jsonobject;
        m = jsonobject1;
        o = obj;
        p = httpurlconnection;
        boolean flag1;
        if (z1 != null)
        {
            q = z1;
            flag1 = true;
        } else
        {
            q = new af(this, s1);
            flag1 = false;
        }
        if (!flag1) goto _L2; else goto _L1
_L1:
        l1 = ad.h;
        i2 = 0;
_L4:
        g = l1;
        e = i2;
        f = flag;
        return;
_L2:
        if (j1 == 1 || j1 == 2)
        {
            l1 = ad.d;
            i2 = 0;
        } else
        if (j1 == 4 || j1 == 17)
        {
            l1 = ad.e;
            flag = false;
            i2 = 0;
        } else
        if (j1 == 10 || a.a(j1))
        {
            l1 = ad.c;
            i2 = az.com_facebook_requesterror_permissions;
            flag = false;
        } else
        if (j1 == 102 || j1 == 190)
        {
            if (k1 == 459 || k1 == 464)
            {
                l1 = ad.a;
                i2 = az.com_facebook_requesterror_web_login;
                flag = true;
            } else
            {
                l1 = ad.b;
                if (k1 == 458 || k1 == 463)
                {
                    i2 = az.com_facebook_requesterror_relogin;
                    flag = false;
                } else
                if (k1 == 460)
                {
                    i2 = az.com_facebook_requesterror_password_changed;
                    flag = false;
                } else
                {
                    i2 = az.com_facebook_requesterror_reconnect;
                    flag = true;
                }
            }
        } else
        {
            flag = false;
            i2 = 0;
            l1 = 0;
        }
        if (l1 == 0)
        {
            if (c.a(i1))
            {
                l1 = ad.g;
            } else
            if (d.a(i1))
            {
                l1 = ad.d;
            } else
            {
                l1 = ad.f;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public ac(int i1, String s, String s1)
    {
        this(-1, i1, -1, s, s1, null, null, null, null, null);
    }

    ac(HttpURLConnection httpurlconnection, Exception exception)
    {
        z z1;
        if (exception instanceof z)
        {
            z1 = (z)exception;
        } else
        {
            z1 = new z(exception);
        }
        this(-1, -1, -1, null, null, null, null, null, httpurlconnection, z1);
    }

    static ac a(JSONObject jsonobject, Object obj, HttpURLConnection httpurlconnection)
    {
        if (!jsonobject.has("code")) goto _L2; else goto _L1
_L1:
        int i1;
        Object obj1;
        i1 = jsonobject.getInt("code");
        obj1 = t.a(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
        if (obj1 == null) goto _L4; else goto _L3
_L3:
        if (!(obj1 instanceof JSONObject)) goto _L4; else goto _L5
_L5:
        JSONObject jsonobject2 = (JSONObject)obj1;
        if (!jsonobject2.has("error")) goto _L7; else goto _L6
_L6:
        String s1;
        int k1;
        String s2;
        int i2;
        JSONObject jsonobject3 = (JSONObject)t.a(jsonobject2, "error", null);
        s2 = jsonobject3.optString("type", null);
        s1 = jsonobject3.optString("message", null);
        i2 = jsonobject3.optInt("code", -1);
        k1 = jsonobject3.optInt("error_subcode", -1);
        String s;
        int l1;
        boolean flag;
        flag = true;
        l1 = i2;
        s = s2;
_L16:
        if (!flag) goto _L4; else goto _L8
_L8:
        return new ac(i1, l1, k1, s, s1, jsonobject2, jsonobject, obj, httpurlconnection);
_L7:
        if (!jsonobject2.has("error_code") && !jsonobject2.has("error_msg") && !jsonobject2.has("error_reason")) goto _L10; else goto _L9
_L9:
        int j1;
        s = jsonobject2.optString("error_reason", null);
        s1 = jsonobject2.optString("error_msg", null);
        j1 = jsonobject2.optInt("error_code", -1);
        k1 = jsonobject2.optInt("error_subcode", -1);
        l1 = j1;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        if (b.a(i1)) goto _L2; else goto _L11
_L11:
        if (!jsonobject.has("body")) goto _L13; else goto _L12
_L12:
        JSONObject jsonobject1 = (JSONObject)t.a(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
_L14:
        ac ac1 = new ac(i1, -1, -1, null, null, jsonobject1, jsonobject, obj, httpurlconnection);
        return ac1;
        JSONException jsonexception;
        jsonexception;
_L2:
        return null;
_L13:
        jsonobject1 = null;
          goto _L14
_L10:
        flag = false;
        l1 = 0;
        k1 = 0;
        s = null;
        s1 = null;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public final int a()
    {
        return h;
    }

    public final int b()
    {
        return i;
    }

    public final String c()
    {
        return k;
    }

    public final String d()
    {
        if (l != null)
        {
            return l;
        } else
        {
            return q.getLocalizedMessage();
        }
    }

    public final z e()
    {
        return q;
    }

    public final String toString()
    {
        return (new StringBuilder("{HttpStatus: ")).append(h).append(", errorCode: ").append(i).append(", errorType: ").append(k).append(", errorMessage: ").append(l).append("}").toString();
    }

}
