// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package oauth.signpost.http;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import oauth.signpost.OAuth;

public class HttpParameters
    implements Serializable, Map
{

    private TreeMap wrappedMap;

    public HttpParameters()
    {
        wrappedMap = new TreeMap();
    }

    public void clear()
    {
        wrappedMap.clear();
    }

    public boolean containsKey(Object obj)
    {
        return wrappedMap.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        for (Iterator iterator = wrappedMap.values().iterator(); iterator.hasNext();)
        {
            if (((SortedSet)iterator.next()).contains(obj))
            {
                return true;
            }
        }

        return false;
    }

    public Set entrySet()
    {
        return wrappedMap.entrySet();
    }

    public volatile Object get(Object obj)
    {
        return get(obj);
    }

    public SortedSet get(Object obj)
    {
        return (SortedSet)wrappedMap.get(obj);
    }

    public String getAsHeaderElement(String s)
    {
        String s1 = getFirst(s);
        if (s1 == null)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(s).append("=\"").append(s1).append("\"").toString();
        }
    }

    public String getAsQueryString(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = OAuth.percentEncode((String)obj);
        Set set = (Set)wrappedMap.get(s);
        if (set == null)
        {
            return (new StringBuilder()).append(s).append("=").toString();
        }
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            stringbuilder.append((new StringBuilder()).append(s).append("=").append((String)iterator.next()).toString());
            if (iterator.hasNext())
            {
                stringbuilder.append("&");
            }
        } while (true);
        return stringbuilder.toString();
    }

    public String getFirst(Object obj)
    {
        return getFirst(obj, false);
    }

    public String getFirst(Object obj, boolean flag)
    {
        SortedSet sortedset = (SortedSet)wrappedMap.get(obj);
        String s;
        if (sortedset == null || sortedset.isEmpty())
        {
            s = null;
        } else
        {
            s = (String)sortedset.first();
            if (flag)
            {
                return OAuth.percentDecode(s);
            }
        }
        return s;
    }

    public boolean isEmpty()
    {
        return wrappedMap.isEmpty();
    }

    public Set keySet()
    {
        return wrappedMap.keySet();
    }

    public volatile Object put(Object obj, Object obj1)
    {
        return put((String)obj, (SortedSet)obj1);
    }

    public String put(String s, String s1)
    {
        return put(s, s1, false);
    }

    public String put(String s, String s1, boolean flag)
    {
        Object obj = (SortedSet)wrappedMap.get(s);
        if (obj == null)
        {
            obj = new TreeSet();
            TreeMap treemap = wrappedMap;
            if (flag)
            {
                s = OAuth.percentEncode(s);
            }
            treemap.put(s, obj);
        }
        if (s1 != null)
        {
            if (flag)
            {
                s1 = OAuth.percentEncode(s1);
            }
            ((SortedSet) (obj)).add(s1);
        }
        return s1;
    }

    public SortedSet put(String s, SortedSet sortedset)
    {
        return (SortedSet)wrappedMap.put(s, sortedset);
    }

    public SortedSet put(String s, SortedSet sortedset, boolean flag)
    {
        if (flag)
        {
            remove(s);
            for (Iterator iterator = sortedset.iterator(); iterator.hasNext(); put(s, (String)iterator.next(), true)) { }
            return get(s);
        } else
        {
            return (SortedSet)wrappedMap.put(s, sortedset);
        }
    }

    public void putAll(Map map)
    {
        wrappedMap.putAll(map);
    }

    public void putAll(Map map, boolean flag)
    {
        if (flag)
        {
            String s;
            for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); put(s, (SortedSet)map.get(s), true))
            {
                s = (String)iterator.next();
            }

        } else
        {
            wrappedMap.putAll(map);
        }
    }

    public void putAll(String as[], boolean flag)
    {
        for (int i = 0; i < -1 + as.length; i += 2)
        {
            put(as[i], as[i + 1], flag);
        }

    }

    public void putMap(Map map)
    {
        String s;
        Object obj;
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); ((SortedSet) (obj)).addAll((Collection)map.get(s)))
        {
            s = (String)iterator.next();
            obj = get(s);
            if (obj == null)
            {
                obj = new TreeSet();
                put(s, ((SortedSet) (obj)));
            }
        }

    }

    public String putNull(String s, String s1)
    {
        return put(s, s1);
    }

    public volatile Object remove(Object obj)
    {
        return remove(obj);
    }

    public SortedSet remove(Object obj)
    {
        return (SortedSet)wrappedMap.remove(obj);
    }

    public int size()
    {
        Iterator iterator = wrappedMap.keySet().iterator();
        int i;
        String s;
        for (i = 0; iterator.hasNext(); i += ((SortedSet)wrappedMap.get(s)).size())
        {
            s = (String)iterator.next();
        }

        return i;
    }

    public Collection values()
    {
        return wrappedMap.values();
    }
}
