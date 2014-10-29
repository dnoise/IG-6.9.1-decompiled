// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.json.JSONObject;

// Referenced classes of package com.facebook.b:
//            i

public final class m
{

    private static boolean a = false;

    public static Bundle a(String s)
    {
        String s1 = s.replace("fbconnect", "http");
        Bundle bundle;
        try
        {
            URL url = new URL(s1);
            bundle = c(url.getQuery());
            bundle.putAll(c(url.getRef()));
        }
        catch (MalformedURLException malformedurlexception)
        {
            return new Bundle();
        }
        return bundle;
    }

    public static String a(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (bundle.get(s) instanceof String)
            {
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append("&");
                }
                stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(s)).append("=").append(URLEncoder.encode(bundle.getString(s))).toString());
            }
        } while (true);
        return stringbuilder.toString();
    }

    private static String a(Bundle bundle, String s)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            Object obj = bundle.get(s1);
            if (obj instanceof String)
            {
                stringbuilder.append((new StringBuilder("Content-Disposition: form-data; name=\"")).append(s1).append("\"\r\n\r\n").append((String)obj).toString());
                stringbuilder.append((new StringBuilder("\r\n--")).append(s).append("\r\n").toString());
            }
        } while (true);
        return stringbuilder.toString();
    }

    private static String a(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 1000);
        for (String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
        {
            stringbuilder.append(s);
        }

        inputstream.close();
        return stringbuilder.toString();
    }

    public static String a(String s, String s1, Bundle bundle)
    {
        if (s1.equals("GET"))
        {
            s = (new StringBuilder()).append(s).append("?").append(a(bundle)).toString();
        }
        (new StringBuilder()).append(s1).append(" URL: ").append(s);
        a();
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setRequestProperty("User-Agent", (new StringBuilder()).append(System.getProperties().getProperty("http.agent")).append(" FacebookAndroidSDK").toString());
        if (!s1.equals("GET"))
        {
            Bundle bundle1 = new Bundle();
            Iterator iterator = bundle.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s4 = (String)iterator.next();
                Object obj = bundle.get(s4);
                if (obj instanceof byte[])
                {
                    bundle1.putByteArray(s4, (byte[])(byte[])obj);
                }
            } while (true);
            if (!bundle.containsKey("method"))
            {
                bundle.putString("method", s1);
            }
            if (bundle.containsKey("access_token"))
            {
                bundle.putString("access_token", URLDecoder.decode(bundle.getString("access_token")));
            }
            httpurlconnection.setRequestMethod("POST");
            httpurlconnection.setRequestProperty("Content-Type", (new StringBuilder("multipart/form-data;boundary=")).append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").toString());
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setDoInput(true);
            httpurlconnection.setRequestProperty("Connection", "Keep-Alive");
            httpurlconnection.connect();
            BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write((new StringBuilder("--")).append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
            bufferedoutputstream.write(a(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
            bufferedoutputstream.write((new StringBuilder()).append("\r\n").append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
            if (!bundle1.isEmpty())
            {
                for (Iterator iterator1 = bundle1.keySet().iterator(); iterator1.hasNext(); bufferedoutputstream.write((new StringBuilder()).append("\r\n").append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes()))
                {
                    String s3 = (String)iterator1.next();
                    bufferedoutputstream.write((new StringBuilder("Content-Disposition: form-data; filename=\"")).append(s3).append("\"").append("\r\n").toString().getBytes());
                    bufferedoutputstream.write((new StringBuilder("Content-Type: content/unknown")).append("\r\n").append("\r\n").toString().getBytes());
                    bufferedoutputstream.write(bundle1.getByteArray(s3));
                }

            }
            bufferedoutputstream.flush();
        }
        String s2;
        try
        {
            s2 = a(httpurlconnection.getInputStream());
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return a(httpurlconnection.getErrorStream());
        }
        return s2;
    }

    public static void a()
    {
        boolean _tmp = a;
    }

    public static void a(Context context, String s, String s1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(s);
        builder.setMessage(s1);
        builder.create().show();
    }

    public static JSONObject b(String s)
    {
        if (s.equals("false"))
        {
            throw new i("request failed");
        }
        if (s.equals("true"))
        {
            s = "{value : true}";
        }
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.has("error"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("error");
            throw new i(jsonobject1.getString("message"), jsonobject1.getString("type"), 0);
        }
        if (jsonobject.has("error_code") && jsonobject.has("error_msg"))
        {
            throw new i(jsonobject.getString("error_msg"), "", Integer.parseInt(jsonobject.getString("error_code")));
        }
        if (jsonobject.has("error_code"))
        {
            throw new i("request failed", "", Integer.parseInt(jsonobject.getString("error_code")));
        }
        if (jsonobject.has("error_msg"))
        {
            throw new i(jsonobject.getString("error_msg"));
        }
        if (jsonobject.has("error_reason"))
        {
            throw new i(jsonobject.getString("error_reason"));
        } else
        {
            return jsonobject;
        }
    }

    private static Bundle c(String s)
    {
        Bundle bundle = new Bundle();
        if (s != null)
        {
            String as[] = s.split("&");
            int j = as.length;
            for (int k = 0; k < j; k++)
            {
                String as1[] = as[k].split("=");
                if (as1.length == 2)
                {
                    bundle.putString(URLDecoder.decode(as1[0]), URLDecoder.decode(as1[1]));
                }
            }

        }
        return bundle;
    }

}
