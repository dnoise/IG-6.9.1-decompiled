// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.message;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderIterator;
import ch.boye.httpclientandroidlib.ParseException;
import ch.boye.httpclientandroidlib.TokenIterator;
import java.util.NoSuchElementException;

public class BasicTokenIterator
    implements TokenIterator
{

    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headeriterator)
    {
        if (headeriterator == null)
        {
            throw new IllegalArgumentException("Header iterator must not be null.");
        } else
        {
            headerIt = headeriterator;
            searchPos = findNext(-1);
            return;
        }
    }

    protected String createToken(String s, int i, int j)
    {
        return s.substring(i, j);
    }

    protected int findNext(int i)
    {
        int j;
        int k;
        if (i < 0)
        {
            if (!headerIt.hasNext())
            {
                return -1;
            }
            currentHeader = headerIt.nextHeader().getValue();
            j = 0;
        } else
        {
            j = findTokenSeparator(i);
        }
        k = findTokenStart(j);
        if (k < 0)
        {
            currentToken = null;
            return -1;
        } else
        {
            int l = findTokenEnd(k);
            currentToken = createToken(currentHeader, k, l);
            return l;
        }
    }

    protected int findTokenEnd(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Token start position must not be negative: ")).append(i).toString());
        }
        int j = currentHeader.length();
        int k;
        for (k = i + 1; k < j && isTokenChar(currentHeader.charAt(k)); k++) { }
        return k;
    }

    protected int findTokenSeparator(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Search position must not be negative: ")).append(i).toString());
        }
        boolean flag = false;
        for (int j = currentHeader.length(); !flag && i < j;)
        {
            char c = currentHeader.charAt(i);
            if (isTokenSeparator(c))
            {
                flag = true;
            } else
            if (isWhitespace(c))
            {
                i++;
            } else
            if (isTokenChar(c))
            {
                throw new ParseException((new StringBuilder("Tokens without separator (pos ")).append(i).append("): ").append(currentHeader).toString());
            } else
            {
                throw new ParseException((new StringBuilder("Invalid character after token (pos ")).append(i).append("): ").append(currentHeader).toString());
            }
        }

        return i;
    }

    protected int findTokenStart(int i)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("Search position must not be negative: ")).append(i).toString());
        }
        boolean flag = false;
        do
        {
            if (flag || currentHeader == null)
            {
                break;
            }
            for (int j = currentHeader.length(); !flag && i < j;)
            {
                char c = currentHeader.charAt(i);
                if (isTokenSeparator(c) || isWhitespace(c))
                {
                    i++;
                } else
                if (isTokenChar(currentHeader.charAt(i)))
                {
                    flag = true;
                } else
                {
                    throw new ParseException((new StringBuilder("Invalid character before token (pos ")).append(i).append("): ").append(currentHeader).toString());
                }
            }

            if (!flag)
            {
                if (headerIt.hasNext())
                {
                    currentHeader = headerIt.nextHeader().getValue();
                    i = 0;
                } else
                {
                    currentHeader = null;
                }
            }
        } while (true);
        if (flag)
        {
            return i;
        } else
        {
            return -1;
        }
    }

    public boolean hasNext()
    {
        return currentToken != null;
    }

    protected boolean isHttpSeparator(char c)
    {
        return " ,;=()<>@:\\\"/[]?{}\t".indexOf(c) >= 0;
    }

    protected boolean isTokenChar(char c)
    {
        if (!Character.isLetterOrDigit(c))
        {
            if (Character.isISOControl(c))
            {
                return false;
            }
            if (isHttpSeparator(c))
            {
                return false;
            }
        }
        return true;
    }

    protected boolean isTokenSeparator(char c)
    {
        return c == ',';
    }

    protected boolean isWhitespace(char c)
    {
        return c == '\t' || Character.isSpaceChar(c);
    }

    public final Object next()
    {
        return nextToken();
    }

    public String nextToken()
    {
        if (currentToken == null)
        {
            throw new NoSuchElementException("Iteration already finished.");
        } else
        {
            String s = currentToken;
            searchPos = findNext(searchPos);
            return s;
        }
    }

    public final void remove()
    {
        throw new UnsupportedOperationException("Removing tokens is not supported.");
    }
}
