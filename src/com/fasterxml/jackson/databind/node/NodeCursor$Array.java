// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.q;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.JsonNode;
import java.util.Iterator;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            NodeCursor, ContainerNode

public final class _contents extends NodeCursor
{

    protected Iterator _contents;
    protected JsonNode _currentNode;

    public final boolean currentHasChildren()
    {
        return ((ContainerNode)currentNode()).size() > 0;
    }

    public final JsonNode currentNode()
    {
        return _currentNode;
    }

    public final r endToken()
    {
        return r.e;
    }

    public final volatile q getParent()
    {
        return super.getParent();
    }

    public final r nextToken()
    {
        if (!_contents.hasNext())
        {
            _currentNode = null;
            return null;
        } else
        {
            _currentNode = (JsonNode)_contents.next();
            return _currentNode.asToken();
        }
    }

    public final r nextValue()
    {
        return nextToken();
    }

    public (JsonNode jsonnode, NodeCursor nodecursor)
    {
        super(1, nodecursor);
        _contents = jsonnode.elements();
    }
}
