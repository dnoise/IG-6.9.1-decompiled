// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.g.n;
import com.facebook.g.t;
import com.facebook.g.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            cm, ak

public class cl extends cm
{

    private static final String a = com/facebook/cl.getSimpleName();
    private String b;
    private SharedPreferences c;

    public cl(Context context)
    {
        this(context, (byte)0);
    }

    private cl(Context context, byte byte0)
    {
        u.a(context, "context");
        boolean flag = t.a(null);
        String s = null;
        if (flag)
        {
            s = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        b = s;
        Context context1 = context.getApplicationContext();
        if (context1 != null)
        {
            context = context1;
        }
        c = context.getSharedPreferences(b, 0);
    }

    private void a(String s, Bundle bundle)
    {
        int i;
        JSONObject jsonobject;
        String s1;
        i = 0;
        jsonobject = new JSONObject(c.getString(s, "{}"));
        s1 = jsonobject.getString("valueType");
        if (!s1.equals("bool")) goto _L2; else goto _L1
_L1:
        bundle.putBoolean(s, jsonobject.getBoolean("value"));
_L4:
        return;
_L2:
        if (s1.equals("bool[]"))
        {
            JSONArray jsonarray8 = jsonobject.getJSONArray("value");
            boolean aflag[];
            for (aflag = new boolean[jsonarray8.length()]; i < aflag.length; i++)
            {
                aflag[i] = jsonarray8.getBoolean(i);
            }

            bundle.putBooleanArray(s, aflag);
            return;
        }
        if (s1.equals("byte"))
        {
            bundle.putByte(s, (byte)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("byte[]"))
        {
            JSONArray jsonarray7 = jsonobject.getJSONArray("value");
            byte abyte0[];
            for (abyte0 = new byte[jsonarray7.length()]; i < abyte0.length; i++)
            {
                abyte0[i] = (byte)jsonarray7.getInt(i);
            }

            bundle.putByteArray(s, abyte0);
            return;
        }
        if (s1.equals("short"))
        {
            bundle.putShort(s, (short)jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("short[]"))
        {
            JSONArray jsonarray6 = jsonobject.getJSONArray("value");
            short aword0[];
            for (aword0 = new short[jsonarray6.length()]; i < aword0.length; i++)
            {
                aword0[i] = (short)jsonarray6.getInt(i);
            }

            bundle.putShortArray(s, aword0);
            return;
        }
        if (s1.equals("int"))
        {
            bundle.putInt(s, jsonobject.getInt("value"));
            return;
        }
        if (s1.equals("int[]"))
        {
            JSONArray jsonarray5 = jsonobject.getJSONArray("value");
            int ai[];
            for (ai = new int[jsonarray5.length()]; i < ai.length; i++)
            {
                ai[i] = jsonarray5.getInt(i);
            }

            bundle.putIntArray(s, ai);
            return;
        }
        if (s1.equals("long"))
        {
            bundle.putLong(s, jsonobject.getLong("value"));
            return;
        }
        if (s1.equals("long[]"))
        {
            JSONArray jsonarray4 = jsonobject.getJSONArray("value");
            long al[];
            for (al = new long[jsonarray4.length()]; i < al.length; i++)
            {
                al[i] = jsonarray4.getLong(i);
            }

            bundle.putLongArray(s, al);
            return;
        }
        if (s1.equals("float"))
        {
            bundle.putFloat(s, (float)jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("float[]"))
        {
            JSONArray jsonarray3 = jsonobject.getJSONArray("value");
            float af[];
            for (af = new float[jsonarray3.length()]; i < af.length; i++)
            {
                af[i] = (float)jsonarray3.getDouble(i);
            }

            bundle.putFloatArray(s, af);
            return;
        }
        if (s1.equals("double"))
        {
            bundle.putDouble(s, jsonobject.getDouble("value"));
            return;
        }
        if (s1.equals("double[]"))
        {
            JSONArray jsonarray2 = jsonobject.getJSONArray("value");
            double ad[];
            for (ad = new double[jsonarray2.length()]; i < ad.length; i++)
            {
                ad[i] = jsonarray2.getDouble(i);
            }

            bundle.putDoubleArray(s, ad);
            return;
        }
        if (!s1.equals("char"))
        {
            break; /* Loop/switch isn't completed */
        }
        String s4 = jsonobject.getString("value");
        if (s4 != null && s4.length() == 1)
        {
            bundle.putChar(s, s4.charAt(0));
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (s1.equals("char[]"))
        {
            JSONArray jsonarray1 = jsonobject.getJSONArray("value");
            char ac[] = new char[jsonarray1.length()];
            for (int l = 0; l < ac.length; l++)
            {
                String s3 = jsonarray1.getString(l);
                if (s3 != null && s3.length() == 1)
                {
                    ac[l] = s3.charAt(0);
                }
            }

            bundle.putCharArray(s, ac);
            return;
        }
        if (s1.equals("string"))
        {
            bundle.putString(s, jsonobject.getString("value"));
            return;
        }
        if (s1.equals("stringList"))
        {
            JSONArray jsonarray = jsonobject.getJSONArray("value");
            int j = jsonarray.length();
            ArrayList arraylist = new ArrayList(j);
            int k = 0;
            while (k < j) 
            {
                Object obj = jsonarray.get(k);
                String s2;
                if (obj == JSONObject.NULL)
                {
                    s2 = null;
                } else
                {
                    s2 = (String)obj;
                }
                arraylist.add(k, s2);
                k++;
            }
            bundle.putStringArrayList(s, arraylist);
            return;
        }
        if (s1.equals("enum"))
        {
            try
            {
                bundle.putSerializable(s, Enum.valueOf(Class.forName(jsonobject.getString("enumType")), jsonobject.getString("value")));
                return;
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                return;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                return;
            }
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private static void a(String s, Bundle bundle, android.content.SharedPreferences.Editor editor)
    {
        int i = 0;
        Object obj = bundle.get(s);
        if (obj != null)
        {
            JSONObject jsonobject = new JSONObject();
            JSONArray jsonarray1;
            String s1;
            if (obj instanceof Byte)
            {
                jsonobject.put("value", ((Byte)obj).intValue());
                jsonarray1 = null;
                s1 = "byte";
            } else
            if (obj instanceof Short)
            {
                jsonobject.put("value", ((Short)obj).intValue());
                s1 = "short";
                jsonarray1 = null;
            } else
            if (obj instanceof Integer)
            {
                jsonobject.put("value", ((Integer)obj).intValue());
                s1 = "int";
                jsonarray1 = null;
            } else
            if (obj instanceof Long)
            {
                jsonobject.put("value", ((Long)obj).longValue());
                s1 = "long";
                jsonarray1 = null;
            } else
            if (obj instanceof Float)
            {
                jsonobject.put("value", ((Float)obj).doubleValue());
                s1 = "float";
                jsonarray1 = null;
            } else
            if (obj instanceof Double)
            {
                jsonobject.put("value", ((Double)obj).doubleValue());
                s1 = "double";
                jsonarray1 = null;
            } else
            if (obj instanceof Boolean)
            {
                jsonobject.put("value", ((Boolean)obj).booleanValue());
                s1 = "bool";
                jsonarray1 = null;
            } else
            if (obj instanceof Character)
            {
                jsonobject.put("value", obj.toString());
                s1 = "char";
                jsonarray1 = null;
            } else
            if (obj instanceof String)
            {
                jsonobject.put("value", (String)obj);
                s1 = "string";
                jsonarray1 = null;
            } else
            if (obj instanceof Enum)
            {
                jsonobject.put("value", obj.toString());
                jsonobject.put("enumType", obj.getClass().getName());
                s1 = "enum";
                jsonarray1 = null;
            } else
            {
                JSONArray jsonarray = new JSONArray();
                if (obj instanceof byte[])
                {
                    s1 = "byte[]";
                    byte abyte0[] = (byte[])(byte[])obj;
                    for (int i2 = abyte0.length; i < i2; i++)
                    {
                        jsonarray.put(abyte0[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof short[])
                {
                    s1 = "short[]";
                    short aword0[] = (short[])(short[])obj;
                    for (int l1 = aword0.length; i < l1; i++)
                    {
                        jsonarray.put(aword0[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof int[])
                {
                    s1 = "int[]";
                    int ai[] = (int[])(int[])obj;
                    for (int k1 = ai.length; i < k1; i++)
                    {
                        jsonarray.put(ai[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof long[])
                {
                    s1 = "long[]";
                    long al[] = (long[])(long[])obj;
                    for (int j1 = al.length; i < j1; i++)
                    {
                        jsonarray.put(al[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof float[])
                {
                    s1 = "float[]";
                    float af[] = (float[])(float[])obj;
                    for (int i1 = af.length; i < i1; i++)
                    {
                        jsonarray.put(af[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof double[])
                {
                    s1 = "double[]";
                    double ad[] = (double[])(double[])obj;
                    for (int l = ad.length; i < l; i++)
                    {
                        jsonarray.put(ad[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof boolean[])
                {
                    s1 = "bool[]";
                    boolean aflag[] = (boolean[])(boolean[])obj;
                    for (int k = aflag.length; i < k; i++)
                    {
                        jsonarray.put(aflag[i]);
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof char[])
                {
                    s1 = "char[]";
                    char ac[] = (char[])(char[])obj;
                    for (int j = ac.length; i < j; i++)
                    {
                        jsonarray.put(String.valueOf(ac[i]));
                    }

                    jsonarray1 = jsonarray;
                } else
                if (obj instanceof List)
                {
                    s1 = "stringList";
                    Object obj1;
                    for (Iterator iterator = ((List)obj).iterator(); iterator.hasNext(); jsonarray.put(obj1))
                    {
                        obj1 = (String)iterator.next();
                        if (obj1 == null)
                        {
                            obj1 = JSONObject.NULL;
                        }
                    }

                    jsonarray1 = jsonarray;
                } else
                {
                    jsonarray1 = null;
                    s1 = null;
                }
            }
            if (s1 != null)
            {
                jsonobject.put("valueType", s1);
                if (jsonarray1 != null)
                {
                    jsonobject.putOpt("value", jsonarray1);
                }
                editor.putString(s, jsonobject.toString());
                return;
            }
        }
    }

    public final Bundle a()
    {
        Bundle bundle = new Bundle();
        Iterator iterator = c.getAll().keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            try
            {
                a(s, bundle);
            }
            catch (JSONException jsonexception)
            {
                n.a(ak.d, 5, a, (new StringBuilder("Error reading cached value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
                return null;
            }
        } while (true);
        return bundle;
    }

    public final void a(Bundle bundle)
    {
        android.content.SharedPreferences.Editor editor;
        Iterator iterator;
        u.a(bundle, "bundle");
        editor = c.edit();
        iterator = bundle.keySet().iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s = (String)iterator.next();
        a(s, bundle, editor);
        if (true) goto _L4; else goto _L3
_L3:
        JSONException jsonexception;
        jsonexception;
        n.a(ak.d, 5, a, (new StringBuilder("Error processing value for key: '")).append(s).append("' -- ").append(jsonexception).toString());
_L6:
        return;
_L2:
        if (!editor.commit())
        {
            n.a(ak.d, 5, a, "SharedPreferences.Editor.commit() was not successful");
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void b()
    {
        c.edit().clear().commit();
    }

}
