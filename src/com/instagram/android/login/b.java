// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import android.widget.TextView;
import com.instagram.common.y.e;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.instagram.android.login:
//            c

public final class b
{

    protected static final List a = Arrays.asList(new String[] {
        "hotmil.com", "hotmai.com", "homail.com", "hitmail.com", "hotmail.co", "hotmal.com", "hormail.com", "hotnail.com", "hotmail.con", "hotmsil.com", 
        "hotmaill.com", "hotmail.cim", "hoymail.com", "hotmaol.com", "hotmail.com.", "hotmaik.com", "htmail.com", "hotmaul.com", "hotmail.comm", "hotamail.com", 
        "hotmeil.com", "hotail.com", "gotmail.com", "jotmail.com", "hatmail.com", "hptmail.com", "hotmaii.com", "hotmail.cm", "hotmail.clm", "hotmail.come", 
        "hotmail.co.", "hotmail.cpm", "hotmaiil.com", "hotmail.comi", "hotmaim.com", "hotmaio.com", "hotmail.om", "hotmail.col", "hotmail.como", "hotmmail.com", 
        "hotmail.coml", "hotmailm.com", "hottmail.com", "hotimail.com", "hootmail.com", "otmail.com", "hotmail.coma", "hotmall.com", "botmail.com", "hotmail.comp", 
        "hotmail.comu", "hotmail.cok", "hogmail.com", "hotmaip.com", "hotmail.com.com", "hotmial.com", "hotamil.com", "hotmail.comcom", "hotmali.com", "hotma.com", 
        "hotmel.com", "hotmile.com"
    });
    protected static final List b = Arrays.asList(new String[] {
        "gmai.com", "gmail.co", "gmail.con", "gmil.com", "gmal.com", "gmail.cim", "gmsil.com", "gmaill.com", "gamail.com", "hmail.com", 
        "gemail.com", "gmail.com.", "gimail.com", "gmail.comm", "g-mail.com", "g.mail.com", "tmail.com", "gmaik.com", "gail.com", "gmaol.com", 
        "gmaul.com", "fmail.com", "gmail.come", "jmail.com", "gmail.cm", "gmail.clm", "gmail.cpm", "gmeil.com", "gmail.co.", "gmail.om", 
        "gmail.col", "gmall.com", "gmail.comi", "gmaiil.com", "gmail.coml", "gmaim.com", "gmail.como", "gnail.com", "gmail.com.com", "gamil.com", 
        "gmail.net", "gmial.com", "gmail.comcom", "gmali.com"
    });
    protected static final List c = Arrays.asList(new String[] {
        "yahoo.co", "yaho.com", "yahoo.con", "yhoo.com", "yahho.com", "yahooo.com", "tahoo.com", "uahoo.com", "yahoo.comm", "yaoo.com", 
        "yahoo.cim", "yahoo.com.", "yahoo.cm", "yahoo.come", "yahoi.com", "yahool.com", "yohoo.com", "yahoo.cpm", "yahoo.co.", "yahop.com", 
        "yahoo.om", "yahhoo.com", "yahoo.clm", "yajoo.com", "yaboo.com", "yahio.com", "ahoo.com", "yahpo.com", "yahoo.comi", "yagoo.com", 
        "yahoom.com", "yahoo.cok", "yahol.com", "yahoo.coom", "yahoo.com.com", "yhaoo.com", "yahoo.comcom"
    });
    protected static final List d = Arrays.asList(new String[] {
        "ail.com", "aol.con", "ol.com", "apl.com", "sol.com"
    });
    protected static final List e = Arrays.asList(new String[] {
        "hotmail.co.ul", "homail.co.uk", "hitmail.co.uk", "hotmail.co.ik", "hotnail.co.uk", "hotmail.co.uj", "hotmai.co.uk", "hormail.co.uk", "hotmail.com.uk"
    });
    protected static final List f = Arrays.asList(new String[] {
        "live.con"
    });
    protected static final List g = Arrays.asList(new String[] {
        "mail.ri", "mai.ru", "mail.ry", "maul.ru", "mail.tu"
    });
    protected static final List h = Arrays.asList(new String[] {
        "hotmail.fi", "hotmail.fe", "hotmai.fr", "hotmail.ft", "homail.fr", "hormail.fr", "hotmail.dr", "hotmail.ff"
    });
    protected static final List i = Arrays.asList(new String[] {
        "man.com", "msm.com", "msn.con"
    });
    protected static final List j = Arrays.asList(new String[] {
        "comast.net", "concast.net", "comcast.ne", "comcast.met", "comcat.net", "comcast.ney", "comcast.ner", "comcas.net"
    });

    public static String a(TextView textview)
    {
        return a(textview.getText().toString());
    }

    private static String a(String s)
    {
        String as[] = s.split("@");
        String s1;
        if (as.length == 2)
        {
            if ((s1 = b(as[1])) != null)
            {
                Object aobj[] = new Object[2];
                aobj[0] = as[0];
                aobj[1] = s1;
                return com.instagram.common.y.e.a("%s@%s", aobj);
            }
        }
        return null;
    }

    private static String b(String s)
    {
        c ac[] = com.instagram.android.login.c.values();
        int k = ac.length;
        for (int l = 0; l < k; l++)
        {
            c c1 = ac[l];
            if (c1.l.contains(s))
            {
                return c1.k;
            }
        }

        return null;
    }

}
