// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.message.BasicHeaderElement;
import ch.boye.httpclientandroidlib.message.BasicNameValuePair;
import ch.boye.httpclientandroidlib.message.ParserCursor;
import ch.boye.httpclientandroidlib.protocol.HTTP;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.ArrayList;
import java.util.List;

public class NetscapeDraftHeaderParser
{

    public static final NetscapeDraftHeaderParser DEFAULT = new NetscapeDraftHeaderParser();

    public NetscapeDraftHeaderParser()
    {
    }

    private NameValuePair parseNameValuePair(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        boolean flag;
        int i;
        int k;
        String s1;
        boolean flag2;
        int l;
        flag = true;
        i = parsercursor.getPos();
        int j = parsercursor.getPos();
        k = parsercursor.getUpperBound();
label0:
        do
        {
label1:
            {
                boolean flag1 = false;
                if (i < k)
                {
                    char c = chararraybuffer.charAt(i);
                    flag1 = false;
                    if (c != '=')
                    {
                        if (c != ';')
                        {
                            break label1;
                        }
                        flag1 = flag;
                    }
                }
                if (i == k)
                {
                    s1 = chararraybuffer.substringTrimmed(j, k);
                    flag2 = flag;
                } else
                {
                    String s = chararraybuffer.substringTrimmed(j, i);
                    i++;
                    s1 = s;
                    flag2 = flag1;
                }
                if (flag2)
                {
                    parsercursor.updatePos(i);
                    return new BasicNameValuePair(s1, null);
                }
                break label0;
            }
            i++;
        } while (true);
        l = i;
_L4:
        if (l < k)
        {
            if (chararraybuffer.charAt(l) == ';')
            {
                break MISSING_BLOCK_LABEL_152;
            } else
            {
                l++;
                continue; /* Loop/switch isn't completed */
            }
        }
_L2:
        flag = flag2;
        if (false)
        {
            break; /* Loop/switch isn't completed */
        }
        int i1;
        for (; i < l && HTTP.isWhitespace(chararraybuffer.charAt(i)); i++) { }
        i1 = l;
        while (true) 
        {
            for (; i1 > i && HTTP.isWhitespace(chararraybuffer.charAt(i1 - 1)); i1--) { }
            String s2 = chararraybuffer.substring(i, i1);
            int j1;
            if (flag)
            {
                j1 = l + 1;
            } else
            {
                j1 = l;
            }
            parsercursor.updatePos(j1);
            return new BasicNameValuePair(s1, s2);
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    public HeaderElement parseHeader(CharArrayBuffer chararraybuffer, ParserCursor parsercursor)
    {
        if (chararraybuffer == null)
        {
            throw new IllegalArgumentException("Char array buffer may not be null");
        }
        if (parsercursor == null)
        {
            throw new IllegalArgumentException("Parser cursor may not be null");
        }
        NameValuePair namevaluepair = parseNameValuePair(chararraybuffer, parsercursor);
        ArrayList arraylist = new ArrayList();
        for (; !parsercursor.atEnd(); arraylist.add(parseNameValuePair(chararraybuffer, parsercursor))) { }
        return new BasicHeaderElement(namevaluepair.getName(), namevaluepair.getValue(), (NameValuePair[])arraylist.toArray(new NameValuePair[arraylist.size()]));
    }

}
