// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


public class RealtimeProtocol
{

    public static final String ACTION = "action";
    public static final String ADD_COMMENT_TEMPLATE = "/direct_share/:media_id/comments";
    public static final String ADD_DS_TEMPLATE = "/direct_share/inbox";
    public static final String COMMENTED = "has_commented";
    public static final String COMMENTS = "comments";
    public static final String COMMENT_ID = "comment_id";
    public static final String DIRECT_SHARE = "direct_share";
    public static final String INBOX = "inbox";
    public static final String LAST_COMMENT_AT = "last_comment_at";
    public static final String LIKED = "has_liked";
    public static final String MEDIA_ID = "media_id";
    public static final String NEW_SHARES_TEMPLATE = "/direct_share/inbox/new_shares";
    public static final String RECIPIENT = "recipients";
    public static final String REMOVE_COMMENT_TEMPLATE = "/direct_share/:media_id/comments/:comment_id";
    public static final String REMOVE_DS_TEMPLATE = "/direct_share/:media_id";
    public static final String REPLACE_LAST_COMMENT_AT_TEMPLATE = "/direct_share/:media_id/last_comment_at";
    public static final String REPLACE_RECIPIENT_TEMPLATE = "/direct_share/:media_id/recipients/:user_id/:action";
    public static final String SEEN = "has_seen";
    public static final String USER_ID = "user_id";

    public RealtimeProtocol()
    {
    }
}
