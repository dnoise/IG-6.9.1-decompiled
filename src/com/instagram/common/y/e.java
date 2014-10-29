// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class e
{

    public static final Pattern a = Pattern.compile("(@[a-zA-Z0-9_]+(\\.[a-zA-Z0-9_]+)*)", 2);
    private static final Pattern b = Pattern.compile("(#\\w+)", 2);
    private static final Pattern c = Pattern.compile("[\uD83C\uDC04\uD83C\uDD70\uD83C\uDD71\uD83C\uDD7E\uD83C\uDD7F\uD83C\uDD8E\uD83C\uDD92\uD83C\uDD94\uD83C\uDD95\uD83C\uDD97\uD83C\uDD99\uD83C\uDD9A\uD83C\uDDE7\uD83C\uDDE8\uD83C\uDDE9\uD83C\uDDEA\uD83C\uDDEA\uD83C\uDDEB\uD83C\uDDEC\uD83C\uDDEE\uD83C\uDDEF\uD83C\uDDF0\uD83C\uDDF3\uD83C\uDDF5\uD83C\uDDF7\uD83C\uDDF7\uD83C\uDDF7\uD83C\uDDF8\uD83C\uDDF8\uD83C\uDDF9\uD83C\uDDFA\uD83C\uDDFA\uD83C\uDE01\uD83C\uDE02\uD83C\uDE1A\uD83C\uDE2F\uD83C\uDE33\uD83C\uDE35\uD83C\uDE36\uD83C\uDE37\uD83C\uDE38\uD83C\uDE39\uD83C\uDE3A\uD83C\uDE50\uD83C\uDF00\uD83C\uDF02\uD83C\uDF03\uD83C\uDF04\uD83C\uDF05\uD83C\uDF06\uD83C\uDF07\uD83C\uDF08\uD83C\uDF0A\uD83C\uDF19\uD83C\uDF1F\uD83C\uDF34\uD83C\uDF35\uD83C\uDF37\uD83C\uDF38\uD83C\uDF39\uD83C\uDF3A\uD83C\uDF3B\uD83C\uDF3E\uD83C\uDF40\uD83C\uDF41\uD83C\uDF42\uD83C\uDF43\uD83C\uDF45\uD83C\uDF46\uD83C\uDF49\uD83C\uDF4A\uD83C\uDF4E\uD83C\uDF53\uD83C\uDF54\uD83C\uDF58\uD83C\uDF59\uD83C\uDF5A\uD83C\uDF5B\uD83C\uDF5C\uD83C\uDF5D\uD83C\uDF5E\uD83C\uDF5F\uD83C\uDF61\uD83C\uDF62\uD83C\uDF63\uD83C\uDF66\uD83C\uDF67\uD83C\uDF70\uD83C\uDF71\uD83C\uDF72\uD83C\uDF73\uD83C\uDF74\uD83C\uDF75\uD83C\uDF76\uD83C\uDF78\uD83C\uDF7A\uD83C\uDF7B\uD83C\uDF80\uD83C\uDF81\uD83C\uDF82\uD83C\uDF83\uD83C\uDF84\uD83C\uDF85\uD83C\uDF86\uD83C\uDF87\uD83C\uDF88\uD83C\uDF89\uD83C\uDF8C\uD83C\uDF8D\uD83C\uDF8E\uD83C\uDF8F\uD83C\uDF90\uD83C\uDF91\uD83C\uDF92\uD83C\uDF93\uD83C\uDFA1\uD83C\uDFA2\uD83C\uDFA4\uD83C\uDFA5\uD83C\uDFA6\uD83C\uDFA7\uD83C\uDFA8\uD83C\uDFA9\uD83C\uDFAB\uD83C\uDFAC\uD83C\uDFAF\uD83C\uDFB0\uD83C\uDFB1\uD83C\uDFB5\uD83C\uDFB6\uD83C\uDFB7\uD83C\uDFB8\uD83C\uDFBA\uD83C\uDFBE\uD83C\uDFBF\uD83C\uDFC0\uD83C\uDFC1\uD83C\uDFC3\uD83C\uDFC4\uD83C\uDFC6\uD83C\uDFC8\uD83C\uDFCA\uD83C\uDFE0\uD83C\uDFE2\uD83C\uDFE3\uD83C\uDFE5\uD83C\uDFE6\uD83C\uDFE7\uD83C\uDFE8\uD83C\uDFE9\uD83C\uDFEA\uD83C\uDFEB\uD83C\uDFEC\uD83C\uDFED\uD83C\uDFEF\uD83C\uDFF0\uD83D\uDC0D\uD83D\uDC0E\uD83D\uDC11\uD83D\uDC12\uD83D\uDC14\uD83D\uDC17\uD83D\uDC18\uD83D\uDC19\uD83D\uDC1A\uD83D\uDC1B\uD83D\uDC1F\uD83D\uDC20\uD83D\uDC24\uD83D\uDC26\uD83D\uDC27\uD83D\uDC28\uD83D\uDC2B\uD83D\uDC2C\uD83D\uDC2D\uD83D\uDC2E\uD83D\uDC2F\uD83D\uDC30\uD83D\uDC31\uD83D\uDC33\uD83D\uDC34\uD83D\uDC35\uD83D\uDC36\uD83D\uDC37\uD83D\uDC38\uD83D\uDC39\uD83D\uDC3A\uD83D\uDC3B\uD83D\uDC40\uD83D\uDC42\uD83D\uDC43\uD83D\uDC44\uD83D\uDC46\uD83D\uDC47\uD83D\uDC48\uD83D\uDC49\uD83D\uDC4A\uD83D\uDC4B\uD83D\uDC4C\uD83D\uDC4D\uD83D\uDC4E\uD83D\uDC4F\uD83D\uDC50\uD83D\uDC51\uD83D\uDC52\uD83D\uDC54\uD83D\uDC55\uD83D\uDC57\uD83D\uDC58\uD83D\uDC59\uD83D\uDC5C\uD83D\uDC5F\uD83D\uDC60\uD83D\uDC61\uD83D\uDC62\uD83D\uDC63\uD83D\uDC66\uD83D\uDC67\uD83D\uDC68\uD83D\uDC69\uD83D\uDC6B\uD83D\uDC6E\uD83D\uDC6F\uD83D\uDC71\uD83D\uDC72\uD83D\uDC73\uD83D\uDC74\uD83D\uDC75\uD83D\uDC76\uD83D\uDC77\uD83D\uDC78\uD83D\uDC7B\uD83D\uDC7C\uD83D\uDC7D\uD83D\uDC7E\uD83D\uDC7F\uD83D\uDC80\uD83D\uDC81\uD83D\uDC82\uD83D\uDC83\uD83D\uDC84\uD83D\uDC85\uD83D\uDC86\uD83D\uDC87\uD83D\uDC88\uD83D\uDC89\uD83D\uDC8A\uD83D\uDC8B\uD83D\uDC8D\uD83D\uDC8E\uD83D\uDC8F\uD83D\uDC90\uD83D\uDC91\uD83D\uDC92\uD83D\uDC93\uD83D\uDC94\uD83D\uDC97\uD83D\uDC98\uD83D\uDC99\uD83D\uDC9A\uD83D\uDC9B\uD83D\uDC9C\uD83D\uDC9D\uD83D\uDC9F\uD83D\uDCA1\uD83D\uDCA2\uD83D\uDCA3\uD83D\uDCA4\uD83D\uDCA6\uD83D\uDCA8\uD83D\uDCA9\uD83D\uDCAA\uD83D\uDCB0\uD83D\uDCB1\uD83D\uDCB1\uD83D\uDCB9\uD83D\uDCB9\uD83D\uDCBA\uD83D\uDCBB\uD83D\uDCBC\uD83D\uDCBD\uD83D\uDCBF\uD83D\uDCC0\uD83D\uDCD6\uD83D\uDCDD\uD83D\uDCE0\uD83D\uDCE1\uD83D\uDCE2\uD83D\uDCE3\uD83D\uDCE9\uD83D\uDCEB\uD83D\uDCEE\uD83D\uDCF1\uD83D\uDCF2\uD83D\uDCF3\uD83D\uDCF4\uD83D\uDCF6\uD83D\uDCF7\uD83D\uDCFA\uD83D\uDCFB\uD83D\uDCFC\uD83D\uDD0A\uD83D\uDD0D\uD83D\uDD11\uD83D\uDD12\uD83D\uDD13\uD83D\uDD14\uD83D\uDD1D\uD83D\uDD1E\uD83D\uDD25\uD83D\uDD28\uD83D\uDD2B\uD83D\uDD2F\uD83D\uDD30\uD83D\uDD31\uD83D\uDD32\uD83D\uDD33\uD83D\uDD34\uD83D\uDD50\uD83D\uDD51\uD83D\uDD52\uD83D\uDD53\uD83D\uDD54\uD83D\uDD55\uD83D\uDD56\uD83D\uDD57\uD83D\uDD58\uD83D\uDD59\uD83D\uDD5A\uD83D\uDD5B\uD83D\uDDFB\uD83D\uDDFC\uD83D\uDDFD\uD83D\uDE01\uD83D\uDE02\uD83D\uDE03\uD83D\uDE04\uD83D\uDE09\uD83D\uDE0A\uD83D\uDE0C\uD83D\uDE0D\uD83D\uDE0F\uD83D\uDE12\uD83D\uDE13\uD83D\uDE14\uD83D\uDE16\uD83D\uDE18\uD83D\uDE1A\uD83D\uDE1C\uD83D\uDE1D\uD83D\uDE1E\uD83D\uDE20\uD83D\uDE21\uD83D\uDE22\uD83D\uDE23\uD83D\uDE25\uD83D\uDE28\uD83D\uDE2A\uD83D\uDE2D\uD83D\uDE30\uD83D\uDE31\uD83D\uDE32\uD83D\uDE33\uD83D\uDE37\uD83D\uDE45\uD83D\uDE46\uD83D\uDE47\uD83D\uDE4C\uD83D\uDE4F\uD83D\uDE80\uD83D\uDE83\uD83D\uDE84\uD83D\uDE85\uD83D\uDE87\uD83D\uDE89\uD83D\uDE8C\uD83D\uDE8F\uD83D\uDE91\uD83D\uDE92\uD83D\uDE93\uD83D\uDE95\uD83D\uDE97\uD83D\uDE99\uD83D\uDE9A\uD83D\uDEA2\uD83D\uDEA4\uD83D\uDEA5\uD83D\uDEA7\uD83D\uDEAC\uD83D\uDEAD\uD83D\uDEB2\uD83D\uDEB6\uD83D\uDEB9\uD83D\uDEBA\uD83D\uDEBB\uD83D\uDEBC\uD83D\uDEBD\uD83D\uDEBE\uD83D\uDEC0\u263A\u2728\u2755\u2754\u270A\u270C\u270B\u261D\u2600\u2614\u2601\u26C4\u26A1\u2615\u303D\u2666\u2663\u2660\u26F3\u26BE\u26BD\u27BF\u260E\u2702\u26EA\u26FA\u26F5\u26F2\u2668\u26A0\u26FD\u20E3\u20E3\u20E3\u20E3\u20E3\u20E3\u20E3\u2B05\u2B07\u2B06\u20E3\u20E3\u20E3\u20E3\u27A1\u2197\u2196\u2198\u2199\u25C0\u25B6\u23EA\u23E9\u267F\u2733\u3297\u3299\u2734\u2648\u2649\u264A\u264B\u264C\u264D\u264E\u26CE\u2653\u2652\u2651\u2650\u264F\u274C\u2B55]");
    private static final Pattern d = Pattern.compile("\\s+");

    public static String a(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return null;
        } else
        {
            String s = charsequence.toString().trim();
            return d.matcher(s).replaceAll(" ");
        }
    }

    public static String a(String s, String s1)
    {
        if (s == null)
        {
            return s1;
        } else
        {
            return s;
        }
    }

    public static transient String a(String s, Object aobj[])
    {
        return String.format(null, s, aobj);
    }

    public static Matcher a(String s)
    {
        return b.matcher(s);
    }

    public static boolean a(String s, String s1, int i)
    {
        int j = s.length();
        int k = s1.length();
        if (i + k > j)
        {
            return false;
        }
        int l = 0;
        int i1 = 0;
        for (; l < k; l++)
        {
            if (Character.isWhitespace(s1.charAt(l)))
            {
                continue;
            }
            for (; i1 + (i + l) < j && Character.isWhitespace(s.charAt(i1 + (i + l))); i1++) { }
            if (i1 + (i + l) >= j)
            {
                return false;
            }
            if (Character.toLowerCase(s.charAt(i1 + (i + l))) != Character.toLowerCase(s1.charAt(l)))
            {
                return false;
            }
        }

        return true;
    }

    public static Matcher b(String s)
    {
        return a.matcher(s);
    }

    public static boolean b(CharSequence charsequence)
    {
        String s;
        if (!TextUtils.isEmpty(charsequence))
        {
            if (TextUtils.indexOf(s = charsequence.toString().trim(), "@") > 0 && TextUtils.lastIndexOf(s, '.') > TextUtils.indexOf(s, "@") && TextUtils.lastIndexOf(s, '.') < -1 + s.length() && TextUtils.indexOf(s, "@") == TextUtils.lastIndexOf(s, '@'))
            {
                return true;
            }
        }
        return false;
    }

    public static boolean b(String s, String s1)
    {
        int i = 0;
        do
        {
label0:
            {
                int j = s.length() - s1.length();
                boolean flag = false;
                if (i <= j)
                {
                    if (i != 0 && !Character.isWhitespace(s.charAt(i - 1)) || !a(s, s1, i))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public static boolean c(String s)
    {
        return TextUtils.isEmpty(s);
    }

    public static String d(String s)
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            s = c.matcher(s).replaceAll("");
        }
        return s;
    }

    public static String e(String s)
    {
        return s.replaceAll("\r\n", "");
    }

}
