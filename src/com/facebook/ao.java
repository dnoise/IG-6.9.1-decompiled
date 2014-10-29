// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.facebook.g.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook:
//            bo

final class ao
{

    static Intent a(Context context)
    {
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.platform.TokenRefreshService");
        return a(context, intent);
    }

    static Intent a(Context context, Intent intent)
    {
        ResolveInfo resolveinfo = context.getPackageManager().resolveService(intent, 0);
        if (resolveinfo == null)
        {
            intent = null;
        } else
        if (!a(context, resolveinfo.serviceInfo.packageName))
        {
            return null;
        }
        return intent;
    }

    static Intent a(Context context, String s, ArrayList arraylist, String s1)
    {
        return b(context, (new Intent()).setAction("com.facebook.platform.PLATFORM_ACTIVITY").addCategory("android.intent.category.DEFAULT").putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0x133060d).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", "com.facebook.platform.action.request.LOGIN_DIALOG").putExtra("com.facebook.platform.extra.APPLICATION_ID", s).putStringArrayListExtra("com.facebook.platform.extra.PERMISSIONS", a(arraylist)).putExtra("com.facebook.platform.extra.WRITE_PRIVACY", a(s1)));
    }

    static Intent a(Context context, String s, List list)
    {
        Intent intent = (new Intent()).setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth").putExtra("client_id", s);
        if (!t.a(list))
        {
            intent.putExtra("scope", TextUtils.join(",", list));
        }
        return b(context, intent);
    }

    private static String a(String s)
    {
        if (t.a(s))
        {
            s = "SELF";
        }
        return s;
    }

    private static ArrayList a(ArrayList arraylist)
    {
        if (!t.a(arraylist)) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1 = new ArrayList();
_L6:
        arraylist1.add("basic_info");
        arraylist = arraylist1;
_L4:
        return arraylist;
_L2:
        Iterator iterator = arraylist.iterator();
label0:
        do
        {
label1:
            {
                if (!iterator.hasNext())
                {
                    break label1;
                }
                String s = (String)iterator.next();
                if (bo.a(s))
                {
                    continue;
                }
                if ("basic_info".equals(s))
                {
                    return arraylist;
                }
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        arraylist1 = new ArrayList(arraylist);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static boolean a(Context context, String s)
    {
        PackageInfo packageinfo;
        Signature asignature[];
        int i;
        int j;
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s, 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        asignature = packageinfo.signatures;
        i = asignature.length;
        j = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (j < i)
                {
                    if (!asignature[j].toCharsString().equals("30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    static boolean a(Intent intent)
    {
        int i = intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        String s = intent.getStringExtra("com.facebook.platform.status.ERROR_TYPE");
        boolean flag = false;
        if (0x133060d == i)
        {
            boolean flag1 = "ServiceDisabled".equals(s);
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    private static Intent b(Context context, Intent intent)
    {
        if (intent == null)
        {
            intent = null;
        } else
        {
            ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0);
            if (resolveinfo == null)
            {
                return null;
            }
            if (!a(context, resolveinfo.activityInfo.packageName))
            {
                return null;
            }
        }
        return intent;
    }
}
