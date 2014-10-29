// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.b:
//            m, c, j, d, 
//            e, i, a, g, 
//            f

public final class b
{

    public static final Uri a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    protected static String b = "https://m.facebook.com/dialog/";
    protected static String c = "https://graph.facebook.com/";
    protected static String d = "https://api.facebook.com/restserver.php";
    private String e;
    private long f;
    private long g;
    private String h;
    private Activity i;
    private String j[];
    private int k;
    private e l;
    private final long m = 0x5265c00L;
    private boolean n;
    private d o;

    public b(String s)
    {
        e = null;
        f = 0L;
        g = 0L;
        n = true;
        o = null;
        if (s == null)
        {
            throw new IllegalArgumentException("You must specify your application ID when instantiating a Facebook object. See README for details.");
        } else
        {
            h = s;
            return;
        }
    }

    static e a(b b1)
    {
        return b1.l;
    }

    public static String a(ContentResolver contentresolver)
    {
        String as[] = {
            "aid"
        };
        Cursor cursor = contentresolver.query(a, as, null, null, null);
        if (cursor == null || !cursor.moveToFirst())
        {
            return null;
        } else
        {
            return cursor.getString(cursor.getColumnIndex("aid"));
        }
    }

    private String a(String s, Bundle bundle)
    {
        return a(s, bundle, "GET");
    }

    private String a(String s, Bundle bundle, String s1)
    {
        bundle.putString("format", "json");
        if (b())
        {
            bundle.putString("access_token", c());
        }
        String s2;
        if (s != null)
        {
            s2 = (new StringBuilder()).append(c).append(s).toString();
        } else
        {
            s2 = d;
        }
        return com.facebook.b.m.a(s2, s1, bundle);
    }

    private void a(Activity activity, String as[])
    {
        Bundle bundle = new Bundle();
        if (as.length > 0)
        {
            bundle.putString("scope", TextUtils.join(",", as));
        }
        CookieSyncManager.createInstance(activity);
        a(((Context) (activity)), "oauth", bundle, ((e) (new c(this))));
    }

    private void a(Context context, String s, Bundle bundle, e e1)
    {
        String s1 = (new StringBuilder()).append(b).append(s).toString();
        bundle.putString("display", "touch");
        bundle.putString("redirect_uri", "fbconnect://success");
        String s2;
        if (s.equals("oauth"))
        {
            bundle.putString("type", "user_agent");
            bundle.putString("client_id", h);
        } else
        {
            bundle.putString("app_id", h);
        }
        if (b())
        {
            bundle.putString("access_token", c());
        }
        s2 = (new StringBuilder()).append(s1).append("?").append(com.facebook.b.m.a(bundle)).toString();
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0)
        {
            com.facebook.b.m.a(context, "Error", "Application requires permission to access the Internet");
            return;
        } else
        {
            (new j(context, s2, e1)).show();
            return;
        }
    }

    static void a(b b1, String s, Context context)
    {
        b(b1, s, context);
    }

    private static boolean a(Context context, Intent intent)
    {
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveinfo == null)
        {
            return false;
        } else
        {
            return a(context, resolveinfo.activityInfo.packageName);
        }
    }

    private static boolean a(Context context, String s)
    {
        PackageInfo packageinfo;
        Signature asignature[];
        int i1;
        int j1;
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s, 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        asignature = packageinfo.signatures;
        i1 = asignature.length;
        j1 = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j1 < i1)
                {
                    if (!asignature[j1].toCharsString().equals("30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while (true);
    }

    private boolean a(Fragment fragment, String s, String as[], int i1)
    {
        boolean flag = true;
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
        intent.putExtra("client_id", s);
        if (as.length > 0)
        {
            intent.putExtra("scope", TextUtils.join(",", as));
        }
        if (!a(((Context) (fragment.l())), intent))
        {
            return false;
        }
        i = fragment.l();
        j = as;
        k = 32665;
        try
        {
            fragment.a(intent, 32665);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            flag = false;
        }
        return flag;
    }

    static String b(b b1)
    {
        return b1.e;
    }

    private void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        d d1 = o;
        d d2;
        d2 = null;
        if (d1 != null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        boolean flag = f();
        d2 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        String s = h;
        d2 = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        d2 = new d(this, s, context);
        o = d2;
        this;
        JVM INSTR monitorexit ;
        if (d2 != null)
        {
            d2.execute(new Void[0]);
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(Fragment fragment, String as[], e e1)
    {
        l = e1;
        b(fragment.n());
        if (!a(fragment, h, as, 32665))
        {
            a(fragment.l(), as);
        }
    }

    private static void b(b b1, String s, Context context)
    {
        String s1 = a(context.getContentResolver());
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
        String s2 = (new StringBuilder()).append(s).append("ping").toString();
        if (sharedpreferences.getLong(s2, 0L) == 0L && s1 != null)
        {
            Bundle bundle = new Bundle();
            bundle.putString("fields", "supports_attribution");
            Boolean boolean1 = (Boolean)com.facebook.b.m.b(b1.a(s, bundle)).get("supports_attribution");
            if (!(boolean1 instanceof Boolean))
            {
                throw new JSONException(String.format("%s contains %s instead of a Boolean", new Object[] {
                    "supports_attribution", boolean1
                }));
            }
            if (((Boolean)boolean1).booleanValue())
            {
                Bundle bundle1 = new Bundle();
                bundle1.putString("event", "MOBILE_APP_INSTALL");
                bundle1.putString("attribution", s1);
                b1.a(String.format("%s/activities", new Object[] {
                    s
                }), bundle1, "POST");
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putLong(s2, System.currentTimeMillis());
                editor.commit();
            }
        }
    }

    private static boolean b(Context context, Intent intent)
    {
        ResolveInfo resolveinfo = context.getPackageManager().resolveService(intent, 0);
        if (resolveinfo == null)
        {
            return false;
        } else
        {
            return a(context, resolveinfo.serviceInfo.packageName);
        }
    }

    static d c(b b1)
    {
        b1.o = null;
        return null;
    }

    private boolean f()
    {
        return n;
    }

    public final void a(int i1, int j1, Intent intent)
    {
        if (i1 != k) goto _L2; else goto _L1
_L1:
        if (j1 != -1) goto _L4; else goto _L3
_L3:
        String s;
        s = intent.getStringExtra("error");
        if (s == null)
        {
            s = intent.getStringExtra("error_type");
        }
        if (s == null) goto _L6; else goto _L5
_L5:
        if (!s.equals("service_disabled") && !s.equals("AndroidAuthKillSwitchException")) goto _L8; else goto _L7
_L7:
        com.facebook.b.m.a();
        a(i, j);
_L2:
        return;
_L8:
        if (s.equals("access_denied") || s.equals("OAuthAccessDeniedException"))
        {
            com.facebook.b.m.a();
            l.a();
            return;
        }
        String s1 = intent.getStringExtra("error_description");
        if (s1 != null)
        {
            s = (new StringBuilder()).append(s).append(":").append(s1).toString();
        }
        (new StringBuilder("Login failed: ")).append(s);
        com.facebook.b.m.a();
        l.a(new i(s));
        return;
_L6:
        a(intent.getStringExtra("access_token"));
        b(intent.getStringExtra("expires_in"));
        if (b())
        {
            (new StringBuilder("Login Success! access_token=")).append(c()).append(" expires=").append(d());
            com.facebook.b.m.a();
            l.a(intent.getExtras());
            return;
        } else
        {
            l.a(new i("Failed to receive access token."));
            return;
        }
_L4:
        if (j1 == 0)
        {
            if (intent != null)
            {
                (new StringBuilder("Login failed: ")).append(intent.getStringExtra("error"));
                com.facebook.b.m.a();
                l.a(new a(intent.getStringExtra("error"), intent.getIntExtra("error_code", -1), intent.getStringExtra("failing_url")));
                return;
            } else
            {
                com.facebook.b.m.a();
                l.a();
                return;
            }
        }
        if (true) goto _L2; else goto _L9
_L9:
    }

    public final void a(long l1)
    {
        g = l1;
    }

    public final void a(Fragment fragment, String as[], e e1)
    {
        b(fragment, as, e1);
    }

    public final void a(e e1)
    {
        l = e1;
    }

    public final void a(String s)
    {
        e = s;
        f = System.currentTimeMillis();
    }

    public final void a(String s, long l1, long l2)
    {
        e = s;
        g = l1;
        f = l2;
    }

    public final boolean a()
    {
        return b() && System.currentTimeMillis() - f >= 0x5265c00L;
    }

    public final boolean a(Context context)
    {
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth");
        return a(context, intent);
    }

    public final boolean a(Context context, f f1)
    {
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.platform.TokenRefreshService");
        if (!b(context, intent))
        {
            return false;
        } else
        {
            return context.bindService(intent, new g(this, context, f1), 1);
        }
    }

    public final void b(String s)
    {
        if (s != null)
        {
            long l1;
            if (s.equals("0"))
            {
                l1 = 0L;
            } else
            {
                l1 = System.currentTimeMillis() + 1000L * Long.parseLong(s);
            }
            a(l1);
        }
    }

    public final boolean b()
    {
        return c() != null && (d() == 0L || System.currentTimeMillis() < d());
    }

    public final String c()
    {
        return e;
    }

    public final long d()
    {
        return g;
    }

    public final long e()
    {
        return f;
    }

}
